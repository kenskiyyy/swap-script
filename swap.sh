#!/bin/sh

if [ ! "$#" -ge 1 ]; then
    echo "Usage: $0 {size}"
    echo "Example: $0 4G"
    echo "(Default path: /swapfile)"
    echo "Optional path: Usage: $0 {size} {path}"
    exit 1
fi

echo "Enter root password." 
echo
SWAP_SIZE=$1
SWAP_PATH="/swapfile"

if [ ! -z "$2" ]; then
    SWAP_PATH=$2
fi

sudo fallocate -l $SWAP_SIZE $SWAP_PATH  
sudo chmod 600 $SWAP_PATH                
sudo mkswap $SWAP_PATH                            
sudo swapon $SWAP_PATH                   
echo "$SWAP_PATH   none    swap    sw    0   0" | sudo tee /etc/fstab -a 
echo
echo "Success. $SWAP_SIZE swap file enabled at $SWAP_PATH"
swapon -s
