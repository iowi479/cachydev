# CachyDev

TODO: Update from Debian-based environment

## Setup
Clone this repo or use the  ```setup``` executable

### faster boot
Disable CachyOS animation for faster boot time.
`Settings > Colors & Themes > Splash Screen > None`

Disable `plymouth` animations for faster boot time.
```bash
su
cd /boot/loader/entries
sudo nano linux-cachyos.conf
```
And remove `splash` from the options.

Disable entry selection to save 5 seconds on each boot.
```bash
su
cd /boot/loader
sudo nano loader.conf
```
And set `timeout 0` to not show the entry-selection unless you press a key on boot.

### setup git
```bash 
git config --global credential.helper store
git config --global user.email "<email>"
git config --global user.name "<name>"
```

## Installing dependencies
use the ```run``` script to install dependencies
```bash
./run.sh
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
