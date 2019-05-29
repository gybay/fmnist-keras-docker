FROM jupyter/scipy-notebook

MAINTAINER Gaarv <@Gaarv1911>

USER root

# bash instead of dash to use source
RUN ln -snf /bin/bash /bin/sh

USER jovyan

RUN pip install --upgrade tensorflow \
 && pip install --upgrade --no-deps git+git://github.com/fchollet/keras.git

WORKDIR /app
COPY . /app

# Expose Port for Ipython (8888)
EXPOSE 8888

RUN chmod +x /app/run_jupyter.sh