#!/usr/bin/env bash




echo "--- Hello there!... Let's get to work. Installing MERN STACK now. ---"

echo "--- Updating packages list ---"
sudo apt-get update

# echo "--- MySQL time ---"
# sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
# sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# echo "--- Installing base packages ---"
# sudo apt-get install -y vim curl python-software-properties

# echo "--- We want the bleeding edge of PHP, right master? ---"
# sudo add-apt-repository -y ppa:ondrej/php5

# echo "--- Installing MySQL ---"
# sudo apt-get install -y mysql-server-5.5 php5-mysql

# echo "--- Installing Git ---"
# sudo apt-get install -y git-core curl wget

echo "--- Installing Node ---"
   ##install nodesjs
echo "==> >>>> INSTALL NODE"
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# apt-get update
apt-get install -y nodejs

echo "--- Installing Express ---"
sudo npm install -g express  --save
npm install -g nodemon --save

echo "--- ALL DONE!!! ---"