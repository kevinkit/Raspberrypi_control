read -p "Achtung! Es werden Änderungen vorgenommen, die speziell dafür geeignet sind , wenn man den Pi über VNC betreiben will - FALLS ER ALS SERVER BENTUTZT WIRD SIND DIESE EINSTELLUNGEN NICHT ZU EMPFEHLEN!!! Beenden??(j/n)? " response
if [ "$response" == "j" ]; then
	echo "Beendet"
	exit
fi
echo installing vnc
sudo apt-get install tightvncserver
echo installing preload
sudo apt-get install preload
echo changes to preload
sudo sed -i 's/sortstrategy = 3/sortstrategy = 0/g' /etc/preload.conf
echo starting vncserver
tightvncserver

