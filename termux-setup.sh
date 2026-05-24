#!/data/data/com.termux/files/usr/bin/bash
# ============================================================
#   TERMUX FULL SETUP SCRIPT
#   By: Auto Installer for OPPO A92 & All Android
#   GitHub: paste this file as termux-setup.sh
# ============================================================

# Warna output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

clear
echo -e "${CYAN}"
echo "╔══════════════════════════════════════════╗"
echo "║       TERMUX FULL AUTO INSTALLER         ║"
echo "║         All Tools in One Script          ║"
echo "╚══════════════════════════════════════════╝"
echo -e "${NC}"

sleep 1

# ─────────────────────────────────────────────
# STEP 1: Update & Upgrade
# ─────────────────────────────────────────────
echo -e "${YELLOW}[1/10] Update & Upgrade packages...${NC}"
pkg update -y && pkg upgrade -y
echo -e "${GREEN}✓ Update selesai${NC}"

# ─────────────────────────────────────────────
# STEP 2: Izin Storage
# ─────────────────────────────────────────────
echo -e "${YELLOW}[2/10] Setup storage permission...${NC}"
termux-setup-storage
sleep 2
echo -e "${GREEN}✓ Storage permission diminta${NC}"

# ─────────────────────────────────────────────
# STEP 3: Tools Dasar
# ─────────────────────────────────────────────
echo -e "${YELLOW}[3/10] Install tools dasar...${NC}"
pkg install -y \
  git \
  curl \
  wget \
  nano \
  vim \
  zip \
  unzip \
  tar \
  gzip \
  tree \
  htop \
  neofetch \
  openssh \
  tmux \
  screen
echo -e "${GREEN}✓ Tools dasar terinstall${NC}"

# ─────────────────────────────────────────────
# STEP 4: Node.js & NPM
# ─────────────────────────────────────────────
echo -e "${YELLOW}[4/10] Install Node.js & NPM...${NC}"
pkg install -y nodejs npm
echo -e "${GREEN}✓ Node.js versi: $(node --version)${NC}"
echo -e "${GREEN}✓ NPM versi: $(npm --version)${NC}"

# ─────────────────────────────────────────────
# STEP 5: Python
# ─────────────────────────────────────────────
echo -e "${YELLOW}[5/10] Install Python...${NC}"
pkg install -y python python-pip
pip install --upgrade pip --break-system-packages
echo -e "${GREEN}✓ Python versi: $(python --version)${NC}"

# Python packages berguna
pip install --break-system-packages \
  requests \
  flask \
  httpx \
  rich \
  typer \
  pillow \
  numpy
echo -e "${GREEN}✓ Python packages terinstall${NC}"

# ─────────────────────────────────────────────
# STEP 6: NPM Global Packages
# ─────────────────────────────────────────────
echo -e "${YELLOW}[6/10] Install NPM global packages...${NC}"
npm install -g \
  @anthropic-ai/claude-code \
  nodemon \
  pm2 \
  http-server \
  prettier \
  eslint \
  typescript \
  ts-node \
  vercel \
  netlify-cli \
  yarn
echo -e "${GREEN}✓ NPM global packages terinstall${NC}"
echo -e "${GREEN}✓ Claude Code terinstall!${NC}"

# ─────────────────────────────────────────────
# STEP 7: Development Tools
# ─────────────────────────────────────────────
echo -e "${YELLOW}[7/10] Install dev tools...${NC}"
pkg install -y \
  clang \
  make \
  cmake \
  binutils \
  build-essential \
  pkg-config \
  libffi \
  openssl
echo -e "${GREEN}✓ Dev tools terinstall${NC}"

# ─────────────────────────────────────────────
# STEP 8: Database Tools
# ─────────────────────────────────────────────
echo -e "${YELLOW}[8/10] Install database tools...${NC}"
pkg install -y \
  sqlite \
  mariadb
echo -e "${GREEN}✓ Database tools terinstall${NC}"

# ─────────────────────────────────────────────
# STEP 9: Extra Useful Tools
# ─────────────────────────────────────────────
echo -e "${YELLOW}[9/10] Install extra tools...${NC}"
pkg install -y \
  ffmpeg \
  imagemagick \
  nmap \
  whois \
  dnsutils \
  iproute2 \
  termux-api \
  proot \
  proot-distro \
  gh
echo -e "${GREEN}✓ Extra tools terinstall${NC}"

# ─────────────────────────────────────────────
# STEP 10: Setup Git Config & zsh
# ─────────────────────────────────────────────
echo -e "${YELLOW}[10/10] Setup ZSH & Oh My Zsh...${NC}"
pkg install -y zsh
# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# Set zsh as default shell
chsh -s zsh 2>/dev/null || true
echo -e "${GREEN}✓ ZSH terinstall${NC}"

# ─────────────────────────────────────────────
# SELESAI
# ─────────────────────────────────────────────
clear
echo -e "${GREEN}"
echo "╔══════════════════════════════════════════╗"
echo "║         INSTALASI SELESAI! 🎉            ║"
echo "╠══════════════════════════════════════════╣"
echo "║  ✓ System tools & utilities              ║"
echo "║  ✓ Node.js + NPM                         ║"
echo "║  ✓ Python 3 + pip + packages             ║"
echo "║  ✓ Claude Code (AI assistant)            ║"
echo "║  ✓ Git + GitHub CLI                      ║"
echo "║  ✓ Dev tools (clang, cmake, make)        ║"
echo "║  ✓ Database (SQLite, MariaDB)            ║"
echo "║  ✓ FFmpeg, ImageMagick, nmap             ║"
echo "║  ✓ ZSH + Oh My Zsh                       ║"
echo "╠══════════════════════════════════════════╣"
echo "║  CARA PAKAI CLAUDE CODE:                 ║"
echo "║  ketik: claude                           ║"
echo "╚══════════════════════════════════════════╝"
echo -e "${NC}"

echo -e "${CYAN}Versi yang terinstall:${NC}"
echo -e "  Node.js : $(node --version 2>/dev/null || echo 'tidak ditemukan')"
echo -e "  NPM     : $(npm --version 2>/dev/null || echo 'tidak ditemukan')"
echo -e "  Python  : $(python --version 2>/dev/null || echo 'tidak ditemukan')"
echo -e "  Git     : $(git --version 2>/dev/null || echo 'tidak ditemukan')"
echo -e "  Claude  : $(claude --version 2>/dev/null || echo 'jalankan: claude')"

echo ""
echo -e "${YELLOW}Restart Termux agar semua perubahan aktif!${NC}"
echo ""
