# FACE RECOGNITION WITH RASPBERRY PI 3 AND C++

## HARDWARE
Raspberry Pi 3  
Module camera v2 8MP

## SOFTWARE
Raspbian Jessie OS (Kernel version 4.4)  
OpenCV 2.4.13 and required packages of OpenCV

## SETUP

- DOWNLOAD THE IMAGE

Download Raspbian Jessie OS [here](https://www.raspberrypi.org/downloads/raspbian/)  
After downloading the .zip file, unzip it to get the image file (.img) for writing to your SD card.

- WRITING AN IMAGE TO THE SD CARD

With the image file of the distribution of your choice, you need to use an image writing tool to install it on your SD card. See our guide for your system:  

[Linux](https://www.raspberrypi.org/documentation/installation/installing-images/linux.md)  
[Mac OS](https://www.raspberrypi.org/documentation/installation/installing-images/mac.md)  
[Windows](https://www.raspberrypi.org/documentation/installation/installing-images/windows.md)

- INSTALLATION OPENCV IN RASPBERRY PI

Boot into Raspbian and follow the following guide:  
[OpenCV: Installation in Linux](http://docs.opencv.org/3.0-last-rst/doc/tutorials/introduction/linux_install/linux_install.html)

- CLONE REPOSITORY

Open terminal and run command:  
`git clone https://github.com/khanhoct/face-recognition-pi.git`

- GENERATE THE EXECUTABLE  

`cd face-recognition-pi`  
`cd build`  
`cmake ..`  
`make`  

- RUN  

`./FaceRecognition`  

___

## CONTRIBUTORS
1. Instructor: Nguyen Minh Son  
2. Project owners: Nguyen Quoc Khanh  
3. Developer:  
Nguyen Quoc Khanh  
Phan Van Phuong  
