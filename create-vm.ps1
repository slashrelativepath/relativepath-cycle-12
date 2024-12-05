# There should be a VM called webserver

if (multipass info webserver) {
  echo "VM webserver already exists"
} else {
  echo "Creating webserver VM..."
  multipass launch --name webserver
}
