#ifndef ROOMS_H
#define ROOMS_H
#include <QString>

class Rooms
{
public:
    Rooms();
    void fillArray();
    void getRooms();
    void roomWriteFile();
    void roomReadFile();
private:
    QString roomName;

};

#endif // ROOMS_H
