<# Installing YCM #>
# Description: Installs YCM components

echo "You'll need to of opened Vim and run :PlugInstall"
echo "for YCM to install."
$in = "Press enter to continue..."

### YCM Compilation ###
# Compile & Install
python $VPLUG\YouCompleteMe\install.py --all

