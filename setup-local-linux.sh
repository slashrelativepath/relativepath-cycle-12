# nano should be installed
if (which nano)
then 
  echo 'nano is already installed'
else 
  echo 'installing nano'
  sudo apt install -y nano
fi

# git should be installed
if (git --version)
then
  echo 'git is already installed'
else
  echo 'installing git'
  sudo apt install -y git
fi

# snap should be installed
if (which snap)
then
  echo 'snap is already installed'
else
  echo 'installing snap'
  sudo apt install -y snapd
  echo 'snap has been installed'
fi

# multipass should be installed
if (multipass version)
then
  echo 'multipass already installed'
else
  echo 'installing multipass'
  sudo snap install multipass
fi
