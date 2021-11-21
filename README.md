# Machine Learning Docker Template

This repo represents a minimal setup for a machine learning project that leverages:
- Docker
- Python 3.6+
- [Papermill](https://github.com/nteract/papermill) (to execute notebooks from terminal)

## Docker commands

### Run container

        docker-compose -f docker-compose.yml up

### Stop and delete container

        docker-compose -f docker-compose.yml down

### Open container terminal

        docker exec -it ml /bin/bash

## Notebooks

### Execute Jupyter notebook in docker and save output

        papermill analysis.ipynb analysis-output.ipynb -k python