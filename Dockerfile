FROM node:9.2.0
RUN apt-get update
RUN apt-get install -y vim git
RUN useradd -d /home/soflab -m -s /bin/bash soflab
RUN echo 'soflab:soflab' | chpasswd
ADD app.js /home/soflab
WORKDIR /home/soflab
RUN git clone https://github.com/krishnasrinivas/wetty
WORKDIR wetty
RUN npm install
EXPOSE 3000
ENTRYPOINT ["node"]
CMD ["app.js", "-p", "3000"]
