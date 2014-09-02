touch vnc.sh
echo "#!/bin/sh" >> vnc.sh
echo "vncserver :1 -geometry 1280x720 -depth 24" >> vnc.sh
chmod u+x vnc.sh
