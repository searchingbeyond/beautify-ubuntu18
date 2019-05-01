#!/bin/bash
# 美化ubuntu18, 切换为root身份

# install gnome
sudo apt-get install -y gnome-tweak-tool
sudo apt-get install -y gnome-shell-extensions
sudo apt-get install -y gnome-shell-extension-dashtodock
sudo apt-get install -y wine-stable

# download resouces
cd /usr/local/src/beautify-ubuntu18

mv themes_icons/Sierra* /usr/local/share/themes
mv themes_icons/MacOSX* /usr/local/share/icons

# install themes
cd /usr/local/share/themes
xz -d Sierra-dark.tar.xz
tar xf Sierra-dark.tar
xz -d Sierra-light.tar.xz
tar xf Sierra-light.tar

# install icons
cd /usr/local/share/icons
xz -d MacOSX-dark-icon-theme.tar.xz
tar xf MacOSX-dark-icon-theme.tar
xz -d MacOSX-icon-theme.tar.xz
tar xf MacOSX-icon-theme.tar

# start to install applications
cd /usr/local/src/beautify-ubuntu18/applications

# install chrome browser
dpkg -i google-chrome-stable_current_amd64.deb

# install vs code
dpkg -i code_1.33.0-1554390824_amd64.deb

# install sogou input
dpkg -i sogoupinyin_2.2.0.0108_amd64.deb
# resolve dependency
apt-get install -f -y
# install again
dpkg -i sogoupinyin_2.2.0.0108_amd64.deb

# install shadowsocks
cp -r shadowsocks /usr/local/shadowsocks
# add desktop icons
cp -r desktops/*.desktop /usr/share/applications

