## Letsgoi docker live server

Launch minimal live reload web server to web development.

This image is a wrapper for [live-server](https://github.com/tapio/live-server) utility.

#### Usage

Run this command to launch server on specific `host_path`:

```
docker container run -v [host_path]:/var/www -p [host_port]:8080 letsgoi/live-server
// add --pid=host to close with ctrl + c 
```

This will launch the server on `http://localhost:[host_port]`

##### Alias suggestion:

```
alias dlive='function _dlive() { docker container run --pid=host -v `pwd`:/var/www -p ${${1}:-8080}:8080 letsgoi/live-server };_dlive'
```

Usage: `dlive [host_port]` (if you omit host_port the server will be launched at 8080)
