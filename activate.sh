#!/bin/bash

sudo mkdir /sani/

python3 -m venv .venv
source .venv/bin/activate
pip install pygame
touch start.sh
chmod +x start.sh
cat > start.sh <<EOF
#!/bin/bash
source .venv/bin/activate
python3 Main.py
EOF
sudo mv ~/* /sani/Pinf/
rm -rf ~/*

cd /sani/
sudo sed -i 's/\r$//' start.sh
./start.sh

