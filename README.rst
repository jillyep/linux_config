*******************
Linux Configuration
*******************
This reporsitory contains scripts, files, and data used to configure a Linux system.
In this instance, the configuration files support an Arch Linux distribution; however,
the files, directories and scripts are applicable to any flavor of Linux

Contributing
############
Pull requests are welcome.  For major changes, please open an issue first to discuss
what you would like to change.

License
#######
This data is not held under License

Installation
############
In order to download this repository from github, follow these instructions

1. It is assumed that the user has already installed a linux kernel on their
   computer prior to cloning this repository.  The instructions for how
   to install Arch Linux are contained at Installation/ArchInstallarion.rst.
   Other distributions such as Ubuntu, PopOS, or Manjaro can be installed with a
   typical installer that will walk the user through all steps.
2. Ensure you have .git installed on your computer
3. At your desired location create a directory titled ``Linux_Config``.  While the
   user can place this directory anywhere, it is recommended that it be placed
   in the users home directory
4. Open a terminal (Bash, zsh) and cd to the ``Linux_Config`` directory and type
   ``clone https://github.com/Jon-Webb-79/Linux_Config.git Linux_Config``

Post Installation
#################
This post installation process assumes that the user has installed Arch Linux.  However,
all of the steps are applicable to other distributions of Linux; however, the user
will need to use the appropriate package manager, or possibly download packages
directly from source.  In this case, the package managers are pacman to download
traditional Arch packages and yay to download packages from the Arch User Repository (AUR).

Code Development Directories
****************************
Manually move the ``Code_Dev`` directory into the users home directory

Install Git
***********
Install git with the following command;

``$ sudo apt install git``

Install NeoVim
**************
Install NeoVim with the following command

``$ sudo apt install neovim``

Install and configure related packages with the following commands

``$ curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim``

``$ sudo apt install nodejs``

``$ sudo apt install npm``

``$ sudo apt install python3``

``$ sudo apt install python3-pip``

``$ pip3 install python-vim``

``$ pip3 install jedi``

``wget https://download.jetbrains.com/fonts/JetBrainsMono-1.0.0.zip``

``unzip JetBrainsMono-1.0.0.zip``

``sudo apt-get install -y fonts-powerline``

Verify that NeoVim was properly installed 

``$ nvim <filename>``

Determine if you have a .config folder. This instruction assumes the user is in the home directory.

``$ ls -la``

If you do not have a .config folder, create one

``$ mkdir .config``

``$ yarn install --ignore-engines``

``$ yarn build``

Install code development packages.

``$ cd ~/.config/nvim``

``$ nvim init.vim``

Within the init.vim file install the apprioriate CoC commands

``:CocInstall coc-python``

``:CocInstall coc-clangd``

Install tmux
************

Install tmux with the following command

``$ sudo apt install tmux``

Move the ``tmux.conf`` file from the cloned directory to the users home directory. Verify that powerline status is working by typing the following command and seeing if the powerline bar appears at the bottom of the tmux window as it opens.

``$ tmux``

Exit tmux

``$ tmux kill-session``

Clone the tmux plugin manager

``$ git clone https://github.com/tmux-plugins/tpm/tpm ~/.tmux/plugins/tpm``

Open a tmux session and type ``Cntrl-A-i`` to install plugins.

Set Up Bash
***********
Move the ``.bashrc`` and ``.bash_profile`` from the cloned directory to the users home directory. 

Create a ``bash_scripts`` directory in the ``.config`` directory.

``$ mkdir ~/.config/bash_scripts``

Copy the contents of the cloned bash_scripts directory to the new one. Close the terminal and re-open it to see if the powerline status bar exists in the lower portion of the terminal. If it has appeared then all steps have been executed correctly. If not, then the user may need to repeat some steps.

Move the ``arduino_files``, ``c_files``, ``c++_files``, and ``py_files`` directories from the clones copy to the new .config directory. Ensure bash is working properly by typing the following command to see if it creates a python directory

``$ create_py_dr``

If the python directory is created appropriately then delete the directory with the following command.

``$ delete_py_dir``

Set Up ZShell
*************

Install Zshell

``$ sudo pacman -S zsh``

Move the ``.zshrc`` and ``.zprofile`` files from the cloned directory to the users home directory. Move the ``zsh_scripts`` directory from the cloned copy to the users ``.config`` directory. Open a fresh terminal and type ``zsh`` to ensure it is working properly. If it prompts you to configure the zsh terminal, enter the option to skip configuration.

Set zsh as the default terminal

``$ chsh -s /usr/bin/zsh jillbobaggins``

Install Misc. Tools
*******************

Further instructions on how to use these and many other packages is included in the Troubleshooting directory. 

Install Google Earth:
``$ cd /temp``
``$ mkdir google-earth && cd google-earth``
``$ wget https://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb``
``$ sudo dpkg -i google-earth-stable*.deb``

``$ sudo apt install notepadqq``

``$ sudo apt install tree``

``$ sudo apt install htop``

``$ sudo apt install rync`` (Note: this should already be installed on Pop OS)

``$ sudo apt install fail2ban``

``$ sudo apt install neofetch``

Install Master PDF Editor:
##########################
``$ wget https://code-industry.net/public/master-pdf-editor-5.4.38-qt5.amd64.deb``
``$ sudo apt install ./master-pdf-editor*.deb``

Check to see whether ssh is already installed

``$ which ssh``

If ssh is not installed, install it:

``$ sudo apt install ssh``

Install Arduino Support
***********************

Install Arduino packages. This only applies if you have an Arduino board. 

``$ sudo apt install arduino``

Install Arduino-CLI:
####################

Download ``tar.gz`` file from Arduino website:
``$ wget -qO arduino-cli.tar.gz https://downloads.arduino.cc/arduino-cli/arduino-cli_latest_Linux_64bit.tar.gz``

Extract ``arduino-cli`` executable files from ``/usr/local/bin directory``:
``$ sudo tar xf arduino-cli.tar.gz -C /usr/local/bin arduino-cli``

Remove unnecessary ``tar.gz`` file:
``$ rm -rf arduino-cli.tar.gz``

Install Extra Code Dev Packages
*******************************

Install relevant packages for software development

``$ sudo apt install googletest``

``$ sudo apt install clang``

``$ sudo apt install cmake``

``$sudo apt install code``

Install github-cli:
``$ curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null``
``$ sudo apt update``
``$ sudo apt install gh``


``$ sudo apt install doxygen``






