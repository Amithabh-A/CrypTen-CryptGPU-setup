python3 -m venv venv
source venv/bin/activate
git clone https://github.com/pytorch/csprng.git
git clone https://github.com/Amithabh-A/CryptGPU.git
cd csprng
pip install torch
python3 setup.py install
cd ../CryptGPU
pip install -r requirements_source.txt
python3 setup.py install
