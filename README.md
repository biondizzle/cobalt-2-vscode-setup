# Cobalt2 VScode Setup

This is just my way of installing and setting up my favorite theme.

## Install required fonts and styles
```
git clone https://github.com/biondizzle/cobalt2-vscode-setup.git
cd cobalt2-vscode-setup
chmod +x install.sh
./install.sh
```

## Install required VSCode extensions
* Install Custom CSS and JS Loader `https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css`
* Install Cobalt2 Theme Official `https://marketplace.visualstudio.com/items?itemName=wesbos.theme-cobalt2`


## Make your VSCode settings.js look something like this. Don't forget to adjust the directory
```
{
    "workbench.colorTheme": "Cobalt2",
    "editor.fontFamily": "Operator Mono, Menlo, Monaco, 'Courier New', monospace",
    "editor.fontSize": 17,
    "editor.lineHeight": 25,
    "editor.letterSpacing": 0.5,
    "editor.fontWeight": "400",
    "editor.cursorStyle": "line",
    "editor.cursorWidth": 5,
    "editor.cursorBlinking": "solid",
    "vscode_custom_css.imports": [
        "/home/mike/.cobalt2/styles.css"
    ],
    "editor.renderWhitespace": "all",
    "explorer.confirmDelete": true,
    "files.trimTrailingWhitespace": true,
    "atomKeymap.promptV3Features": true,
    "editor.multiCursorModifier": "ctrlCmd",
    "editor.formatOnPaste": true
}
```