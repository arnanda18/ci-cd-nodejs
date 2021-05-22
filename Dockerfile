FROM node:12

# Create APP Dir
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

# Bundle APP
COPY . .

# Expose Port APP
EXPOSE 5000

# Command Run APP
CMD ["node", "index.js"]
