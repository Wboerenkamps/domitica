#ifndef SERIALCOMMAND_H
#define SERIALCOMMAND_H
#include <QString>


class SerialCommand
{
public:
    SerialCommand();
    void serialSetup();
    void serialWrite();
    void serialRead();
    void setBaudRate(int baudRate);
    void setPortName(QString portName);
    int getBaudRate();
    QString getPortName();
private:
    int baudRate;
    QString portName;
};

#endif // SERIALCOMMAND_H
