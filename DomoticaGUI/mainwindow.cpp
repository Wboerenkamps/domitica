#include <iostream>
#include <fstream>
#include <QtDebug>
#include <QFile>
#include <QTextStream>
#include <QStringListModel>
#include <QListWidget>
#include <vector>
#include <QSet>
#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "rooms.h"
#include "room_create.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    fillListViewGroup();
//    serialcommand = new SerialCommand;
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::fillListViewGroup() {
    QStringList hexCode;
    QStringList hexCodeTemp;
    QStringList groupName;

    model = new QStringListModel(this);
    QFile file("room.txt");
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
        return;

    while (!file.atEnd()) {
        QString line = file.readLine().trimmed();
        hexCodeTemp.append(line.section(",", 0, 0));
        groupName.append(line.section(',', 0, 0));
    }
    model->setStringList(groupName);
    ui->roomLV->setModel(model);
    qDebug() << "done";
    file.close();

}

void MainWindow::updateListViewGroup() {

}

void MainWindow::on_pushButton_2_clicked()
{
    Rooms rooms;
    rooms.roomWriteFile();
}


void MainWindow::on_pushButton_3_clicked()
{
    Rooms rooms;
    rooms.roomReadFile();
}



void MainWindow::on_CreateGroupBtn_clicked()
{
    Room_create room_create;
    room_create.openWidget();
}


void MainWindow::on_roomLV_clicked(const QModelIndex &index)
{
    fillListViewGroup();
}

