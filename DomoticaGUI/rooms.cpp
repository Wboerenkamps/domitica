#include <iostream>
#include <fstream>
#include <QtDebug>
#include <QFile>
#include <QTextStream>

#include "rooms.h"
#include "room_create.h"

Rooms::Rooms()
{

}

void Rooms::getRooms() {

}

void Rooms::roomWriteFile() {
    QFile file("room.txt");
    if (!file.open(QIODevice::WriteOnly | QIODevice::Text))
        return;

    QTextStream out(&file);
    out << "room 1" << Qt::endl << "room 2";
}

void Rooms::roomReadFile() {

}

