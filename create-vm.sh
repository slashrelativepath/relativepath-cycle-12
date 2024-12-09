# An ssh keypair should exist
if (stat id_ed25519)
then
  echo "ssh key pair already exists"
else 
  echo "Creating ssh key pair"
fi

# A vm called "webserver" should exist
if (multipass info webserver)
then
  echo "The webserver vm already exists."
else 
  echo "Creating the webserver vm."
  multipass launch --name webserver
fi


