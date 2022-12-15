#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QStringListModel>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();
    void fillListViewGroup();
    void updateListViewGroup();

private slots:
    void on_pushButton_2_clicked();

    void on_pushButton_3_clicked();

    void on_CreateGroupBtn_clicked();

    void on_roomLV_clicked(const QModelIndex &index);

private:
    Ui::MainWindow *ui;
    QStringListModel  *model;
};
#endif // MAINWINDOW_H
