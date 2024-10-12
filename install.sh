#!/bin/bash

# Update package list and install necessary dependencies
sudo apt update
sudo apt upgrade -y
sudo apt install -y build-essential curl wget libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev git

# Install NVM (Node Version Manager)
echo "Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash

# Source NVM script to activate it
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Install the latest version of Node.js
echo "Installing latest version of Node.js..."
nvm install node

# Set the latest Node.js version as the default
nvm use node
nvm alias default node

# Verify Node.js and npm installation
node -v
npm -v

# Install the latest version of Python
echo "Installing Python..."
sudo apt install -y python3 python3-dev python3-venv python3-pip

# Ensure the latest version of pip
echo "Upgrading pip..."
python3 -m pip install --upgrade pip

# Verify Python and pip installation
python3 --version
pip3 --version

# Install Git
echo "Installing Git..."
sudo apt install -y git

# Verify Git installation
git --version

# Install some additional tools (Optional)
echo "Installing additional tools..."
sudo apt install -y htop vim tmux

echo "Installation complete! Your environment is set up."

# Reminder to reload the shell
echo "Please restart your terminal or run 'source ~/.bashrc' to activate changes."
