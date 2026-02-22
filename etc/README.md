# ETC Dotfiles

## KeyD

Remaps keys through the use of "levels."

- Dependencies: https://github.com/rvaiya/keyd
- File location: `/etc/keyd/default.conf`

``` bash
sudo pacman -S keyd
sudo ln -s $PWD/default.conf /etc/keyd/default.conf
sudo systemctl enable --now keyd.service
```

## logid.cfg 

The `logiops` service configuration file for remapping LogiTech mice.

- Dependencies: https://github.com/PixlOne/logiops
- File location: `/etc/logid.cfg`

``` bash
yay -S logiops
sudo ln -s $PWD/logid.conf /etc/logid.conf
sudo systemctl enable --now logid.service
```

## X11 > xorg.conf.d > 20-evdi.conf | DisplayLink

:warning: DisplayLink pkg is out-of-date as of 2023-03-15

- Dependencies: yay -S evdi-git displaylink
- File location: `/etc/X11/xorg.conf.d/20-evdi.conf`
