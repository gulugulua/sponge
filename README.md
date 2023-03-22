lab 0
使用telnet & netcat发送和接受应用层的数据
使用自带套接字写一个webget，了解套接字编程
实现ByteStream作为TCP连接的最底器的容器

FIFO模型
有限容量
支持write,peak,pop,read,remaining_capacity,end_input操作
lab 1
在ByteStream的基础上实现StreamReassembler

负责把收到的包根据序号重组，按序写入ByteStream
抛弃过去的包和超出容量的包
储存容量容许范围内，但失序的包
lab 2 & 3
TCP receiver

基于收到包的连续性的假设，正确转换32位的seq到64位的index
将收到的包传给StreamReassembler
计算出正确的ackno
计算出正确的window_size，以告知发送方实现流量控制(flow-control)
TCP sender

TCP可靠数据传输机制的实现

定时器(单一的重传定时器)
序号和确认(确认是被捎带在数据报文段中的)
TCP连接管理:SYN和FIN
流量控制的另一部分，发送方根据接收方的窗口大小调整流量
lab 4
TCP connection

整合sender和receiver实现TCP过程
TCP状态机：三次握手，正常通信，四次挥手
