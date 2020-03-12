#!/bin/sh
cd "$PWD/agents-linux/"
mkdir "$PWD/agents-linux/"
curl https://github.com/rstriklwlg/Install/blob/master/agents-linux/agent_installer.sh
curl https://github.com/rstriklwlg/Install/blob/master/agents-linux/cafile.pem
curl https://github.com/rstriklwlg/Install/blob/master/agents-linux/client.crt
curl https://github.com/rstriklwlg/Install/blob/master/agents-linux/client.key
curl https://github.com/rstriklwlg/Install/blob/master/agents-linux/config.json
chmod +x agent_installer.sh
sh ./agent_installer.sh install_start
systemctl enable ir_agent.service
systemctl start ir_agent.service
systemctl status ir_agent.service

#sudo sh ./agents-linux/agent_wrapper_installer.sh