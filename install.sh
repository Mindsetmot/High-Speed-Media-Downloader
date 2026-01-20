#!/data/data/com.termux/files/usr/bin/bash

GREEN='\033[1;32m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${CYAN}[*] Memulai instalasi HMD (High-Speed Media Downloader)...${NC}"

echo -e "${YELLOW}[1/3] Memperbarui sistem package...${NC}"
pkg update -y && pkg upgrade -y

echo -e "${YELLOW}[2/3] Menginstal dependencies (Python, FFmpeg, Curl)...${NC}"
pkg install python ffmpeg curl -y
pip install yt-dlp

echo -e "${YELLOW}[3/3] Mengunduh binary HMD...${NC}"
curl -L -o $PREFIX/bin/hmd https://github.com/Mindsetmot/High-Speed-Media-Downloader/raw/main/hmd

chmod +x $PREFIX/bin/hmd

echo -e "\n${GREEN}[✓] Instalasi Selesai!${NC}"
echo -e "${GREEN}[i] Ketik 'hmd' untuk menjalankan tool.${NC}"
