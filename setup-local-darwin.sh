# brew should be installed

# nano should be installed
if (which nano)
then 
  echo 'nano is already installed'
else 
  echo 'installing nano'
  brew install nano
fi

# git should be installed
if (which git)
then 
  echo 'git is already installed'
else 
  echo 'installing git'
  brew install git
fi

# multipass should  be installed
if (multipass version)
then 
  echo 'multipass is installed'
else 
  echo 'installing multipass'
  brew install multipass
fi
