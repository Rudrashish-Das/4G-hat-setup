mkdir -p /home/$(whoami)/igdrones/startup/
cp ./scripts/ssh-tunnel-ngrok.sh -t /home/$(whoami)/igdrones/startup/
sudo cp ./scripts/ssh-tunnel-ngrok.service -t /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable ssh-tunnel-ngrok.service
sudo systemctl --all | ssh-tunnel-ngrok.service
sudo systemctl start ssh-tunnel-ngrok.service