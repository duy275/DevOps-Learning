#!bin/bash
mkdir -p /root/.ssh
sleep 3
if [ -f /tmp/ssh_share/ubuntu1_key.pub ]; then
	cat /tmp/ssh_share/ubuntu1_key.pub >> /root/.ssh/authorized_keys
	echo "Authorized ubuntu1 key added..."
fi

service ssh start
echo "SSH ubuntu1 ready!"
exec nginx -g "daemon off;"
