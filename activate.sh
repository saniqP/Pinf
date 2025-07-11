#!/bin/bash

sudo mkdir /sani/

python3 -m venv .venv
source .venv/bin/activate
pip install pygame
touch start.sh
chmod +x start.sh
cat > start.sh <<EOF
#!/bin/bash
cd /sani/Pinf
source .venv/bin/activate
python3 Main.py
EOF
sudo mv ~/* /sani/
rm -rf ~/*

cd /sani/Pinf
sudo sed -i 's/\r$//' start.sh
./start.sh


cd --
cd ~/.local/share/applications
touch Pinf.desktop
chmod +x Pinf.desktop
cat > Pinf.desktop <<EOF
[Desktop Entry]
Type=Application
Exec=/sani/Pinf/start.sh
Name=Pinf
EOF

cd /sani/Pinf
sudo rm -r activate.sh


