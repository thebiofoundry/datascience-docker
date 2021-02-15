FROM jupyter/datascience-notebook
LABEL maintainer="Siang Lim <siang@alumni.ubc.ca>"
USER root

RUN apt-get update && apt-get install -y poppler-utils

RUN conda install \
    'gensim==3.8*' \
    'pyldavis==2.1*' \
    'pypdf2==1.26*'
    
RUN conda install -c conda-forge nltk
RUN python -m nltk.downloader stopwords
    
RUN conda install pytorch torchvision torchaudio cpuonly -c pytorch
RUN conda install -c conda-forge transformers

RUN python -m pip install detectron2 -f \ https://dl.fbaipublicfiles.com/detectron2/wheels/cpu/torch1.7/index.html
RUN python -m pip install pdf2image
