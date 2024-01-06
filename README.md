# swap-script

## Usage

First of all, download the main script:
```
wget https://raw.githubusercontent.com/kenskiyyy/swap-script/master/swap.sh -O swap
# or
curl https://raw.githubusercontent.com/kenskiyyy/swap-script/master/swap.sh -o swap
```

Then simply run the file with this format:
```
sh swap <size>
```

Example (with 4G):
```
sh swap 4G
```

The default path for the swap file is /swapfile. If you wish to change this, simple the file location (file must not exist) add it to the command:
```
sh swap 4G /swap
```

## Troubleshoot
The script will not run if you already have swap. To remove swap use the command below.
```
swapoff --all
```
After the command, try running the script again.

# Credit
All credit goes to https://github.com/Cretezy/Swap
the original creator of the swap script

