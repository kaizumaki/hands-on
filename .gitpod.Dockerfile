FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

# Chrome
RUN sudo apt-get update && sudo apt-get -y upgrade && \
    sudo apt-get purge snapd && \
    sudo apt-get -y install snapd && \
    sudo service snapd start && \
    sudo snap install chromium

ENV CHROME_PATH=/usr/bin/chromium
