//
// Created by vinny on 2018-04-12.
//
#include <iostream>
#include "/usr/lib/jvm/java-8-oracle/include/jni.h"
#include "sample_Controller.h"
#include "../../../../../../../../usr/lib/jvm/java-8-oracle/include/linux/jni_md.h"
#include "cluon/OD4Session.hpp"
#include "cluon/Envelope.hpp"
#include "RemoteControlMessages.hpp"

bool key_pressed = false;

JNIEXPORT jboolean JNICALL Java_sample_Controller_press
        (JNIEnv * env, jobject obj, jchar ch){

    key_pressed = true;
    cluon::OD4Session od4(112, [](cluon::data::Envelope /*&&envelope*/) noexcept {});

    SteeringInstruction ins;

    switch(ch){
        case 'w':
            ins.pedalPosition(0.5);
            ins.steeringAngle(0);
            break;
        case 'a':
            ins.pedalPosition(0.25);
            ins.steeringAngle(45);
            break;
        case 's':
            ins.pedalPosition(0);
            ins.steeringAngle(0);
            break;
        case 'd':
            ins.pedalPosition(0.25);
            ins.steeringAngle(-45);
            break;
        default:
            ins.pedalPosition(0);
            ins.steeringAngle(0);
    }


    std::cout << "sending " << ins.pedalPosition() << " / " << ins.steeringAngle() << " ..." << std::endl;
    od4.send(ins);
    key_pressed = false;

}


int main(){
    while (1){
        while(key_pressed){
            std::cout << "Key Pressed" << std::endl;
        }
    }
}
