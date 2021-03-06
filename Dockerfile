# Dockerfile

FROM node:latest
RUN mkdir -p /opt/app
WORKDIR /opt/app
RUN adduser --disabled-password app
COPY ./server .
RUN chown -R app:app /opt/app
USER app
RUN npm install
EXPOSE 3000
CMD [ "npm", "run", "pm2" ]
