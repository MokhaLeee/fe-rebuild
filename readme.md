# FE-Rebuild

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://makeapullrequest.com)

A working-in-process project to rebuild a minimum system of FireEmblemGBA from the source code.

## Build

Make sure DEVKITPRO insalled:

```bash
wget https://apt.devkitpro.org/install-devkitpro-pacman
chmod +x ./install-devkitpro-pacman
sudo ./install-devkitpro-pacman
sudo dkp-pacman -S gba-dev

# Export vars
echo "export DEVKITPRO=/opt/devkitpro" >> ~/.bashrc
echo "export DEVKITARM=\${DEVKITPRO}/devkitARM" >> ~/.bashrc
echo "export DEVKITPPC=\${DEVKITPRO}/devkitPPC" >> ~/.bashrc
echo "export PATH=\${DEVKITPRO}/tools/bin:\$PATH" >> ~/.bashrc
source ~/.bashrc
```

Put the following roms to `./roms/` dir:

- fe6.gba
- fe7j.gba
- fe8u.gba

Then

```
make
```
