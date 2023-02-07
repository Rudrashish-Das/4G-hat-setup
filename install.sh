#!/bin/bash
mkdir -p /home/$(whoami)/igdrones/startup/
cp ./scripts/ssh-tunnel-ngrok.sh -t /home/$(whoami)/igdrones/startup/
sudo cp ./scripts/ssh-tunnel-ngrok.service -t /etc/systemd/system/
sudo chmod +x /home/$(whoami)/igdrones/startup/ssh-tunnel-ngrok.sh
sudo systemctl daemon-reload
sudo systemctl enable ssh-tunnel-ngrok.service
sudo systemctl --all | grep ssh-tunnel-ngrok.service
sudo systemctl start ssh-tunnel-ngrok.service

