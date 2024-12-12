# There should be an ssh key pair
if (test-path ./id_ed25519) {
  echo "SSH keypair already exists."
} else {
  echo "Generating SSH keys..."
  ssh-keygen -t ed25519 -f './id_ed25519' -N '""'
}

# There should be a cloud init file
if (test-path ./cloud-init.yaml) {
  echo "Cloud init already exists."
} else {
  echo "Creating cloud init..."
  # You'll need to create the cloud init file here.
}

# There should be a VM called webserver
if (multipass info webserver) {
  echo "VM webserver already exists"
} else {
  echo "Creating webserver VM..."
  multipass launch --name webserver --cloud-init ./cloud-init.yaml --bridged
}
