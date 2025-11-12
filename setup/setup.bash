#
# I did this just to work to virtual machines
#   with the op. system Ubuntu 20
# Think better if you want to do this,
#   i guess it work with the op. system itself
#   but i didnt test it yet
#

echo '*** Update and Upgrade System'
sudo apt update
sudo apt upgrade

echo '*** Install COOJA library and componets'
sudo apt-get install git build-essential doxygen curl wireshark  binutils-msp430 gcc-msp430 msp430-libc msp430mcu mspdebug gcc-arm-none-eabi openjdk-8-jdk openjdk-8-jre ant libncurses5-dev avr-libc gcc-avr

echo '*** Select SDK java-8-openjdk'
sudo update-alternatives --config java
# escolher a versao 8

echo '*** Install VScode and github authentication'
sudo snap install code --classic
sudo snap install gh

echo '*** Download COOJA 3.0 github (version of gatilhoroxo)'
git clone https://github.com/gatilhoroxo/tarc_attempt.git
git submodule update --init --recursive

echo '*** Successful installation!!!'

echo '*** Open COOJA:'
cd contiki/tools/cooja
sudo ant run
