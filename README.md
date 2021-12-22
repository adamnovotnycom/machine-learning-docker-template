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

### Connect to jupyter server using VS Code
- After running docker-compose, open separate terminal and run

        docker exec -it ml jupyter notebook --ip 0.0.0.0 --port 8888 --allow-root

- Copy server URL with token (e.g. `http://127.0.0.1:8888/?token={some_token}`)
- Follow instructions [Connect to a remote Jupyter server](https://code.visualstudio.com/docs/datascience/jupyter-notebooks#_connect-to-a-remote-jupyter-server)

### Execute Jupyter notebook in docker and save output

        papermill analysis.ipynb analysis-output.ipynb -k python

## Credits
- [Papermill](https://github.com/nteract/papermill)
- [cookiecutter-data-science](https://github.com/drivendata/cookiecutter-data-science)