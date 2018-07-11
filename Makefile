EXECUTABLES = docker docker-compose vagrant
K := $(foreach exec,$(EXECUTABLES),\
        $(if $(shell which $(exec)),please check,$(error "No $(exec) in PATH)))

help:
	@echo "Usage make <docker|vagrant>""

docker:
	docker-compose -f localJenkins/docker-compose.yml stop
	docker-compose -f localJenkins/docker-compose.yml rm --force
	docker-compose -f localJenkins/docker-compose.yml build
	docker-compose -f localJenkins/docker-compose.yml up -d

vagrant:
	cd localVagrant; vagrant up; vagrant provision

%:
	@:
