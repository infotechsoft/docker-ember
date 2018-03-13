# docker-ember
<a href="https://emberjs.com/"><img src="https://emberjs.com/images/brand/ember_Ember-Light-e42a2b30.png" alt="EmberJS" height="48px"/></a> docker image based on <a href="https://nodejs.org"><img src="https://nodejs.org/static/images/logos/nodejs-new-pantone-black.png" alt="NodeJS" height="48px"/></a>


## Base Image
 * [NodeJS](https://hub.docker.com/_/node/) 9.8.0
  
## Installed
 * Watchmen 4.9.0
 * ember-cli 3.0.0
 * bower
 * phantomjs
 * check-dependencies

## Settings
	
    EXPOSE 4200 ${LIVE_RELOAD_PORT} 
    VOLUME /usr/local/ember
    WORKDIR /usr/local/ember
    CMD ["ember", "server", "--live-reload-port", "${LIVE_RELOAD_PORT}"]


## Running

With a pre-built ember application: 

    docker run -d -p 4200:4200 -p 9999:9999 -v $(pwd):/usr/local/ember infotechsoft/ember
    
 
# Maintainer 
![INFOTECH Soft](http://infotechsoft.com/wp-content/uploads/2017/04/InfotechSoft_logo-small.png "INFOTECH Soft, Inc.")