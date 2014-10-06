# This is very experimental and only sometimes working.

FROM node

MAINTAINER Brian Gates <brian.g.gates@gmail.com>

RUN npm install -g bower grunt-cli;

# RUN mkdir /vagrant
# VOLUME ["/vagrant"]
WORKDIR /vagrant

# Expose App, Livereload
EXPOSE 8000 35729

CMD /vagrant/start.sh