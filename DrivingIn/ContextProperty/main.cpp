#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "cppworker.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    CppWorker cppworker;

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("Bworker", &cppworker);


    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("ContextProperty", "Main");

    return app.exec();
}
