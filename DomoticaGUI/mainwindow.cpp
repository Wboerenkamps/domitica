#include <iostream>
#include <fstream>
#include <QtDebug>
#include <QFile>
#include <QTextStream>
#include <string>         // std::string

#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "rooms.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::fillListView() {

}

void MainWindow::on_pushButton_2_clicked()
{
    Rooms rooms;
    rooms.roomWriteFile();
}


void MainWindow::on_pushButton_3_clicked()
{
    QFile file("room.txt");
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
        return;

    while (!file.atEnd()) {
        QString line = file.readLine();
        //line = line.erase(line.find("/n"));
        QString test = "/n ";
        qDebug() << line.trimmed();
        ui->comboBox->addItem(line.trimmed());
    }
}

