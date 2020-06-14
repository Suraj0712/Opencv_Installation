cmake_minimum_required(VERSION 2.8) 
PROJECT (name)
find_package(OpenCV 4.1 REQUIRED)

include_directories(${OpenCV_INCLUDE_DIRS})
link_directories(${OpenCV_LIBRARY_DIRS})
add_definitions(${OpenCV_DEFINITIONS})

add_executable(executable src/main.cpp )
target_link_libraries(executable ${OpenCV_LIBS} )
