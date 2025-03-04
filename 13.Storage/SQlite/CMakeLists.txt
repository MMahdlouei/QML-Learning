cmake_minimum_required(VERSION 3.16)

project(04-SQlite VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find required Qt modules including Quick and Sql
find_package(Qt6 6.5 REQUIRED COMPONENTS Quick Sql)

qt_standard_project_setup(REQUIRES 6.5)

# Add executable target
qt_add_executable(appSQlite
    main.cpp
)

# Add QML module
qt_add_qml_module(appSQlite
    URI SQlite
    VERSION 1.0
    QML_FILES
        Main.qml
        DataBase.js
)

# Set the target properties (optional, for bundle settings)
set_target_properties(appSQlite PROPERTIES
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

# Link Qt6::Sql along with other modules
target_link_libraries(appSQlite
    PRIVATE Qt6::Quick
    PRIVATE Qt6::Sql  # Link the Qt6::Sql module for database support
)

# Install target (optional, adjust based on platform)
include(GNUInstallDirs)
install(TARGETS appSQlite
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
