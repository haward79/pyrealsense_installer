#!/bin/bash


owd=$(pwd)


echo '> Install python3 and related dev code'
sudo apt install python3 python3-dev -y

echo '> Install dependencies'
sudo apt install cmake make libusb-1.0-0-dev libssl-dev libvulkan-dev libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libopengl-dev libglx-dev libgl1-mesa-dev libglu1-mesa-dev libxi-dev -y


echo '> Change work directory'

cd "$HOME/Workspace"

if [[ $? -ne 0 ]]
then
	echo "Failed to chnage directory to '$HOME/Workspace' !"
	exit 1
fi


echo '> Get pyrealsense source code'
git clone https://github.com/IntelRealSense/librealsense.git
cd librealsense


echo '> Prepare to build pyrealsense'
mkdir build
cd build


echo '> Run cmake'
cmake ../ -DBUILD_PYTHON_BINDINGS:bool=true


echo '> Get number of cpu cores'
numCores=$(cat /proc/cpuinfo | grep processor | sort | wc -l)

if [[ $numCores -gt 0 ]]
then
	echo "$numCores cores available on this computer."
else
	echo 'Failed to retrieve number of cpu cores !'
	exit 1
fi


echo '> Run make'
make -j "$numCores"


echo '> Install pyrealsense'
sudo make install

