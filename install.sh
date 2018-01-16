# mtso 2018
# Install dev env in ubuntu
# FIXME: Test this on an actual ubuntu animal

sudo apt-get update
sudo apt-get install apt-transport-https

# Install curl
sudo apt-get install curl

# Install Go
GO_DOWNLOAD=go1.9.2.linux-amd64.tar.gz
curl -O https://dl.google.com/go/$GO_DOWNLOAD
sha256sum $GO_DOWNLOAD
tar xvf $GO_DOWNLOAD
sudo chown -R root:root ./go
sudo mv go /usr/local

# FIXME: Set GOPATH
# https://www.digitalocean.com/community/tutorials/how-to-install-go-1-6-on-ubuntu-16-04

# FIXME: Check this hash and fail Go install otherwise
# de874549d9a8d8d8062be05808509c09a88a248e77ec14eb77453530829ac02b

# Install rust
# FIXME: Download script into _install_rust.sh for safety.
echo 'y' | $(curl https://sh.rustup.rs -sSf | sh -s)
