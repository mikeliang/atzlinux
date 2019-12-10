# https://github.com/AppImage/appimaged

appimaged

appimaged is an optional daemon that watches locations like ~/bin and ~/Downloads for AppImages and if it detects some, registers them with the system, so that they show up in the menu, have their icons show up, MIME types associated, etc. It also unregisters AppImages again from the system if they are deleted. Optionally you can use a sandbox if you like: If the firejail sandbox is installed, it runs the AppImages with it.
Install

A precompiled version can be found in the last successful Travis CI build, you can get it with:

wget "https://github.com/AppImage/appimaged/releases/download/continuous/appimaged-x86_64.AppImage"
chmod a+x appimaged-x86_64.AppImage

Usage in a nutshell:

./appimaged-x86_64.AppImage --install

Or, if you are on a deb-based system:

# Download the .deb file from https://github.com/AppImage/appimaged/releases
sudo dpkg -i appimaged_*.deb
systemctl --user add-wants default.target appimaged
systemctl --user start appimaged

