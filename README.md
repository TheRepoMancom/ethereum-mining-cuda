# ethereum-mining-cuda
One spot script install ubuntu 16.04, update all packages, install CUDA, install ethminer and start mining on dwarfpool. 
Just add your ethereum address.. 

#Add minestart.sh to startup

Type the following:


sudo nano /etc/rc.local



Find the line which reads exit 0 and type the following above that line (replace pankymathur with your Ubuntu username):


/home/pankymathur/ethereum-mining-cuda/minestart.sh 15 &


#For questions & bugs please open issue under repo. 
