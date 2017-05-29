FROM node:7

RUN useradd -ms /bin/bash discordirc
USER discordirc
RUN mkdir /home/discordirc/app
WORKDIR /home/discordirc/app
RUN git clone https://github.com/reactiflux/discord-irc.git . && npm install && npm run build
RUN mkdir /home/discordirc/config

CMD []
ENTRYPOINT ["npm", "start", "--", "--config", "/home/discordirc/config/config.json"]