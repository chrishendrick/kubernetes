# uncomment as needed - if you get package not found errors
# sudo add-apt-repository main
# sudo add-apt-repository universe
# sudo add-apt-repository restricted
# sudo add-apt-repository multiverse
# sudo apt update


# install kops
curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/bin/kops

# install python and pip
sudo apt-get install python3
python3 --version
sudo apt-get install python3-pip
pip3 --version

# install AWS cli
pip3 install awscli --upgrade --user
aws --version
