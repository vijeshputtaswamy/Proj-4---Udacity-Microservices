[![CircleCI](https://circleci.com/gh/vijeshputtaswamy/Proj-4---Udacity-Microservices/tree/master.svg?style=svg)](https://circleci.com/gh/vijeshputtaswamy/Proj-4---Udacity-Microservices/tree/master)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

### Setup the Environment ###

1. Create a virtualenv and activate it.
2. Run `make install` to install the necessary dependencies.
3. You will also need to install Docker, Hadolint, Kubernetes(minikube).

### Running `app.py` ###

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps ###

1. Setup and Configure Docker locally
2. Setup and Configure Kubernetes locally
3. Create Flask app in Container
4. Run via kubectl
5. run ./make_prediction.sh to send a request and output the logs to kubernetes_out.txt

### Files in the repository ###

1. app.py : The python flask app

2. Dockerfile : file that contains instructions to build a docker image.

3. Makefile : file that is used to setup and build the project and mainly used for linting the dockerfile.
 
4. make_prediction.sh : script which is used to run a query against the machine learning API running on port 8000.

5. requirements.txt : file that describes the dependencies required by the python application.

6. run_docker.sh : script to build, tag and run a docker image.

7. upload_docker.sh: script to push/upload a docker image to the docker hub.

8. run_kubernetes.sh : script to download a docker image from the docker hub and run this image locally on kubernetes.

9. model_data : folder which contains the machine learning model and associated files.

10. output_txt_files : folder which contains the log info : docker_out.txt and kubernetes_out.txt.
