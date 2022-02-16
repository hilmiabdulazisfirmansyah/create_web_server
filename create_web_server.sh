sudo apt update
sudo apt install apache2
apache2 -version
sudo ufw app list
sudo ufw allow 'Apache'
sudo ufw status
echo "Masukkan Nama Domain"
read DOMAIN
sudo mkdir -p /var/www/$DOMAIN/html
echo -e "<html>\n<head>\n<title>Welcome to $DOMAIN</title>\n</head>\n<body>\n<h1>You are running $DOMAIN on Ubuntu 20.04!</h1>echo -e "<VirtualHost *:80>\nServerAdmin admin@$DOMAIN\nServerName $DOMAIN\nServerAlias $DOMAIN\nDocumentRoot /var/www/$DOMAI>sudo a2ensite $DOMAIN.conf
sudo a2dissite 000-default.conf
sudo systemctl restart apache2
q
sudo apache2ctl configtest
echo -e "ServerName $DOMAIN" >> /etc/apache2/conf-available/servername.conf
sudo a2enconf servername
sudo apache2ctl configtest
sudo systemctl start apache2
q
echo "Coba Browsing !"
hostname -I
