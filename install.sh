cd ..
mkdir Downloads 
cd Downloads
# install Anaconda

wget https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh
chmod +x Anaconda3-2019.10-Linux-x86_64.sh
./Anaconda3-2019.10-Linux-x86_64.sh

# install Docker 

sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io
 
sudo docker run hello-world

# add git + cmake  
sudo apt-get update 
sudo apt-get install git cmake build-essentials

# install rclone 

curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip

unzip rclone-current-linux-amd64.zip

cd rclone-*-linux-amd64

sudo cp rclone /usr/bin/
sudo chown root:root /usr/bin/rclone
sudo chmod 755 /usr/bin/rclone
sudo cp rclone.1 /usr/local/share/man/man1/
sudo mandb
