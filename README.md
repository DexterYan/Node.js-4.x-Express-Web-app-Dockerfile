# Node.js 4.x + Express Web app Dockerfile

This repository contains Dockerfile of Node.js 4.x for dockerizing a Node.js web app

- Ubuntu 14.04 Trusty (Ubuntu Server 64-bit 14.04 cloud image)
- nodejs 4.x

## Building your image

1. Run the commands below:

    ```
    $ docker build -t <your username>/ubuntu-node-hello .
    ```

## Run the image

1. Run the commands below:

    ```
    $ docker run -p 49160:8080 -d <your username>/ubuntu-node-hello
    ```

## Test
 1. Linux 
    ```
    $ curl -i localhost:49160
    ```
 2. Mac
    ```  
    $ docker-machine ls  
    
    $ curl $(docker-machine ip VM_NAME):49160
    ```
    For example
    ```
    $ docker-machine ls  
    
    NAME      ACTIVE   DRIVER       STATE     URL  SWARM
    default   *      virtualbox   Running   tcp://ip:port  
    
    $ curl $(docker-machine ip default):49160
    ```
    
## Credits

This project was inspired from [Dockerizing a Node.js web app](http://docs.docker.com/engine/examples/nodejs_web_app/).


## MIT

Copyright (c) 2015 Dexter Yan

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE
