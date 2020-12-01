# PART 1 - Setting Environment
ARG CUDA=10.1
ARG CUDNN=7

FROM nvidia/cuda:${CUDA}-cudnn${CUDNN}-runtime-ubuntu18.04
ENV LANG=C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

# PART 2 - Install Dependencies    
RUN apt-get update --fix-missing && apt-get install -y --no-install-recommends\     
        build-essential \
        software-properties-common \
        python3.6 \
        python3-dev \
        python3-tk \
        python3-pip \
        build-essential \
        libfreetype6-dev \
        libpng-dev \
        libzmq3-dev \
        libspatialindex-dev \
        gdal-bin \
        libgdal-dev \
        python3-gdal \
        libsm6 \
        vim \
        wget \
        zip \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*    

RUN apt-get update

RUN python3 -m pip install --upgrade pip

# PART 3 - Install Python Packages
RUN pip3 --no-cache-dir install setuptools && \
    pip3 --no-cache-dir install wheel && \
    pip3 --no-cache-dir install \
        imagecodecs \
        jupyterlab \
        numpy==1.16 \
        scipy \
        Pillow \
        matplotlib \
        opencv-contrib-python \
        scikit-image \
        scikit-learn \
        xgboost \
        fiona \
        shapely \
        geopandas \
        rasterio \
        tifffile \
        tensorflow-gpu==2.1.0 \
        keras

# Degisiklik

# PART 4 - Create User Working Directory 
WORKDIR "/edenazar/data"
CMD ["/bin/bash"]
