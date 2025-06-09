# ~/.profile for Arch Linux

# Set PATH to include user's private ~/bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Set PATH to include user's private ~/.local/bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Run X client utilities
if [ ! -t 0 ] ; then
    # Set root background color
    xsetroot -solid "#0b2f5a" &
    # Load ~/.Xresources
    xrdb ~/.Xresources &
fi

# Set HiDPI scaling (based on Xft.dpi: 192)
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5
export QT_AUTO_SCREEN_SET_FACTOR=0
export QT_SCALE_FACTOR=2
export QT_FONT_DPI=96

# Set Qt theming
export QT_QPA_PLATFORMTHEME=qt5ct
