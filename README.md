# 📥 YouTube Downloader via Termux (yt-dlp)

Um script simples e poderoso para baixar vídeos do YouTube diretamente no **Termux**, salvando com nome formatado contendo:

- 📅 Data de upload  
- 👤 Nome do autor  
- 🎵 Título do vídeo  

Os vídeos são salvos automaticamente em:  
**`/sdcard/YoutubeDownloads`**

---

## ✅ Requisitos

Antes de executar o script, instale os seguintes pacotes no Termux:

```bash
pkg update && pkg upgrade
pkg install python ffmpeg jq
pip install yt-dlp


# Inicie o arquivo

./yt_downloader.sh
