sudo apt update
sudo apt install -y vim 
sudo apt install python3.10-venv -y
sudo apt install make -y
sudo apt install g++ -y
sudo apt install -y python3-dev

python3 -m venv venv
source venv/bin/activate

git clone https://github.com/Amithabh-A/CrypTen.git
git clone https://github.com/Amithabh-A/CryptGPU.git
git clone https://github.com/pytorch/csprng.git
cd CrypTen
pip install -r requirements.txt
pip install .
cp -r configs ../venv/lib/python3.10/site-packages/

make
cp -r configs venv/lib/python3.10/site-packages/
cd ../csprng
python3 setup.py install
pip install .
cd ../CryptGPU
python3 setup.py install
pip install -r requirements.txt
pip install .
cd ../CrypTen
make
