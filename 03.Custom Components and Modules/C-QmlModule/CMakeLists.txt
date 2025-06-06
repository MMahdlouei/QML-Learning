cmake_minimum_required(VERSION 3.16)

project(C-QmlModule VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(QT_QML_GENERATE_QMLLS_INI ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appC-QmlModule
    main.cpp
)

qt_add_qml_module(appC-QmlModule
    URI C-QmlModule
    VERSION 1.0
    QML_FILES
        Main.qml
)

add_subdirectory(CustomButtons)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appC-QmlModule PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appC-QmlModule
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appC-QmlModule
    PRIVATE Qt6::Quick GreatButtonsLibplugin
)

include(GNUInstallDirs)
install(TARGETS appC-QmlModule
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)







