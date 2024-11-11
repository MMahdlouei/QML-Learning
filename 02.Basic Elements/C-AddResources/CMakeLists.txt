cmake_minimum_required(VERSION 3.16)

project(C-AddResources VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appC-AddResources
    main.cpp
)
#methode 1
# qt_add_resources(appC-AddResources "qml"
#     PREFIX /
#     FILES
#     Images/LearnQt.png
# )
# qt_add_qml_module(appC-AddResources
#     URI C-AddResources
#     VERSION 1.0
#     QML_FILES
#     Main.qml
# )

#method 2
# qt_add_qml_module(appC-AddResources
#     URI C-AddResources
#     VERSION 1.0
#     QML_FILES
#     Main.qml
#     #Can use line below instead of add resources
#     RESOURCES
#     Images/LearnQt.png
#     # RESOURCE_PREFIX /
# )

# method 3

qt_add_qml_module(appC-AddResources
    URI C-AddResources
    VERSION 1.0
    QML_FILES
    Main.qml
    RESOURCES resource.qrc
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appC-AddResources PROPERTIES
    #    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appC-AddResources
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appC-AddResources
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appC-AddResources
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
