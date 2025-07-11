#!/bin/bash

mkdir /sani/Pinf

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
mv ~/* /sani/Pinf/
rm -rf ~/*

cd /sani/Pinf
./start.sh

