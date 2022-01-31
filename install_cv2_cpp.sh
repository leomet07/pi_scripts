# Based off of https://solarianprogrammer.com/2019/09/17/install-opencv-raspberry-pi-raspbian-cpp-python-development/
cd ~

rm -rf  /opt/opencv-4.1.0
wget https://github.com/sol-prog/raspberry-pi-opencv/releases/download/opencv4rpi2.1/opencv-4.1.0-armhf.tar.bz2
tar xvf opencv-4.1.0-armhf.tar.bz2
sudo mv opencv-4.1.0 /opt
rm opencv-4.1.0-armhf.tar.bz2

sudo apt install -y libtiff-dev zlib1g-dev 
sudo apt install -y libjpeg-dev libpng-dev 
sudo apt install -y  libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -y libxvidcore-dev libx264-dev

sudo apt install -y libgtk-3-dev libcanberra-gtk3-dev

cd ~

echo 'export LD_LIBRARY_PATH=/opt/opencv-4.1.0/lib:$LD_LIBRARY_PATH' >> .bashrc

. ~/.bashrc

# exec $SHELL


sudo apt install -y git 

git clone https://gist.github.com/sol-prog/ed383474872958081985de733eaf352d opencv_cpp_compile_settings
cd opencv_cpp_compile_settings/
sudo cp opencv.pc /usr/lib/arm-linux-gnueabihf/pkgconfig
cd ~
rm -rf opencv_cpp_compile_settings/

echo "Compile settings done"

echo "Done, make sure legacy camera is enabled in raspi-config interface settings and reboot"