FROM node
MAINTAINER Markus Kosmal <b@m-ko.de>
WORKDIR /opt/haste

RUN git clone https://github.com/seejohnrun/haste-server.git /opt/haste
ADD conf/ /opt/haste/
RUN npm install

RUN chgrp -R 0 /opt/haste \
  && chmod -R g+rwX /opt/haste
EXPOSE 25565
CMD ["npm", "start"]
