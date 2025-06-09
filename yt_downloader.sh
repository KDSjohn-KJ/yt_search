#!/data/data/com.termux/files/usr/bin/bash

# Caminho da pasta onde os vídeos serão salvos
save_dir="/sdcard/YoutubeDownloads"

# Cria a pasta se não existir
if [ ! -d "$save_dir" ]; then
    echo "📁 Pasta não encontrada. Criando: $save_dir"
    mkdir -p "$save_dir"
fi

# Solicita o link
echo "🔗 Cole o link do vídeo do YouTube:"
read link

# Obtém metadados com yt-dlp
info=$(yt-dlp -j "$link")

# Extrai informações
title=$(echo "$info" | jq -r '.title' | sed 's/[^a-zA-Z0-9 _-]//g')
uploader=$(echo "$info" | jq -r '.uploader' | sed 's/[^a-zA-Z0-9 _-]//g')
date=$(echo "$info" | jq -r '.upload_date')

# Formata data
formatted_date=$(date -d "$date" +"%Y-%m-%d" 2>/dev/null || echo "$date")

# Nome final do arquivo
filename="${formatted_date} - ${uploader} - ${title}.mp4"

# Caminho completo de saída
output_path="${save_dir}/${filename}"

# Baixa o vídeo com yt-dlp
echo "📥 Baixando como: $filename"
yt-dlp -o "$output_path" "$link"

echo "✅ Vídeo salvo em: $output_path"
