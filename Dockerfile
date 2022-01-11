FROM node:alpine
LABEL Author="Jorge F. Sanchez"

# Install Hexo
RUN npm install -g hexo

# Mount a Host Directory as a Data Volume for hexo
VOLUME /blog
WORKDIR /blog

# Expose ports.
EXPOSE 4000

CMD [ "hexo" ]
