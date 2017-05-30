docker build -t 3stadt/reactiflux-discord-irc . && docker run -itd \
    -v `pwd`/config:/home/discordirc/config \
    --name reactiflux-discord-irc \
    --rm \
    3stadt/reactiflux-discord-irc