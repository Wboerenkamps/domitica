#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <iostream>
#include <QSerialPort>
#include <QSerialPortInfo>
QSerialPort serial;

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    serialSetup();

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

void MainWindow::serialSetup() {
    serial.setPortName(ui->comboBox->currentText());
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

// button for serial write
void MainWindow::on_pushButton_2_clicked()
{
    serialWrite();
}

// button for serial read
void MainWindow::on_pushButton_clicked()
{
    serialRead();
}

void MainWindow::serialWrite() {
    QString serialData = ui->textEdit->toPlainText();
    serial.write(serialData.toUtf8());
}

void MainWindow::serialRead() {
    while(serial.waitForReadyRead(100)) {
        QByteArray requestData = serial.readAll();
        const QString request = QString::fromUtf8(requestData);
        ui->textBrowser->setText(request);
    }
}



void MainWindow::on_comboBox_currentIndexChanged(int index)
{
    serial.close();
    serialSetup();
}

