#include "stream_reassembler.hh"
#include<iostream>
// Dummy implementation of a stream reassembler.

// For Lab 1, please replace with a real implementation that passes the
// automated checks run by `make check_lab1`.

// You will need to add private members to the class declaration in `stream_reassembler.hh`
template <typename... Targs>
void DUMMY_CODE(Targs &&... /* unused */) {}

using namespace std;

StreamReassembler::StreamReassembler(const size_t capacity) : _output(capacity), _capacity(capacity) {}

//! \details This function accepts a substring (aka a segment) of bytes,
//! possibly out-of-order, from the logical stream, and assembles any newly
//! contiguous substrings and writes them into the output stream in order.
void StreamReassembler::push_substring(const string &data, const size_t index, const bool eof) {

    _first_unread = _first_unassembled - _output.buffer_size();

    if(data.length() == 0){
        if(eof && index >= _first_unassembled && index <= _first_unread + _capacity) _eof = true;
        if(empty() && _eof && _first_unread == index) _output.end_input();
        return;
    }
    //handle data
    if(index >= _first_unread + _capacity) return ; //out of capacity
    
    if(index + data.length() <= _first_unassembled) return ; // old data (may be sended for over time)


    block_node new_block = {data,index};


    //insert and write block node 
    insert_block(new_block,eof);
    //end 


    if(_eof && empty())  _output.end_input();
    
}
void StreamReassembler::insert_block(block_node node,bool eof){


    //trim the block node
    if(node.index <= _first_unassembled){
        node.data = node.data.substr(_first_unassembled - node.index);
        node.index = _first_unassembled;
    }
    if(node.index + node.data.length() > _first_unread + _capacity){
        node.data = node.data.substr(0,_first_unread + _capacity - node.index);
    }else{
        if(eof) _eof = true;
    }
    //insert the block node
    if(empty()){
        block_set.insert(node);
        _unassembled_bytes += node.data.length();
    }

    auto it = block_set.lower_bound(node);

    if(it != block_set.begin()){
        it--;
        if(it->index + it->data.length() >= node.index){
            if(node.index + node.data.length() > it->index + it->data.length()){
                //cout<<"1:"<<node.data.size()<<"---"<<it->index + it->data.length() - node.index<<endl;
                //cout<<1<<":"<<node.index<<"----"<<node.data.length()<<"----"<<it->index<<"----"<<it->data.length()<<endl;
                node.data = it->data + node.data.substr(it->index + it->data.length() - node.index);
            }
            else node.data = it->data;
            node.index = it->index;
            _unassembled_bytes -= it->data.length();
            it = block_set.erase(it);
        }else it++;
    }
    while(it != block_set.end() && node.index + node.data.length() >= it->index){

        if(node.index + node.data.length() >= it->index + it->data.length()){
            _unassembled_bytes -= it->data.length();
            it = block_set.erase(it);
        }else{
            //cout<<"2:"<<it->data.size()<<"---"<<node.index + node.data.length() - it->index<<endl;
            //cout<<2<<":"<<node.index<<"----"<<node.data.length()<<"----"<<it->index<<"----"<<it->data.length()<<endl;
            node.data = node.data + it->data.substr(node.index + node.data.length() - it->index);
            _unassembled_bytes -= it->data.length();
            it = block_set.erase(it);
        }
    }

    //write
    if(node.index == _first_unassembled){
        _output.write(node.data);
        _first_unassembled += node.data.length();
    }else{
        _unassembled_bytes += node.data.length();
        block_set.insert(node);
    }
    return;
}
size_t StreamReassembler::unassembled_bytes() const { return _unassembled_bytes; }

bool StreamReassembler::empty() const { return block_set.empty(); }
