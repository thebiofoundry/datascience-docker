FROM jupyter/datascience-notebook
LABEL maintainer="Siang Lim <siang@alumni.ubc.ca>"
USER root

RUN conda install --quiet --yes \
    'nltk==3.3*' \
    'gensim==3.4*' \
    'pyldavis==2.1*' \
    'pypdf2==1.26*'

RUN python -m nltk.downloader stopwords
