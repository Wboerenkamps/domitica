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
    QString array_List[5]={"Delphi","Mobile","Dot Net","Java","Open Source"};


}

void MainWindow::on_pushButton_2_clicked()
{
    Rooms rooms;
    rooms.roomWriteFile();
}

