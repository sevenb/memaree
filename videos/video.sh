for f in *mp4; do ffmpeg -i "$f" -vf "scale=-2:480" -c:v libx264 -preset medium -crf 18 -c:a aac -b:a 192k -movflags +faststart "compressed/${f##*/}"; done




