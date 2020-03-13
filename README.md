# gisGPU_docker
Docker GPU Computing Container for GIS and Remote Sensing Applications. This container is based on Python 3.6

You can add desired packages to the Dockerfile below the ``` pip3 install``` part in case you need. 

BUILD IMAGE
```
docker build -t 'NAME:TAG' .
```
!change names inside '' as your preference

TYPE:
```
sudo docker run -it --name 'NAME' --gpus all -p 8888:8888 -p 6006:6006 -v 'VOLUMEFILE':/data 'NAME:TAG' bash
```
!change names inside '' as your preference

TYPE:
```
jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root
```

SEE the links
COPY to browser
```
http://127.0.0.1:888/?token......
```
