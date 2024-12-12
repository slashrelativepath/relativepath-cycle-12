# There should be an ssh key pair
if (test-path ./id_ed25519) {
  echo 'ssh keypair already exists...'
} else {
  echo "Generating keys.."
  ssh-keygen -t ed25519 -f './id_ed25519' -N `"`"
}

# There should be a cloud init file

# There should be a VM called webserver
if (multipass info webserver) {
  echo "VM webserver already exists"
} else {
  echo "Creating webserver VM..."
  multipass launch --name webserver --cloud-init ./cloud-init.yaml --bridged
}
