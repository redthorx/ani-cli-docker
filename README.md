 ## ani-cli docker
 
 Runs [ani-cli](https://github.com/pystardust/ani-cli), but in a docker container. mpv container from [cremuzzi/mpv](https://github.com/cremuzzi/docker-mpv). Works on linux. 
 
 ### How to install
 
```sh
 git clone https://github.com/redthorx/ani-cli-docker
 docker build --tag ani-cli ./ani-cli-docker
 (optional) sudo cp ani-cli /usr/local/bin/ani-cli && sudo chmod +x /usr/local/bin/ani-cli

```

### How to use

Same as ani-cli, just run ``` ani-cli``` in console if ani-cli file is copied into ```/usr/local/bin/```

or, from docker:
```
docker run --rm -i -t \                    
    --device /dev/dri \
    --network host \
    -e DISPLAY=$DISPLAY \
    -e XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR \
    -v /etc/machine-id:/etc/machine-id:ro \
    -v /run/user/1000/pulse:/run/user/1000/pulse \
    -v $HOME/.Xauthority:/home/mpv/.Xauthority \
    ani-cli
 ```
 
 ### Prerequisites
 docker
