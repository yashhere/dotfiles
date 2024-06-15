# Exit immediately if a command exits with a non-zero status
set -e

# Needed for all installers
# sudo pacman -Syy
# sudo pacman -S curl git unzip tar

# Run installers
for script in ~/dotfiles/install/*.sh; do source $script; done

# Upgrade everything that might ask for a reboot last
# sudo pacman -Syu
