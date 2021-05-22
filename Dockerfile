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

# Expose Port APP
EXPOSE 5000

# Command Run APP
CMD ["node", "index.js"]
