#include "serialcommand.h"
#include "mainwindow.h"
#include <iostream>
#include <QSerialPort>
#include <QSerialPortInfo>
#include <QString>
QSerialPort serial;

//MainWindow::MainWindow(QWidget *parent)
//    : QMainWindow(parent)
//    , ui(new Ui::MainWindow)
//{
//    ui->setupUi(this);
//    serialSetup();

//    // gathers all available com ports and puts them in combo box
//    const auto comPorts = QSerialPortInfo::availablePorts();
//    for (const QSerialPortInfo &info : comPorts)
//        ui->comboBox->addItem(info.portName());
//}

void SerialCommand::serialSetup() {
//    serial.setPortName(ui->comboBox->currentText());
    serial.setBaudRate(QSerialPort::Baud115200);
    serial.setDataBits(QSerialPort::Data8);
    serial.setParity(QSerialPort::NoParity);
    serial.setStopBits(QSerialPort::OneStop);
    serial.setFlowControl(QSerialPort::NoFlowControl);
    if(serial.open(QIODevice::ReadWrite) == true) {
        qDebug() << "Connection successfull";
    } else {
        qDebug() << QSerialPort::SerialPortError();
    }
}

void SerialCommand::setBaudRate(int baudRate) {
    this->baudRate = baudRate;
}

void SerialCommand::setPortName(QString portName) {
    this->portName = portName;
}

int SerialCommand::getBaudRate() {
    return baudRate;
}

QString SerialCommand::getPortName() {
    return portName;
}

void SerialCommand::serialWrite() {
//    QString serialData = ui->textEdit->toPlainText();
//    serial.write(serialData.toUtf8());
}

void SerialCommand::serialRead() {
//    while(serial.waitForReadyRead(100)) {
//        QByteArray requestData = serial.readAll();
//        const QString request = QString::fromUtf8(requestData);
//        ui->textBrowser->setText(request);
//    }
}

//void MainWindow::on_comboBox_currentIndexChanged(int index)
//{
//    serial.close();
//    serialSetup();
//}
