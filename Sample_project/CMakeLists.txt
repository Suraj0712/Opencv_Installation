    #minimum version
cmake_minimum_required(VERSION 2.8.3) 

    #project name (can be anything)
PROJECT (Sample_Project)

    #Load settings for an external project
find_package(OpenCV 4.1 REQUIRED)

    #this is telling where to look for header files
include_directories(${OpenCV_INCLUDE_DIRS})

    #Add directories in which the linker will look for libraries
link_directories(${OpenCV_LIBRARY_DIRS})

    #Adds -D define flags to the compilation of source files
add_definitions(${OpenCV_DEFINITIONS})

    #Add an executable to the project using the specified source files
add_executable(executable src/main.cpp )

    #Link a target to given libraries
target_link_libraries(executable ${OpenCV_LIBS} )
