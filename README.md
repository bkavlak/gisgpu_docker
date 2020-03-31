# gisGPU_docker
- WORKS FOR LINUX DISTRIBUTION

Docker GPU Computing Container for GIS and Remote Sensing Applications. This container is based on ubuntu-18.04 and Python 3.6

If you are not familiar with Docker, please first watch this perfect tutorial: https://www.youtube.com/watch?v=fqMOX6JJhGo&t=1550s (First half is enough to understand below).

In case you want to add or remove python packages go to ```# PART - 3 Install Python Packages``` in the Dockerfile and add or remove the package below  ``` pip3 install```.

###### Package List:
```
imagecodecs
jupyterlab
numpy==1.16
scipy
Pillow
matplotlib
opencv-contrib-python
scikit-image
scikit-learn
xgboost
fiona
shapely
geopandas
rasterio
tifffile
tensorflow-gpu==2.1.0
keras

```

#### PULL IMAGE:
In case you don't need to configure the ```Dockerfile```
```
docker pull bkavlak/gisgpu:base
```
*OR*
#### BUILD IMAGE:

In case you want to configure the ```Dockerfile```.

Go to the directory where ```Dockerfile``` resides and type:
```
docker build -t 'NAME:TAG' .
```
*You should change text inside '___' as your preference*

#### RUN CONTAINER:

```
sudo docker run -it --name 'CONTAINER NAME' --gpus all -p 8888:8888 -p 6006:6006 -v 'VOLUME DIRECTORY':/edenazar/data 'NAME:TAG' bash
```
*You should change text inside '___' as your preference*

You can add a volume to the container where you transfer files between the computer and the container.

*('VOLUME DIRECTORY' = where you put your files on the local machine)*

#### ON BASH:

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
