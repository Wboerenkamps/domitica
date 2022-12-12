#include "room_create.h"
#include "ui_room_create.h"

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
