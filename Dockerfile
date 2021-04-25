ARG BASE_CONTAINER=jupyter/minimal-notebook
FROM $BASE_CONTAINER

LABEL maintainer="moonrailgun <moonrailgun@gmail.com>"

USER root

RUN apt-get update
RUN apt-get install -y curl

# # Install Node
# RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
# RUN apt-get install -y gcc g++ make
# RUN apt-get install -y nodejs

# Install tslab
RUN npm install -g tslab
RUN tslab install --version
RUN tslab install --python=python3
RUN jupyter kernelspec list

RUN chown -R $NB_UID "${HOME}/.local/share/jupyter"

USER $NB_UID

WORKDIR $HOME
