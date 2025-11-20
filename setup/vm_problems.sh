# =======================================================
# estes comandos é apenas se estiver usando o vmware no ubuntu 24 
# se estiver na sua própria máquina e com a versão do ubuntu 20, de boa! pode ignorar esse arquivo
# =======================================================

# -------------------------------------------------------
# caso estiver usando o vmware e ele estiver rodando a maquina virtual, mas a internet nao está conectando e
# voce nao quer quebrar a cabeça com isso,
#   apenas desative o secure boot temporariamente para usar a maquina virtual quando precisar usar internet dentro dela
# -------------------------------------------------------

# gerando e importando uma chave
openssl req -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -nodes -days 36500 -subj "/CN=VMware/"
sudo mokutil --import MOK.der
# lembre-se da senha feita
# reinicia
    # na tela azul: 
    # escolhe "Enroll MOK"
    # seleciona "continue"
    # confirma com a senha que foi feita
    # reboot
#voltando
# assina os módulos recém-compilados
sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./MOK.priv ./MOK.der /lib/modules/$(uname -r)/misc/vmmon.ko
sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./MOK.priv ./MOK.der /lib/modules/$(uname -r)/misc/vmnet.ko
# carrega novamente
sudo modprobe vmmon
sudo modprobe vmnet

# agora
# verifique se os módulos foram carregados
lsmod | grep vmmon
lsmod | grep vmnet

# tem que aparecer algo como isso 
    # vmmon       126976  0
    # vmnet        53248  0

# conferindo se o dispositivo foi criado
ls -l /dev/vmmon
# aparece algo como
    # crw-rw----+ 1 root vmware 10, 56 nov 11 13:42 /dev/vmmon

