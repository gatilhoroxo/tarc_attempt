
#APENAS PARA VERSAO 20.04 DO UBUNTU
# essa parte eh soh se for fazer o install do zero com o .sh
#chmod +x install.sh
#./install.sh
#nano .gitmodules #comentar linhas que envolvam o stm32
#nano .git/config #o mesmo do comando de cima
#git submodule sync
#git submodule update --init --recursive
#git submodule deinit -f .
#git rm -f platform/stm32nucleo-spirit1/stm32cube-lib
#git add . && git submodule sync
#git rm -f platform/stm32nucleo-spirit1/stm32cube-lib
#rm -rf .git/modules/platform/stm32nucleo-spirit1
#git submodule sync
#git submodule update --init --recursive


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
