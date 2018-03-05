FROM node:carbon

ENV TINI_VERSION v0.17.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
ENTRYPOINT ["/tini", "--"]

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .


EXPOSE 8080
# At the end, set the user to use when running this image
USER node
CMD [ "node", "index.js" ]
