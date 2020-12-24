FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

# Chrome
USER root
RUN sudo apt-get update && \
    wget -q -O – https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add – && \
    # echo “deb http://dl.google.com/linux/chrome/deb/ stable main” | sudo tee /etc/apt/sources.list.d/google-chrome.list && \
    sudo apt-get -y install chromium
ENV CHROME_PATH=/usr/bin/chromium
