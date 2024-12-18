# Nginx webserver should be installed
if (dpkg -s nginx)
then 
  echo "nginx already installed"
else 
  echo "installing nginx"
  sudo apt install -y nginx
fi

# Nginx webserver should be running
if (systemctl is-active nginx.service)
then
  echo "nginx already running"
else
  echo "restarting nginx"
  sudo systemctl restart nginx
fi
