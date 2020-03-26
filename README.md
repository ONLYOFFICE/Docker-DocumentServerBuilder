## This repository contains outdated information

## How to use it

### Step 1

#### Install the latest Docker version. Please see the [Installation section](http://docs.docker.com/installation/#installation) on Docker website to learn how to get it.

### Step 2

#### Get the latest version of Document Server source code from GitHub:
```
git clone --recursive https://github.com/ONLYOFFICE/DocumentServer.git
```
#### Switch to the Document Server directory:
```
cd DocumentServer
```
### Step 3

#### Build Document Server components:
```
sudo docker run --rm -v $PWD:/var/lib/onlyoffice onlyoffice/documentserver-builder
```
