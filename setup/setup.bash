sudo apt update
sudo apt upgrade
sudo apt-get install git build-essential doxygen curl wireshark  binutils-msp430 gcc-msp430 msp430-libc msp430mcu mspdebug gcc-arm-none-eabi openjdk-8-jdk openjdk-8-jre ant libncurses5-dev avr-libc gcc-avr

sudo update-alternatives --config java
# escolher a versao 8

sudo snap install code --classic
sudo snap install gh

git clone https://github.com/gatilhoroxo/tarc_attempt.git
git submodule update --init --recursive

cd contiki/tools/cooja
sudo ant run



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
