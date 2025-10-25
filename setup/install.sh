echo '*** Update and Upgrade System'
sudo apt update
sudo apt upgrade

echo '*** Install COOJA library and componets'
sudo apt-get install git build-essential doxygen curl wireshark  binutils-msp430 gcc-msp430 msp430-libc msp430mcu mspdebug gcc-arm-none-eabi openjdk-8-jdk openjdk-8-jre ant libncurses5-dev avr-libc gcc-avr

echo '*** Download COOJA 3.0 github'
git clone https://github.com/contiki-os/contiki
cd contiki/
git submodule update --init --recursive

echo '*** Select SDK java-8-openjdk'
sudo update-alternatives --config java
java -version

echo '*** Successful installation!!!'

echo '*** Open COOJA:'
echo 'cd ./contiki/tools/cooja'
echo 'sudo ant run'

echo '*** if PROBLEM: https://stackoverflow.com/questions/32814364/running-cooja-in-contiki-with-cmd-ant-run
