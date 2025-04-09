FROM anasty17/mltb:latest
RUN git clone https://github.com/anasty17/mirror-leech-switch-bot
COPY . .
RUN apt-get update && apt-get upgrade -y && apt-get install -y python3-distutils
RUN cp -rf config* tok* m*t
RUN pip3 install --no-cache-dir -r requirements.txt --break-system-packages
RUN cd m*t && bash start.sh
   
