# 📥 YouTube Downloader via Termux (yt-dlp)

Um script simple para baixar vídeos do YouTube diretamente no **Termux**, salvando com nome formatado contendo:

- 📅 Data de upload  
- 👤 Nome do autor  
- 🎵 Título do vídeo  

Os vídeos são salvos automaticamente em:  
**`/sdcard/YoutubeDownloads`**

---

## ✅ Requisitos

Antes de executar o script, instale os seguintes pacotes no Termux:

```bash
pkg update && pkg upgrade -y
pkg install python ffmpeg jq -y
pip install yt-dlp -y
pkg install git -y

# Em seguida use

git clone https://github.com/KDSjohn-KJ/yt_search.git

# Para inicializar utilize
chmod +x yt_downloader
python yt_downloader.py

