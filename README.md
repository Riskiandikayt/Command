# 📱 Termux Full Auto Installer

Install semua tools Termux sekaligus dengan 1 script!

## ✅ Yang Akan Diinstall

| Kategori | Tools |
|----------|-------|
| **System** | git, curl, wget, nano, vim, zip, unzip, htop, neofetch, tmux |
| **Node.js** | nodejs, npm |
| **NPM Global** | Claude Code, nodemon, pm2, http-server, typescript, vercel, yarn |
| **Python** | python3, pip, requests, flask, numpy, pillow, rich |
| **Dev Tools** | clang, cmake, make, build-essential, openssl |
| **Database** | SQLite, MariaDB |
| **Extra** | ffmpeg, imagemagick, nmap, proot, proot-distro, GitHub CLI |
| **Shell** | ZSH + Oh My Zsh |

---

## 🚀 Cara Pakai

### Langkah 1 — Buka Termux, jalankan:
```bash
pkg install git curl -y
```

### Langkah 2 — Download script:
```bash
curl -O https://raw.githubusercontent.com/USERNAME/REPO/main/termux-setup.sh
```
> Ganti `USERNAME/REPO` dengan username & repo GitHub kamu

### Langkah 3 — Beri izin & jalankan:
```bash
chmod +x termux-setup.sh
bash termux-setup.sh
```

### Atau langsung 1 command:
```bash
pkg install curl -y && curl -fsSL https://raw.githubusercontent.com/USERNAME/REPO/main/termux-setup.sh | bash
```

---

## ⚙️ Setelah Install

### Jalankan Claude Code:
```bash
claude
```

### Cek semua versi:
```bash
node --version
python --version
git --version
```

---

## 📋 Tested On
- ✅ OPPO A92 (Android 10/11)
- ✅ ARM64 devices
- ✅ Termux v0.118.3+

---

## ⚠️ Catatan
- Pastikan koneksi internet stabil
- Proses install sekitar 10-20 menit
- Izinkan akses storage saat diminta
- Restart Termux setelah selesai

---

Made with ❤️ for Termux users
