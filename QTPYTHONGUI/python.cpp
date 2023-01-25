#include "python.h"

Python::Python()
{

}

void Python::Process() {
    QProcess process;

    QString pyaci = "D:/Project2/nrf5sdkformeshv500src/scripts/interactive_pyaci/interactive_pyaci.py";

    QString pythonCommandArguments = "python " + pyaci + "-d " + "COM3 " + "--no-logfile";

    process.start(pythonCommandArguments);

    process.waitForFinished();
    QByteArray result = process.readAll();
    qDebug() << pythonCommandArguments;
    qDebug() << pyaci;
    qDebug() << result;
    qDebug() << process.readAllStandardError();
}
