/********************************************************************************
** Form generated from reading UI file 'room_create.ui'
**
** Created by: Qt User Interface Compiler version 5.15.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ROOM_CREATE_H
#define UI_ROOM_CREATE_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_Room_create
{
public:

    void setupUi(QWidget *Room_create)
    {
        if (Room_create->objectName().isEmpty())
            Room_create->setObjectName(QString::fromUtf8("Room_create"));
        Room_create->resize(400, 300);

        retranslateUi(Room_create);

        QMetaObject::connectSlotsByName(Room_create);
    } // setupUi

    void retranslateUi(QWidget *Room_create)
    {
        Room_create->setWindowTitle(QCoreApplication::translate("Room_create", "Form", nullptr));
    } // retranslateUi

};

namespace Ui {
    class Room_create: public Ui_Room_create {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ROOM_CREATE_H
