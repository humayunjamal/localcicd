# localcicd

To create a local Jenkins setup with CI/CD pipeline support to test hello world maven springboot application locally. 

# Solution 1 

Using docker to create a local Jenkins server with pipeline plugin. 

#### Pre Requisite 

* Docker should be installed and running locally
* docker-compose should be installed
* Update the ```springapp/Jenkinsfile``` target application health check url according to your local docker setup. 

#### How its setup

* `springapp` folder contains the code for the hellow world application
* `localJenkins` folder contains the required docker-compose.yml and other files to start up a local Jenkins instance
* Jenkins image used is a customised image built with pipeline plugin and the bare minimum configurations to run jenkins groovy dsl . 
* A default jenkins job is pre-configured and added which simply creates a jenkins job called `pipeline-updater` 
* The `pipeline-updater` uses the Jenkinsfile in the application directory to run the defined steps
* Jenkinsfile has defined stages as required i.e Test , Build, DeployCode and HealthCheck.
* The healthcheck stage points to the expected url for the application to run. 

#### How to Run

1. The spring application directory ```springapp/``` is already being used to mount as volume in ```localJenkins/docker-compose.yml```
2. From the root directory of the repo run ```make docker```
3. Once the Jenkins container is up , please access it via `http://localhost:18080` where localhost should point to the ip address where the container can be accessed. 
4. Run the pipeline-updater job at `http://localhost:18080/job/pipeline-updater/`
5. Your pipeline should have run at `http://localhost:18080/job/devPipeline/`
6. Once the job is success , please check your application at `http://localhost:8080`
7. For any updates in the code and if it needs rebuilding please rebuild `http://localhost:18080/job/pipeline-updater/`


