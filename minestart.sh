
#!/bin/bash
DEFAULT_DELAY=0
if [ "x$1" = "x" -o "x$1" = "xnone" ]; then
DELAY=$DEFAULT_DELAY
else
DELAY=$1
fi
sleep $DELAY
su pankymathur -c "screen -dmS ethm ./eth.sh -w 0xA87f228020Ca9D6f4F971c2bda8ad31e87A46D3E"