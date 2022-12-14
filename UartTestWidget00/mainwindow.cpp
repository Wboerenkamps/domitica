#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <iostream>
#include <QtSerialPort/QSerialPort>
QSerialPort serial;
// https://www.youtube.com/watch?v=UD78xyKbrfk&ab_channel=hendri tutorial
MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    serial.setPortName("com3");
    serial.setBaudRate(QSerialPort::Baud9600);
    serial.setDataBits(QSerialPort::Data8);
    serial.setParity(QSerialPort::NoParity);
    serial.setStopBits(QSerialPort::OneStop);
    serial.setFlowControl(QSerialPort::NoFlowControl);
    serial.open(QIODevice::ReadWrite);
    serial.write("ok"); // voledig werkent om data te sturen
}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::on_pushButton_clicked()
{
   // serial.setPortName("com3");
   // serial.setBaudRate(QSerialPort::Baud9600);
   // serial.setDataBits(QSerialPort::Data8);
   // serial.setParity(QSerialPort::NoParity);
   // serial.setStopBits(QSerialPort::OneStop);
   // serial.setFlowControl(QSerialPort::NoFlowControl);
   // serial.open(QIODevice::ReadWrite);
    serial.write("\n test");


    std::cout << "done" << std::endl;

}


