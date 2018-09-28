#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QTime>
#include <QDebug>
#include <QString>
int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    QString server_time = "23:55";
    QStringList splitted_time = server_time.split(":");
    qDebug() << splitted_time;
    QString hrs = splitted_time.at(0);
    QString min = splitted_time.at(1);
    int int_hrs =hrs.toInt();
    int int_min = min.toInt();
    QTime notify_time(int_hrs,int_min,0,0);
    QTime sys_time;
    sys_time =  QTime::currentTime();
    if(notify_time < sys_time)
    {
        qDebug() << "less";
    }
    else
    {
        qDebug() <<"more";
    }

    return app.exec();
}
