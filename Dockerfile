FROM node:10.17.0
RUN mkdir -p /opt/app
WORKDIR /opt/app
RUN chmod 777 /opt/app
COPY . .
RUN npm install --quiet
RUN npm install nodemon -g --quiet
RUN npm install express --save
RUN npm install babel-preset-env --save-dev
RUN npm install --save-dev nodemon
RUN npm install babel-cli --save
RUN npm install babel-core --save
RUN npm install body-parser
RUN npm install morgan
RUN npm install pg
RUN npm install pg-hstore
RUN npm install sequelize
EXPOSE 3100
CMD npm start