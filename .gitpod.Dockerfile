FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

# Chrome
USER root
RUN sudo apt-get purge snapd
RUN sudo apt-get install snapd
RUN sudo service snapd start
RUN sudo snap install chromium

ENV CHROME_PATH=/usr/bin/chromium
