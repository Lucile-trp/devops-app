FROM node:lts AS next-app
# on peut partir d'une image ubuntu ou debian mais node évite de récupérer un système linux et d'installer node
ADD . /app/
WORKDIR /app
RUN npm install
RUN npm run build
LABEL org.opencontainers.image.source https://github.com/Lucile-trp/devops-app
EXPOSE 3000
CMD npm run start