notice "Install xmonad dependencies"
sudo apt-get install xmonad unity-2d-panel

notice "Create xmonad config file"
mkdir ~/.xmonad -v
ln -vnfs "`pwd`/xmonad.hs" ~/.xmonad/xmonad.hs

notice "Link sessions config files"
sudo ln -vnfs "`pwd`/share/xmonad.desktop" /usr/share/applications/xmonad.desktop
sudo ln -vnfs "`pwd`/share/xmonad.session" /usr/share/gnome-session/sessions/xmonad.session
sudo ln -vnfs "`pwd`/share/xmonad-gnome-session.desktop" /usr/share/xsessions/xmonad-gnome-session.desktop
