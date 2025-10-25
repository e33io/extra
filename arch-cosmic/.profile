# ~/.profile for Arch Linux

# Set PATH to include user's private ~/bin if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# Set PATH to include user's private ~/.local/bin if it exists
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Set Qt app scaling
export QT_AUTO_SCREEN_SET_FACTOR=0
export QT_SCALE_FACTOR=1
export QT_FONT_DPI=96
