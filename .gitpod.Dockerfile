FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

# Chrome
USER root
RUN sudo apt-get update && \
    sudo apt-get -y install chromium-browser && \
    sudo apt-get -y install chromium-bsu

ENV CHROME_PATH=/usr/bin/chromium-browser
ENV NODE_ENV=test
