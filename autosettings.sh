if [ -d "$HOME/.config/Thunar" ]; then
  rm -fr $HOME/.config/Thunar
fi
if [ -d "$HOME/.config/alacritty" ]; then
  rm -fr $HOME/.config/alacritty
fi
if [ -d "$HOME/.config/qtile" ]; then
  rm -fr $HOME/.config/qtile
fi
if [ -d "$HOME/.config/rofi" ]; then
  rm -fr $HOME/.config/rofi
fi
cd ConfigsArchLinux
if [ -d "Configs/Thunar" ]; then
  mv Configs/Thunar $HOME/.config
fi
mv Configs/alacritty $HOME/.config
mv Configs/qtile $HOME/.config
mv Configs/rofi $HOME/.config
mv Images $HOME/
cp Configs/accels.scm $HOME/.config
cp Configs/alacritty.yml $HOME/.config
cp Configs/autostart.sh $HOME/.config
cp Configs/config $HOME/.config
cp Configs/config.py $HOME/.config
cp Configs/mimeapps.list $HOME/.config
cp Configs/theme.py $HOME/.config
cp Configs/uca.xml $HOME/.config
cp .bashrc $HOME/
cp cbg.sh $HOME/
sudo pacman -Syy figlet noto-fonts-emoji
cd $HOME
figlet -c Fin!!!
