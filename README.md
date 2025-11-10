# CachyDev

## Setup
Clone this repo or use the `setup` executable

### Faster boot

#### Disable CachyOS animation for faster boot time.
`Settings > Colors & Themes > Splash Screen > None`

#### Disable `plymouth` animations for faster boot time.
```bash
su
sudo nano /boot/loader/entries/linux-cachyos.conf
```
And remove `splash` from the options.


#### To permanently disable `splash`:
```bash
su
sudo nano /etc/sdboot-manage.conf
```
And remove `splash` from `LINUX_OPTIONS="zswap.enabled=0 nowatchdog quiet splash"`


#### Disable entry selection to save 5 seconds on each boot.
```bash
su
sudo nano /boot/loader/loader.conf
```
And set `timeout 0` to hide the entry-selection unless you press a key on boot.

### Setup git
```bash
find ~ -maxdepth 1 -name .ssh | ls
```
If there is already an ssh-key, add it to github.
Otherwise generate one with:
```bash
ssh-keygen
```

Interact with git via ```git@github.com:<username>/repo.git```.

## Installing dependencies
use the ```run``` script to install dependencies
```bash
./run
```

## Configuring the environment
use the ```dev-env``` script to copy all configurations
```bash
./dev-env
```

You can also reset the environment using the ```dev-env``` script after running it once
```bash
dev-env
```
