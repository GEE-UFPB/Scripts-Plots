#Instalador de programas
########################
#Atualizar o sistema
echo "Atualizar o sistema"
sudo apt-get update
########################
echo "Instalar pacotes de compiladores - visualizadores e bibliotecas"
sudo apt-get install gfortran -y
sudo apt-get install vim -y
sudo apt-get install build-essential checkinstall -y
sudo apt-get install openmpi-bin openmpi-doc libopenmpi-dev -y
sudo apt-get install libblacs-mpi-dev -y
sudo apt-get install liblapack-dev -y
sudo apt-get install liblapack3 -y
sudo apt-get install libopenblas-base -y
sudo apt-get install libopenblas-dev -y
sudo apt-get install liblapack-dev libopenblas-dev -y
#########################
#Entrar na pasta de instalação
cd /usr/local/lib/
sudo chmod +x .
# Instalar o Siesta
#Baixar a versão desejada
sudo wget https://launchpad.net/siesta/4.0/4.0.1/+download/siesta-4.0.1.tar.gz
sudo tar -xzvf siesta-4.0.1.tar.gz
cd siesta-4.0.1/
cd Obj/
sh ../Src/obj_setup.sh
cd ../Src
./configure
cp arch.make ../Obj
cd ../Obj
make
#########################
# Copiando para um local mais adequado
sudo cp /usr/local/lib/siesta-4.0.1/Obj/siesta /usr/local/bin
cd 
siesta
