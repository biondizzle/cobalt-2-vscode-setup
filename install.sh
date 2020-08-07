#!/bin/sh

echo "Installing Powerline Fonts From https://github.com/powerline/fonts"

git clone https://github.com/powerline/fonts.git
chmod +x fonts/install.sh
fonts/install.sh

echo "Installing Required Fonts"

# Set source and target directories
required_fonts_dir="$( cd "$( dirname "$0" )" && pwd )/required-fonts"

if test "$(uname)" = "Darwin" ; then
  # MacOS
  font_dir="$HOME/Library/Fonts"
else
  # Linux
  font_dir="$HOME/.local/share/fonts"
  mkdir -p $font_dir
fi

# Copy all fonts to user fonts directory
echo "Copying fonts..."
find "$required_fonts_dir" \( -name "*.[ot]tf" -or -name "*.pcf.gz" \) -type f -print0 | xargs -0 -n1 -I % cp "%" "$font_dir/"

# Reset font cache on Linux
if which fc-cache >/dev/null 2>&1 ; then
    echo "Resetting font cache, this may take a moment..."
    fc-cache -f "$font_dir"
fi

echo "Required fonts installed to $font_dir"

cobalt2_dir = "$HOME/.cobalt2/"

# Make directory for styles
mkdir -p $cobalt2_dir

cp styles.css $cobalt2_dir

echo "Styles css copied to $cobalt2_dir"

echo "All required files installed. Please follow the rest of the README.md instructions to finish Cobalt2 setup"