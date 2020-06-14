[![Udacity - Robotics NanoDegree Program](https://s3-us-west-1.amazonaws.com/udacity-robotics/Extra+Images/RoboND_flag.png)](https://www.udacity.com/robotics)

# Udacity Nanodegree: Sensor Fusion

## Project 01: Lidar Obstacle Detection

<img src="media/ObstacleDetectionFPS.gif" width="700" height="400" />

### Project Objective

This project aims to detect the obstacle in the point cloud data received from the car.

- **Working with Point Cloud Data** using the [Point Cloud Library](https://pointcloudlibrary.github.io/) (PCL), including streaming PCD files,
- Segmenting the road from non-road points by **fitting a plane using RANSAC**,
- Grouping points using **Euclidean Clustering via Kd-trees** to find obstacles,
- **Fitting oriented bounding boxes** over clustered obstacle points to simplify tracking and collision avoidance.

The project pipeline is as follows.
```
1. Load the .pcd file
2. Downsample the data using VoxelGrid filter
3. Extract the area of interest using the box filters
4. Segment the cloud using the RANSAC to separate the ground plane and obstacles
5. Use KdTree and Euclidean Clustering based clustering algorithm for clustering the obstacles
6. Draw a bounding box around the object
7. Loop through the .pcd files and stream the results

```
### Directory Structure

```
.
├── CMakeLists.txt                        # Top level Cmake file
├── media                                 # Folder containing the screenshots of the results
│   ├── LIDAR_OD.mkv
│   ├── ObstacleDetectionFPS.gif
│   ├── sf***.png
├── README.md                             # Readme file for reference
└── src
    ├── environment.cpp                   # File to setup the environment
    ├── processPointClouds.cpp            # File containing actual implementation of segmentation, custering and IO
    ├── processPointClouds.h
    ├── quiz                              # Quiz folder containing implementation of KDtree and RANSAC
    │   ├── cluster
    │   │   ├── cluster.cpp
    │   │   ├── CMakeLists.txt
    │   │   └── kdtree.h
    │   └── ransac
    │       ├── CMakeLists.txt
    │       └── ransac2d.cpp
    ├── render                            # Package for data visualization
    │   ├── box.h
    │   ├── render.cpp
    │   └── render.h
    └── sensors
        ├── data
        │   └── pcd
        │       ├── data_1
        │       │   ├── *****.pcd
        │       ├── data_2
        │       │   ├── *****.pcd
        │       └── simpleHighway.pcd
        └── lidar.h

```
### How to run

#### 1. First of all, clone this repo:
```
git clone git@github.com:Suraj0712/SFND_1_Lidar_Obstacle_Detection.git
```

#### 2. Package dependencies 
```
PCL
CMake
system
filesystem
thread
date_time
iostreams
serialization
chrono
atomic
regex
```

#### 3. Build the project
```
$ cd SFND_1_Lidar_Obstacle_Detection
$ mkdir build && cd build
$ cmake ..
$ make 
$ ./environment
```
### 4. Results

#### Segmentation 
![alt txt](media/sf6.png)

#### RANSAC 
![alt txt](media/sf7.png)

#### Clustering 
![alt txt](media/sf8.png)

#### KdTree
![alt txt](media/sf9.png)




