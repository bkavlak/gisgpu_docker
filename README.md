# gisGPU_docker
Docker GPU Computing Container for GIS and Remote Sensing Applications. This container is based on ubuntu-18.04 and Python 3.6

In case you want to add or remove python packages go to ```# PART - 3 Install Python Packages``` in the Dockerfile and add or remove the package below  ``` pip3 install```. 

#### BUILD IMAGE:

Go to the directory where ```Dockerfile``` resides and type:
```
docker build -t 'NAME:TAG' .
```
*change names inside ' ' as your preference*

After it finishes all the downloading and setting without any error, type:
```
sudo docker run -it --name 'CONTAINER NAME' --gpus all -p 8888:8888 -p 6006:6006 -v 'VOLUMEFILE':/data 'NAME:TAG' bash
```
*You should change names inside ' ' as your preference*

You can add a volume to the container where you transfer files between the computer and the container.

Run command starts the container and then you can run a Jupyter Notebook as below:
 
```
jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root
```
If successful, you will see some links as below.

```
http://127.0.0.1:888/?token......
```

Copy the last link to a browser (like Chrome). Hit ENTER.

Enjoy!
