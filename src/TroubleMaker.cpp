#include "TroubleMaker.h"

TroubleMaker::TroubleMaker()
{

}

TroubleMaker::~TroubleMaker()
{
    stopRequired = true;
    stop();
}

void TroubleMaker::getCrash()
{
    std::this_thread::sleep_for(std::chrono::milliseconds(10));
    stopRequired = false;
    start();
}

void TroubleMaker::getDelay()
{
    while (!stopRequired) {
        std::this_thread::sleep_for(std::chrono::seconds(5));
        stopRequired = true;
    }
}

void TroubleMaker::stop()
{
    stopRequired = true;
}

void TroubleMaker::run()
{
    while (!stopRequired) {
        std::this_thread::sleep_for(std::chrono::nanoseconds(timeDelay));
    }
}
