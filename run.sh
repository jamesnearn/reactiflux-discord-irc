docker build -t 3stadt/sw-irc-discord . && docker run -it \
    -v `pwd`/config:/home/discordirc/config \
    --name sw-irc-discord \
    --rm \
    3stadt/sw-irc-discord