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

# echo -e "\n\n\n\n\n\n\n\n\n\n"
# make 
# echo -e "\n\n\n\n\n\n\n\n\n\n"

python3 -m venv venv
source venv/bin/activate

# echo -e "\n\n\n\n\n\n\n\n\n\n"
# make 
# echo -e "\n\n\n\n\n\n\n\n\n\n"

git clone https://github.com/Amithabh-A/CrypTen.git
git clone https://github.com/Amithabh-A/CryptGPU.git
git clone https://github.com/pytorch/csprng.git
cd CrypTen
pip install -r requirements.txt
pip install .
cp -r configs ../venv/lib/python3.10/site-packages/
cp -r configs ../venv/lib/python3.12/site-packages/

make
cp -r configs venv/lib/python3.10/site-packages/
cd ..

# echo -e "\n\n\n\n\n\n\n\n\n\n"
# make
# echo -e "\n\n\n\n\n\n\n\n\n\n"

cd csprng
python3 setup.py install



pip install setuptools wheel
python setup.py clean --all
pip install build
python -m build
pip install . -vvv

cd ..

# echo -e "\n\n\n\n\n\n\n\n\n\n"
# make
# echo -e "\n\n\n\n\n\n\n\n\n\n"

cd CryptGPU
python3 setup.py install
pip install -r requirements.txt
pip install .

cd ..

# echo -e "\n\n\n\n\n\n\n\n\n\n"
# make
# echo -e "\n\n\n\n\n\n\n\n\n\n"

cd CrypTen
pip install -r requirements.txt
pip install .
cp -r configs ../venv/lib/python3.10/site-packages/
cp -r configs ../venv/lib/python3.12/site-packages/

# cd ..
# echo -e "\n\n\n\n\n\n\n\n\n\n"
# make
# echo -e "haha done\n\n\n\n\n\n\n\n\n\n"