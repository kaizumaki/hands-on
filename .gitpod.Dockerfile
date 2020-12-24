FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

# Chrome
ENV CHROME_PATH=/usr/bin/chromium

RUN apt-get update && \
    apt-get install -y chromium
    