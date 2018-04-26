#include "backend.h"
#include "remotecontrol.h"
#include <iostream>
#include "cluon/OD4Session.hpp"
#include "cluon/Envelope.hpp"
#include <chrono>
#include <thread>

BackEnd::BackEnd(QObject *parent) : QObject(parent)
{

}

void BackEnd::moveW(){
    std::cout << "moved! - W" << std::endl;

}
void BackEnd::moveA(){
    press_a();
    std::cout << "moved! - A" << std::endl;
}
void BackEnd::moveS(){
    std::cout << "moved! - S" << std::endl;
}
void BackEnd::moveD(){
    std::cout << "moved! - D" << std::endl;
}
void BackEnd::startV2V(){
    std::cout << "started v2v" << std::endl;
}
void BackEnd::stopV2V(){
    std::cout << "stopped v2v" << std::endl;
}
bool BackEnd::connection(int n){
    //Connection with group number n, if connection is succesful, return true, otherwise return false
    return true;
}
bool BackEnd::group1(){
    if (connection(1)){
        std::cout << "group1 connected" << std::endl;
        return true;
    }
    return false;
}
bool BackEnd::group2(){
    if (connection(2)){
        std::cout << "group2 connected" << std::endl;
        return true;
    }
    return false;
}
bool BackEnd::group3(){
    if (connection(3)){
        std::cout << "group3 connected" << std::endl;
        return true;
    }    return false;
}
bool BackEnd::group4(){
    if (connection(4)){
        std::cout << "group4 connected" << std::endl;
        return true;
    }return false;
}
bool BackEnd::group5(){
    if (connection(5)){
        std::cout << "group5 connected" << std::endl;
        return true;
    }return false;
}
bool BackEnd::group6(){
    if (connection(6)){
        std::cout << "group6 connected" << std::endl;
        return true;
    }return false;
}
bool BackEnd::group7(){
    if (connection(7)){
        std::cout << "group7 connected" << std::endl;
        return true;
    }return false;
}
bool BackEnd::group8(){
    if (connection(8)){
        std::cout << "group8 connected" << std::endl;
        return true;
    }return false;
}
bool BackEnd::group9(){
    if (connection(9)){
        std::cout << "group9 connected" << std::endl;
        return true;
    }return false;
}
bool BackEnd::group10(){
    if (connection(10)){
        std::cout << "group10 connected" << std::endl;
        return true;
    }return false;
}
bool BackEnd::group11(){
    if (connection(11)){
        std::cout << "group11 connected" << std::endl;
        return true;
    }return false;
}
bool BackEnd::group12(){
    if (connection(12)){
        std::cout << "group12 connected" << std::endl;
        return true;
    }return false;
}