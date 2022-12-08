#! /bin/bash

baseDir="dbfiles"

dockerName="diva-postgresql"

start(){
	echo "Exporting data from docker "$dockerName
	docker exec  -i $dockerName bash < runInsideDocker.sh
	echo "Copying files to local export folder..."
	docker cp $dockerName:/$baseDir .
}

start