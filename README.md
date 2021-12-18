# Machine Learning Docker Template

This repo represents a minimal setup for a machine learning project that leverages:
- Docker
- Python 3.6+
- [Papermill](https://github.com/nteract/papermill) (executes notebooks)

## Docker commands

### Run container

        docker-compose -f docker-compose.yml up

### Stop and delete container

        docker-compose -f docker-compose.yml down

### Open container terminal

        docker exec -it ml /bin/bash

## Commit runboook

        black machine_learning_docker_template

## Notebooks

### Execute Jupyter notebook in docker and save output

        papermill analysis.ipynb analysis-output.ipynb -k python

## Credits
- [Papermill](https://github.com/nteract/papermill)
- [cookiecutter-data-science](https://github.com/drivendata/cookiecutter-data-science)