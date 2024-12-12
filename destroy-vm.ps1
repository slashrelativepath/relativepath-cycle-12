# Destroy webserver VM
# Delete the keys
# Delete the cloud-init
rm id_ed25519*
rm cloud-init.yaml
multipass delete webserver --purge
