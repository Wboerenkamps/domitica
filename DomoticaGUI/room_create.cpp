#include <iostream>
#include <fstream>
#include <QtDebug>
#include <QFile>
#include <QTextStream>

#include "room_create.h"
#include "ui_room_create.h"
#include "mainwindow.h"

Room_create::Room_create(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Room_create)
{
    ui->setupUi(this);
}

Room_create::~Room_create()
{
    delete ui;
}

void Room_create::openWidget() {
    Room_create *window = new Room_create();
    window->show();
}

void Room_create::on_CreateGroup_clicked()
{
    MainWindow mainwindow;
    QFile file("room.txt");
    if (!file.open(QIODevice::WriteOnly | QIODevice::Append | QIODevice::Text))
        return;

    QTextStream out(&file);
    if(ui->hexEdit->text() == "") {
        ui->warningLbl->setText("Please enter a valid hex code");
    } else {
        out << ui->groupEdit->text() << ", " << ui->hexEdit->text() << Qt::endl;
        file.close();
        mainwindow.fillListViewGroup();
        this->close();
    }

}

