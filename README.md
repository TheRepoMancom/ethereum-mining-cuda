# ethereum-mining-cuda
One spot script install ubuntu 16.04, update all packages, install CUDA, install ethminer and start mining on dwarfpool. 
Just add your ethereum address.. 


Configure auto-mine on startup

Install Screen
sudo apt install screen
Create a launcher script
cd ~
sudo nano minestart.sh
In nano, you will need to paste the following (replace USERNAME with your Ubuntu username)

#!/bin/bash

DEFAULT_DELAY=0

if [ "x$1" = "x" -o "x$1" = "xnone" ]; then

DELAY=$DEFAULT_DELAY

else

DELAY=$1

fi

sleep $DELAY

cd ethereum-mining-cuda

su pankymathur -c "screen -dmS ethm ./mine.sh"

You will now need to exit out of Nano

Press CTRL+X
Type Y
Press Enter until you return to the bash promp
Add executable permissions to the file by typing the following:

sudo chmod +x minestart.sh
Add minestart.sh to startup

Type the following:
sudo nano /etc/rc.localv
Find the line which reads exit 0 and type the following above that line (replace USERNAME with your Ubuntu username):
/home/pankymathur/minestart.sh 15 &

For questions & bugs please open issue under repo. 
