#!/bin/sh

PS3='Select Desktop Environment: '

select item in "GNOME" "KDE" "Xfce"
do
    case "$REPLY" in
        1)
            pacman -Sy
            pacman -S gnome gnome-tour gnome-todo drawing gnome-tweaks evolution highlight evolution-spamassassin shotwell firefox papirus-icon-theme polari unrar noto-fonts-cjk noto-fonts-emoji noto-fonts ttf-hack ibus system-config-printer lollypop libgpod qt5ct kvantum gnome-software-packagekit-plugin
            pacman -Rnn epiphany gnome-music gnome-photos
            cp arch-gdm-logo.png /usr/share/pixmaps
            cp ./env/environment-gnome /etc/environment
            cp ./src/90_arch.gschema.override /usr/share/glib-2.0/schemas
            systemctl enable gdm
            ;;
        2)
            pacman -Sy
            pacman -S plasma plasma-wayland-session dolphin dolphin-plugins firefox konsole ark kate elisa vlc kde-pim-meta unrar noto-fonts-cjk noto-fonts-emoji noto-fonts ttf-hack fcitx5 fcitx5-gtk kcm-fcitx5 print-manager flatpak packagekit-qt5
            pacman -Rnn kde-pim-meta itinerary
            cp ./src/kde.conf /usr/lib/sddm/sddm.conf.d
            cp ./env/environment-kde /etc/environment
            systemctl enable sddm
            ;;
        3)
            pacman -Sy
            pacman -S xfce4 xfce4-screenshooter xed xreader firefox engrampa papirus-icon-theme mate-calc xfce4-taskmanager xfce4-terminal thunar-archive-plugin shotwell vlc evolution highlight evolution-spamassassin rhythmbox libgpod gvfs xdg-user-dirs lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings qt5ct kvantum arc-solid-gtk-theme flatpak
            cp ./src/lightdm.conf /etc/lightdm/lightdm.conf
            cp ./env/environment-etc /etc/environment
            systemctl enable lightdm
            ;;
        *)
            exit
            ;;
    esac
 
    echo
done
