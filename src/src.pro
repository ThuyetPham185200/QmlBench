TARGET = qmlbench
TEMPLATE = app

QT += qml \
    quick \
    widgets \
    opengl \
    network \
    core \
    gui \
    xml \
    quickcontrols2 \
    printsupport \

lessThan(QT_MAJOR_VERSION, 5): error("This benchmark tool is for QtQuick 2 only, and requires Qt 5.")

SOURCES += \
    TroubleMaker.cpp \
    main.cpp \
    resultrecorder.cpp \
    benchmarkrunner.cpp \
    testmodel.cpp \
    qmlbench.cpp

HEADERS += \
    TroubleMaker.h \
    resultrecorder.h \
    benchmarkrunner.h \
    benchmark.h \
    options.h \
    testmodel.h \
    qmlbench.h

equals(QT_MAJOR_VERSION, 5): lessThan(QT_MINOR_VERSION, 2) {
    SOURCES += \
        compat/qcommandlineoption.cpp \
        compat/qcommandlineparser.cpp

    HEADERS += \
        compat/qcommandlineoption.h \
        compat/qcommandlineparser.h

    INCLUDEPATH += compat
}

CONFIG += console
CONFIG -= app_bundle

RESOURCES += qmlbench.qrc

target.path = /root
INSTALLS += target
