FROM continuumio/miniconda3

RUN mkdir -p /mnt/app
ADD . /mnt/app
WORKDIR /mnt/app

RUN conda env create -f conda.yml
RUN echo "source activate dev" > ~/.bashrc
ENV PATH /opt/conda/envs/dev/bin:$PATH

# $PORT defined in docker-compose
EXPOSE $PORT 