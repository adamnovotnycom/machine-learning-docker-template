# Machine Learning Docker Template

This repo represents a minimal setup for a machine learning project that leverages:
- Docker
- Python 3.6+
- [Papermill](https://github.com/nteract/papermill) (executes notebooks)


## Directory

        ├── README.md             
        ├── ml_docker_template    <- Placeholder package name; replace after cloning template
        │   ├── artifacts         <- Data or models generated during model training
        │   │   └── .gitkeep
        │   ├── data.py           <- Sources raw data from databases, APIs, CSVs
        │   ├── deploy.py         <- Deploys trained model to production
        │   ├── feature_eng.py    <- Cleans raw data and generates a single training dataset
        │   ├── model_train.py    <- Trains a model
        │   ├── model_score.py    <- Queries model using sampled data to ensure valid responses
        ├── notebooks             <- Non-production Jupyter notebooks: analysis, exploration, viz
        ├── tests                 <- Each code merge to main branch must pass these tests
        ├── conda.yml             <- All codebase dependencies are managed by Miniconda
        ├── Dockerfile            <- Miniconda base image

## Docker commands

### Run container

        docker-compose -f docker-compose.yml up

### Stop and delete container

        docker-compose -f docker-compose.yml down

### Open container terminal

        docker exec -it ml /bin/bash

## Commit runboook

        black ml_docker_template

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