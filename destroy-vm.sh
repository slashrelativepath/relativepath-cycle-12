
# delete ssh keys
rm ./id_ed25519* 

# delete webserver
multipass delete webserver --purge

rm cloud-init.yaml
