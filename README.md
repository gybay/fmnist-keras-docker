# Classification on fashion-mnist dataset with Keras on Docker

This repository contains work on Zalando's fashion-mnist dataset with Keras with Tensorflow backend via Jupyter Notebook over Docker.

Dockerfile contains the necessary environment to work with Keras on Jupyter notebook.

The notebook contains the data preparation and analysis, model fitting and test steps. Further information about the work is given in the notebook as comments.

Run the following command in the root folder for the repository to run the Docker image as a container;


`docker run -d -v /$(pwd)/:/home/jovyan/work            -p 8888:8888 gaarv/jupyter-keras start-notebook.sh --NotebookApp.token=''`
