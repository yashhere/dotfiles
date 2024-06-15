# Add the official Docker repo
yay -S --needed docker docker-buildx docker-compose docker-rootless-extras containerd lazydocker

# Give this user privileged Docker access
sudo usermod -aG docker ${USER}

# Use local logging driver - it's more efficient and uses compression by default.
# TODO: check for /etc/docker if it is present or not
echo '{"log-driver":"local","log-opts":{"max-size":"10m","max-file":"5"}}' | sudo tee /etc/docker/daemon.json > /dev/null