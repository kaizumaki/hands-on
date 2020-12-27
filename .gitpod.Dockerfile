FROM marpteam/marp-cli:latest

USER root

# install font
RUN mkdir /noto

ADD https://noto-website.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip /noto

WORKDIR /noto

RUN unzip NotoSansCJKjp-hinted.zip && \
    mkdir -p /usr/share/fonts/noto && \
    cp *.otf /usr/share/fonts/noto && \
    chmod 644 -R /usr/share/fonts/noto/

WORKDIR /
RUN rm -rf /noto && \
    mkdir -p /root/.config/fontconfig

ADD $PWD/fonts.conf $HOME/.config/fontconfig/fonts.conf
RUN fc-cache -fv

# Japanese
RUN apk update && \
    apk add --update cmake make musl-dev gcc gettext-dev libintl && \
    wget https://gitlab.com/rilian-la-te/musl-locales/-/archive/master/musl-locales-master.zip && \
    unzip musl-locales-master.zip && \
    cd musl-locales-master && \
    cmake -DLOCALE_PROFILE=OFF -D CMAKE_INSTALL_PREFIX:PATH=/usr . && make && make install && \
    cd .. && rm -r musl-locales-master
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:jp
ENV LC_ALL ja_JP.UTF-8
