apt update
apt install sudo -y
sudo apt update
sudo apt install git -y
sudo apt install python3 -y
sudo apt install python3.12-venv -y
sudo apt install python3.10-venv -y
sudo apt install make -y
sudo apt install g++ -y
sudo apt install -y python3-dev

python3 -m venv venv
source venv/bin/activate

git clone https://github.com/Amithabh-A/CryptGPU.git
git clone https://github.com/pytorch/csprng.git

cd csprng
pip install torch
python3 setup.py install
..

cd CryptGPU
pip install -r requirements_source.txt
python3 setup.py install
..
