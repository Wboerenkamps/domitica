#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <iostream>
#include <QtSerialPort/QSerialPort>
#include <thread>
#include <QSerialPort>
#include <QTime>
#include <QDialog>
#include <QSerialPortInfo>
QSerialPort serial;
// https://www.youtube.com/watch?v=UD78xyKbrfk&ab_channel=hendri tutorial
MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    serialSetup();
    qDebug() << "test";

    // gathers all available com ports and puts them in combo box
    const auto comPorts = QSerialPortInfo::availablePorts();
    for (const QSerialPortInfo &info : comPorts)
        ui->comboBox->addItem(info.portName());
}

MainWindow::~MainWindow()
{
    delete ui;
    serial.close();
    qDebug() << "port closed";
}


void MainWindow::on_pushButton_clicked()
{
    serialRead();
}


void MainWindow::serialRead() {
    while(serial.waitForReadyRead(100)) {
        QByteArray requestData = serial.readAll();
        const QString request = QString::fromUtf8(requestData);
        ui->textBrowser->setText(request);
    }
}

void MainWindow::serialWrite() {

}

void MainWindow::serialSetup() {
    serial.setPortName("com3");
    serial.setBaudRate(QSerialPort::Baud115200);
    serial.setDataBits(QSerialPort::Data8);
    serial.setParity(QSerialPort::NoParity);
    serial.setStopBits(QSerialPort::OneStop);
    serial.setFlowControl(QSerialPort::NoFlowControl);
    serial.open(QIODevice::ReadWrite);
}


void MainWindow::on_pushButton_2_clicked()
{
    QString test = ui->textEdit->toPlainText();
    serial.write(test.toUtf8());
}

