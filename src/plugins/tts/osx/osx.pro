TARGET = qtexttospeech_speechosx
PLUGIN_TYPE = texttospeech
PLUGIN_CLASS_NAME = QTextToSpeechPluginOsx

load(qt_plugin)

QT += core

INCLUDEPATH += $$OUT_PWD/../../../../include

LIBS += -framework Cocoa -L$$OUT_PWD/../../../../lib
CONFIG(debug, debug|release) {
    LIBS += -lQt6TextToSpeech_debug
}
CONFIG(release, debug|release) {
    LIBS += -lQt6TextToSpeech
}

HEADERS += \
    qtexttospeech_osx_plugin.h \
    qtexttospeech_osx.h \

SOURCES += \
    qtexttospeech_osx_plugin.cpp \

OBJECTIVE_SOURCES += \
    qtexttospeech_osx.mm \

OTHER_FILES += \
    osx_plugin.json
