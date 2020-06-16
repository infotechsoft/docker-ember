# docker-ember
<a href="https://emberjs.com/"><img src="https://emberjs.com/images/brand/ember_Tomster-Lockup.png" alt="EmberJS" height="48px"/></a> docker image based on <a href="https://nodejs.org"><img src="https://nodejs.org/static/images/logos/nodejs-new-pantone-black.svg" alt="NodeJS" height="48px"/></a>
Minimal installation of EmberJS 3.16 on NodeJS LTS 12 Alpine

## Base Image
 * [NodeJS](https://hub.docker.com/_/node/) node:alpine
  
## Installed
 * ember-cli LTS (3.16.2)

## Settings
	
    EXPOSE 4200 ${LIVE_RELOAD_PORT} 
    VOLUME /usr/local/ember
    WORKDIR /usr/local/ember
    CMD ["ember", "server", "--live-reload-port", "${LIVE_RELOAD_PORT}"]


## Running

    docker run -d -p 4200:4200 -p 9999:9999 -v $(pwd):/usr/local/ember infotechsoft/ember-cli
    # starts `ember server` in /usr/local/ember

## Building an Ember Application

    docker run --rm -v $(pwd):/usr/local/ember infotechsoft/ember-cli ember build

# Maintainer 
![INFOTECH Soft](http://infotechsoft.com/wp-content/uploads/2017/04/InfotechSoft_logo-small.png "INFOTECH Soft, Inc.")