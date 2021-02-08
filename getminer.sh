sudo dnf -y install perl libstdc++-static gcc-c++ libstdc++ libstdc++-devel

git clone --recursive https://github.com/ethereum-mining/ethminer
cd ethminer
mkdir build
cd build
cmake ..
cmake --build .
sudo make install