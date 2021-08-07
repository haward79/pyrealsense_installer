#!/bin/bash

chmod u+x *.bash

echo 'Recommendation :'
echo '  (1) To avoid from privilege issues,'
echo "      edit sudo file to give $USER root privileges without entering password."
echo ''
echo '  (2) Run this script by'
echo '      $ ./0_main.bash 2>&1 | tee log_filename.log'
echo '      is a good idea.'
echo ''
echo '  (3) For more information, please refer to'
echo '      https://github.com/IntelRealSense/librealsense/tree/master/wrappers/python#building-from-source'
echo ''
read -p 'Press ENTER to continue ......' trash

./1_update.bash
./2_install.bash
./3_clear.bash

