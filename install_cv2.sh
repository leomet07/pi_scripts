sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y build-essential cmake pkg-config
sudo apt-get install -y libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -y libxvidcore-dev libx264-dev
sudo apt-get install -y libgtk2.0-dev libgtk-3-dev
sudo apt-get install -y libatlas-base-dev gfortran
sudo apt-get install -y  libqt4-test
sudo apt-get install -y python3-dev
sudo apt-get install -y python3-pip
pip3 install opencv-python==3.4.6.27
sudo apt-get install -y libqtgui4
sudo modprobe bcm2835-v4l2
