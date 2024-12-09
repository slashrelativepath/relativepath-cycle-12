# There should be an ssh key pair
if (test-path ./id_ed25519) {
  echo 'ssh keypair already exists...'
} else {

}

# There should be a VM called webserver
if (multipass info webserver) {
  echo "VM webserver already exists"
} else {
  echo "Creating webserver VM..."
  multipass launch --name webserver --bridged
}
