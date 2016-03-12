FROM node:argon

# Create app directory
RUN mkdir -p /opt/app
WORKDIR /opt/app

# Bundle app source
COPY . /opt/app
RUN chmod 755 start.sh

# Install app dependencies
RUN npm install --production

EXPOSE 3000
ENTRYPOINT [ "/opt/app/start.sh" ]
