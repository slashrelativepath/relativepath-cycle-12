
# A vm called "webserver" should exist
if (multipass info webserver)
then
  echo "The webserver vm already exists."
else 
  echo "Creating the webserver vm."
  multipass launch --name webserver
fi


