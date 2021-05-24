FROM centos:7

#Install Dependency
RUN yum install -y epel-release nano

# Install NodeJs
RUN curl -fsSL https://rpm.nodesource.com/setup_12.x | bash -
RUN yum install -y nodejs

# Create APP Dir
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

# Bundle APP
COPY . /usr/src/app

#config pm2
RUN npm install pm2 -g

# Expose Port APP
EXPOSE 5000

# Command Run APP
CMD ["pm2-runtime", "index.js"]
