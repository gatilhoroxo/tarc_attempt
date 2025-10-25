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

unzip contiki.zip
cd contiki/tools/cooja
sudo ant run
