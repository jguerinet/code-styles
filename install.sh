#!/bin/bash
# Installs Julien Guerinet's IntelliJ configs into your user configs.

echo "Installing Julien Guerinet's IntelliJ configs..."

CONFIGS="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/configs"

for i in $HOME/Library/Preferences/IntelliJIdea*  \
         $HOME/Library/Preferences/IdeaIC*        \
         $HOME/Library/Preferences/AndroidStudio* \
         $HOME/.IntelliJIdea*/config              \
         $HOME/.IdeaIC*/config                    \
         $HOME/.AndroidStudio*/config
do
  if [[ -d $i ]]; then

    # Install codestyles
    mkdir -p $i/codestyles
    cp -frv "$CONFIGS/codestyles"/* $i/codestyles

    # Install inspections
    mkdir -p $i/inspection
    cp -frv "$CONFIGS/inspection"/* $i/inspection

    # Install options
    mkdir -p $i/options
    cp -frv "$CONFIGS/options"/* $i/options

    # Install keymaps
    mkdir -p $i/keymaps
    cp -frv "$CONFIGS/keymaps"/* $i/keymaps
  fi
done

echo "Done."
echo ""
echo "Restart IntelliJ and/or AndroidStudio, go to preferences, and apply 'Guerinet'."
echo "You can also apply the 'Guerinet-Windows' or 'Guerinet-Mac' keymap."