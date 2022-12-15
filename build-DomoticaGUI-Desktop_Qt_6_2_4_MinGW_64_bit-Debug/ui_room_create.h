/********************************************************************************
** Form generated from reading UI file 'room_create.ui'
**
** Created by: Qt User Interface Compiler version 6.2.4
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ROOM_CREATE_H
#define UI_ROOM_CREATE_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_Room_create
{
public:
    QWidget *gridLayoutWidget;
    QGridLayout *gridLayout;
    QLabel *label_2;
    QPushButton *CreateGroup;
    QLineEdit *lineEdit_2;
    QLineEdit *groupEdit;
    QLabel *label;
    QLabel *label_3;

    void setupUi(QWidget *Room_create)
    {
        if (Room_create->objectName().isEmpty())
            Room_create->setObjectName(QString::fromUtf8("Room_create"));
        Room_create->resize(400, 300);
        gridLayoutWidget = new QWidget(Room_create);
        gridLayoutWidget->setObjectName(QString::fromUtf8("gridLayoutWidget"));
        gridLayoutWidget->setGeometry(QRect(10, 0, 381, 291));
        gridLayout = new QGridLayout(gridLayoutWidget);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        gridLayout->setContentsMargins(0, 0, 0, 0);
        label_2 = new QLabel(gridLayoutWidget);
        label_2->setObjectName(QString::fromUtf8("label_2"));

        gridLayout->addWidget(label_2, 3, 0, 1, 1);

        CreateGroup = new QPushButton(gridLayoutWidget);
        CreateGroup->setObjectName(QString::fromUtf8("CreateGroup"));

        gridLayout->addWidget(CreateGroup, 5, 0, 1, 1);

        lineEdit_2 = new QLineEdit(gridLayoutWidget);
        lineEdit_2->setObjectName(QString::fromUtf8("lineEdit_2"));

        gridLayout->addWidget(lineEdit_2, 4, 0, 1, 1);

        groupEdit = new QLineEdit(gridLayoutWidget);
        groupEdit->setObjectName(QString::fromUtf8("groupEdit"));

        gridLayout->addWidget(groupEdit, 2, 0, 1, 1);

        label = new QLabel(gridLayoutWidget);
        label->setObjectName(QString::fromUtf8("label"));

        gridLayout->addWidget(label, 1, 0, 1, 1);

        label_3 = new QLabel(gridLayoutWidget);
        label_3->setObjectName(QString::fromUtf8("label_3"));

        gridLayout->addWidget(label_3, 0, 0, 1, 1);


        retranslateUi(Room_create);

        QMetaObject::connectSlotsByName(Room_create);
    } // setupUi

    void retranslateUi(QWidget *Room_create)
    {
        Room_create->setWindowTitle(QCoreApplication::translate("Room_create", "Form", nullptr));
        label_2->setText(QCoreApplication::translate("Room_create", "hex code", nullptr));
        CreateGroup->setText(QCoreApplication::translate("Room_create", "Create group", nullptr));
        label->setText(QCoreApplication::translate("Room_create", "Group name", nullptr));
        label_3->setText(QCoreApplication::translate("Room_create", "Create new group", nullptr));
    } // retranslateUi

};

namespace Ui {
    class Room_create: public Ui_Room_create {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ROOM_CREATE_H
