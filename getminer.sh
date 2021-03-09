
# ethminer
sudo dnf -y install perl libstdc++-static gcc-c++ libstdc++ libstdc++-devel

git clone --recursive https://github.com/ethereum-mining/ethminer
cd ethminer
mkdir build
cd build
cmake ..
cmake --build .
sudo make install

# nuxhash - nuxhash-gui
sudo dnf -y install python3-wxpython3.x86_64
sudo python3 -m pip install git+https://github.com/YoRyan/nuxhash
# After first time setup:
# sed -i 's/optout = False/optout = True/' ~/.config/nuxhash/settings.conf