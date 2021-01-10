FROM jupyter/datascience-notebook
LABEL maintainer="Siang Lim <siang@alumni.ubc.ca>"
USER root

RUN conda install \
    'gensim==3.8*' \
    'pyldavis==2.1*' \
    'pypdf2==1.26*'
    
RUN conda install pytorch torchvision torchaudio cpuonly -c pytorch
RUN conda install -c conda-forge transformers

RUN conda install -c conda-forge tensorflow
    
RUN conda install -c conda-forge nltk
RUN python -m nltk.downloader stopwords
