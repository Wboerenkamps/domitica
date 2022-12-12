#include <iostream>
#include <fstream>
#include <QtDebug>
#include <iostream>
#include <string>
#include "rooms.h"

Rooms::Rooms()
{

}

void Rooms::getRooms() {
}

void Rooms::roomWriteFile() {
    QString myText;
    std::ofstream MyFile("rooms.txt");

    MyFile << "room1" << std::endl << "room2" << std::endl << "room3";

    while (getline(MyFile, myText)) {
        qDebug() << myText;
    }

    MyFile.close();
}
