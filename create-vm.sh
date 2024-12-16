# An ssh keypair should exist
if (stat ./id_ed25519)
then
  echo "ssh key pair already exists"
else 
  echo "Creating ssh key pair"
  ssh-keygen -t ed25519 -f ./id_ed25519 -N ''
fi

# cloud-init.yaml file should exist
if (grep "$(cat id_ed25519.pub)" cloud-init.yaml)
then
  echo 'cloud-init.yaml file already exists'
else
  echo 'creating cloud-init.yaml'
  cat <<-EOF > cloud-init.yaml
#cloud-config
users:
  - name: relativepath
    sudo: ["ALL=(ALL) NOPASSWD:ALL"]
    shell: /bin/bash
    ssh_authorized_keys:
      - $(cat id_ed25519.pub)
EOF
fi

# A vm called "webserver" should exist
if (multipass info webserver)
then
  echo "The webserver vm already exists."
else 
  echo "Creating the webserver vm."
  multipass launch --name webserver --cloud-init cloud-init.yaml
fi


