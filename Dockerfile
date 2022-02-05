FROM public.ecr.aws/docker/library/node:16.13.2

RUN mkdir /app
WORKDIR /app
COPY package*.json .
RUN npm install

COPY . .
EXPOSE 8080
CMD ["node", "index.js"]