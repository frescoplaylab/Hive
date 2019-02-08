ssh-keygen -q -t rsa -P "" -f /root/.ssh/id_rsa 
cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys
service ssh restart 
bash
