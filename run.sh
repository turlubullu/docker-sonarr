docker run --restart=always -d -h VEGETA \
    --name sonarr \
    -p 8989:8989 \
    --link transmission:transmission --link plex:plex \
    -e PUID=104 -e PGID=109 \
    -v /dev/rtc:/dev/rtc:ro \
    -v /docker-data/sonarr:/config \
    -v /poolmirror2/Series:/tv \
    -v /poolmirror1/DLs:/downloads \
    -v /poolmirror1:/poolmirror1 \
    -v /poolmirror2:/poolmirror2 \
    sonarr
