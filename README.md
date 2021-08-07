# What's this
This is an installer for [pyrealsense](https://github.com/IntelRealSense/librealsense/tree/master/wrappers/python#building-from-source) based on bash.
This script runs with a poor UX, but it works.

# Pre-requirements
Please ensure the environment is compatible to run this script.

- Hardware
  - [Raspberry Pi 4 (4GB RAM)](https://www.raspberrypi.org/products/raspberry-pi-4-model-b/)

- Software
  - [Ubuntu server 20.04](https://old-releases.ubuntu.com/releases/focal/ubuntu-20.04.1-preinstalled-server-arm64+raspi.img.xz)
  - bash shell

If all things get ready, you can download this project and run *0_main.bash* .
For more information, please refer to *Usage section*.

# Usage
1. Download this project.

        git clone 'https://github.com/haward79/pyrealsense_installer'
        cd pyrealsense_installer

2. Please ensure the user has privilege to run the scripts.

        chmod u+x *.bash

3. Run the main script  
   Have a cup of coffee and take a rest !

        ./0_main.bash

4. (Optional) Checkout the usage of pyrealsense.

        ./4_usage.bash

# Changelog
- 08/08 2021
    1. First commit.

# Copyright
These scripts are written by [haward79](https://www.haward79.tw/).
They are free to use for both education and business.

