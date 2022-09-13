#include "byte_stream.hh"

// Dummy implementation of a flow-controlled in-memory byte stream.

// For Lab 0, please replace with a real implementation that passes the
// automated checks run by `make check_lab0`.

// You will need to add private members to the class declaration in `byte_stream.hh`

template <typename... Targs>
void DUMMY_CODE(Targs &&... /* unused */) {}

using namespace std;

ByteStream::ByteStream(const size_t capacity):_input_end(false),_bytes_written(0),_bytes_read(0),_buf(),_capacity(capacity),_error(false) {}

size_t ByteStream::write(const string &data) {
    if(_input_end) return 0;
    size_t cnt = min(remaining_capacity(),data.size());
    for(size_t i = 0; i < cnt ; ++i){
        _buf.push_back(data[i]);
    }
    _bytes_written += cnt;
    return cnt;
}

//! \param[in] len bytes will be copied from the output side of the buffer
string ByteStream::peek_output(const size_t len) const {
    size_t cnt = min(len,_buf.size());
    return string(_buf.begin(),_buf.begin()+cnt);
}

//! \param[in] len bytes will be removed from the output side of the buffer
void ByteStream::pop_output(const size_t len) { 
    size_t cnt = min(len,_buf.size());
    _buf.erase(_buf.begin(),_buf.begin()+cnt);
    _bytes_read += cnt;
 }

//! Read (i.e., copy and then pop) the next "len" bytes of the stream
//! \param[in] len bytes will be popped and returned
//! \returns a string
std::string ByteStream::read(const size_t len) {
    string str = peek_output(len);
    pop_output(str.size());
    return str;
}

void ByteStream::end_input() {_input_end = true;}

bool ByteStream::input_ended() const { return _input_end; }

size_t ByteStream::buffer_size() const { return _buf.size(); }

bool ByteStream::buffer_empty() const { return _buf.empty(); }

bool ByteStream::eof() const { return _input_end && buffer_empty(); }

size_t ByteStream::bytes_written() const { return _bytes_written; }

size_t ByteStream::bytes_read() const { return _bytes_read; }

size_t ByteStream::remaining_capacity() const { return _capacity - _buf.size(); }
