#SECURE-SSH.SH
#AUTHOR RYAN
#Creates a new ssh user called $1
#Adds a public key to that users authorized keys file
#Removes roots ability to ssh in

useradd sys265
mkdir /home/sys265/.ssh
cp linux/public-keys/sys265.pub /home/sys265/.ssh/authorized_keys
chmod 700 /home/sys265/.ssh
chmod 600 /home/sys265/.ssh/authorized_keys
chown -R sys265:sys265 /home/sys265/.ssh
