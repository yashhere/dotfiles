if ! command -v yay &> /dev/null
then
    mkdir /tmp/yay
    cd /tmp/yay
    curl -OJ 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=yay'
    makepkg -si
    cd
    rm -rf /tmp/yay
fi
