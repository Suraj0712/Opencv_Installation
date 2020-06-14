# Opencv Installation

OpenCV (Open Source Computer Vision Library) is an open-source computer vision and machine learning software library. OpenCV was built to provide a common infrastructure for computer vision applications and to accelerate the use of machine perception in commercial products. Being a BSD-licensed product, OpenCV makes it easy for businesses to utilize and modify the code. 

Using this repository we will install the OpenCV on Ubuntu16.04 and also take a look at sample project in c++ using OpenCV. If you have ROS installed in your system then just update the .bashrc file as follows.

### Step 1
```
$ cd 
$ gedit .bashrc
```
Once the bashrc file is open update commnet the lines where you are sourcing the environment. for example source /opt/ros/kinetic/setup.bash => #source /opt/ros/kinetic/setup.bash

### Step 2
Clone the repository.
```
$ git clone git@github.com:Suraj0712/Opencv_Installation.git
```
#### Directory Structure
```
.Opencv_Installation
├── install_opencv.sh		#Installtion script
├── LICENSE 			#License file
├── README.md			#Read me file
└── Sample_project		#Example project
    ├── CMakeLists.txt		#Cmake file containing build instruction
    ├── driver.sh		#Driver script
    ├── src
    │   └── main.cpp		#Source code
    └── test.png
```
### Step 3
Now you have to execute the installation script to install OpenCV. Open the ```install_opencv.sh``` script and change the line no 83,84 accordingly. If you are dont know how to change then leave the script as it is and execute the following commands.

```
$ cd <path_to_project_directory>
$ chmod +x install_opencv.sh 
$ sudo sh install_opencv.sh
```
The script takes some time for complete execution.

### Step 4
Upon successful installation of OpenCV, we can start with our first sample project. I am using CMake to build the project. As you can see in the directory structure we have a Cmake file, the src folder containing the source code, and the test image. I have created the driver script to build and run the project. You need to make a few changes before executing the script. 

Change no 1=> line no. 3: Give the appropriate project path
Change no 2=> line no. 10: update the path for the image. 

once you update the ```driver.sh``` script you need to run following command to run the project.

```
$ cd <path_to_project_directory>
$ cd Sample_project
$ chmod +x driver.sh
$ sh driver.sh 
```
## Thank you




