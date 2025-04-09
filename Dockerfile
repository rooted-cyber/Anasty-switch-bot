FROM anasty17/mltb:latest
RUN git clone https://github.com/anasty17/mirror-leech-switch-bot
COPY . .
RUN cp -rf config* tok* m*t
RUN cd m*t;pip3 install --no-cache-dir -r requirements.txt --break-system-packages
RUN sudo apt-get install python3-distutils
RUN cd m*t;bash start.sh
