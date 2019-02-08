ssh-keygen -q -t rsa -P "" -f /root/.ssh/id_rsa 
cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys
service ssh restart
hadoop dfs -mkdir -p /user/hive/warehouse
hadoop dfs -mkdir /tmp
hadoop dfs -chmod g+w /user/hive/warehouse
hadoop dfs -chmod g+w /tmp 
bash