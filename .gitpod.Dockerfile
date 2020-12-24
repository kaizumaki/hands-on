FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

# Chrome
USER root
RUN sudo apt-get update && \
    # wget -q -O – https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add – && \
    # sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' && \
    sudo apt-get -y install chromium-browser
ENV CHROME_PATH=/usr/bin/chromium-browser
