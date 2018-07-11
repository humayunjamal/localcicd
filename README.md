# localcicd

To create a local Jenkins setup with CI/CD pipeline support to test hello world maven springboot application locally. 

# Solution 1 

Using docker-compose to create a local Jenkins server. 

#### Pre Requisite 

* Docker should be installed and running locally
* Update the ```springapp/Jenkinsfile``` target application health check url according to your local docker setup. 

#### How its setup

#### Configuration and Run

1. The spring application directory ```springapp/``` is already being used to mount as volume in ```localJenkins/docker-compose.yml```
2. Change directory to ```localJenkins/``` and run `docker-compose up`
3. Run the pipeline-updater job at `http://localhost:18080/job/pipeline-updater/`
4. Your pipeline should have run at `http://localhost:18080/job/devPipeline/`

