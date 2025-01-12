#ifndef _DEF_H_
#define _DEF_H_ 

#include <iostream>
#include <cstdio> 
#include <sys/socket.h> 
#include <netinet/in.h> 
#include <sys/un.h> 
#include <arpa/inet.h> 
#include <netdb.h> 
#include <string> 
#include <pthread.h>
#include <sys/msg.h>
#include <unistd.h>
#include <vector> 
#include <mutex>
#include <thread>
#include <condition_variable>
#include <chrono>
#include <cstring>
#include <ctime>

#define PORT 6039
#define MAXLEN 256 
#define QUEUE_LENGTH 25 

enum request_type{CONNECT = 1, REMOVE_CONNECT, GET_TIME, GET_NAME, GET_LIST, SEND_MSG, RECEIVE_MSG}; 

char filepath[] = "def.h"; 

struct packet{ 
    long type; 
    char data[MAXLEN];
}; 

#endif 