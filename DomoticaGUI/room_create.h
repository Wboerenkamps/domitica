#ifndef ROOM_CREATE_H
#define ROOM_CREATE_H

#include <QWidget>

namespace Ui {
class Room_create;
}

class Room_create : public QWidget
{
    Q_OBJECT

public:
    explicit Room_create(QWidget *parent = nullptr);
    ~Room_create();

private:
    Ui::Room_create *ui;
};

#endif // ROOM_CREATE_H
