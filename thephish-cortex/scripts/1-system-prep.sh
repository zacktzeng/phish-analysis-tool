sudo apt update && sudo apt upgrade -y
# allow non-root docker access later
sudo apt install -y curl git apt-transport-https ca-certificates gnupg

# temporary (until next reboot)
sudo sysctl -w vm.max_map_count=262144

# persistent
echo "vm.max_map_count=262144" | sudo tee /etc/sysctl.d/99-elasticsearch.conf
sudo sysctl --system

# # Optional: increase file watchers if you have many files
# echo "fs.inotify.max_user_watches=524288" | sudo tee /etc/sysctl.d/99-inotify.conf
# sudo sysctl --system
