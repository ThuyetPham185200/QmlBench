#ifndef TROUBLEMAKER_H
#define TROUBLEMAKER_H
#include <QThread>
#include <thread>
class TroubleMaker : public QThread
{
    Q_OBJECT
public:
    TroubleMaker();
    ~TroubleMaker();
    Q_INVOKABLE void getCrash();
    Q_INVOKABLE void getDelay();
    Q_INVOKABLE void stop();
    Q_INVOKABLE void setTimeDelay(int time) {timeDelay = time;}
    void run() override;

private:
    bool stopRequired = false;
    int timeDelay = 1000;
};

#endif // TROUBLEMAKER_H
