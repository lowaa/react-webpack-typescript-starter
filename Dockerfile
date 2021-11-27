FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y bash npm
RUN npm install -g yarn@v1.22.15

RUN mkdir -p /srv/app
WORKDIR /srv/app

# COPY package.json /srv/app/package.json
COPY . .

RUN yarn install

EXPOSE 8080

CMD ["tail", "-f", "/dev/null"]
