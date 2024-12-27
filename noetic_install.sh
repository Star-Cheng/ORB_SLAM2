sudo apt-get update
sudo apt-get install build-essential cmake git pkg-config -y
sudo apt-get install libjpeg-dev libtiff-dev libpng-dev -y
sudo apt-get install libgtk-3-dev libcanberra-gtk3-dev -y
sudo apt-get install libatlas-base-dev gfortran -y
sudo apt-get install python3-dev -y
cd ~/gym/download/slam
git clone --branch 3.4.0 http://github.com/opencv/opencv.git
cd opencv
mkdir build
cd build
cmake -D BUILD_OPENCV_PYTHON3=OFF ..
make -j16
sudo make install
sudo ldconfig