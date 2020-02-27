# gisGPU_docker
Docker GPU Computing Environment for GIS and Remote Sensing Applications 

BUILD IMAGE
```
docker build 'NAME:TAG' .
```

TYPE:
```
sudo docker run -it --name 'NAME' --gpus all -p 8888:8888 -p 6006:6006 -v VOLUMEFILE:/data 'NAME:TAG' bash
```
TYPE:
```
jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root
```

SEE the links
COPY to browser
```
http://127.0.0.1:888/?token......
```
