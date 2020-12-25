FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

# Chrome
# RUN sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
# RUN sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
# RUN sudo apt-get update && sudo apt-get -y upgrade && \
#     sudo apt-get -y install google-chrome-stable

# ENV CHROME_PATH=/usr/bin/google-chrome

# RUN sudo usermod -a -G docker gitpod

# Install Chrome
RUN sudo apt-get update && \
    sudo apt-get install -y gdebi

RUN sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
RUN sudo wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# COPY google-chrome-stable_current_amd64.deb ./
RUN sudo gdebi --non-interactive google-chrome-stable_current_amd64.deb
