#! /bin/bash

baseDir="dbfiles"

dockerName="diva-postgresql"

start(){
	echo "Exporting data from docker "$dockerName
	docker exec  -i $dockerName bash < runInsideDocker.sh
	echo "Copying files to local export folder..."
	docker cp $dockerName:/$baseDir/diva ./$baseDir
	docker cp $dockerName:/$baseDir/divaPreview ./$baseDir
	docker cp $dockerName:/$baseDir/divaPre ./$baseDir
	docker cp $dockerName:/$baseDir/divaProduction ./$baseDir
	docker cp $dockerName:/$baseDir/divaData ./$baseDir
	docker cp $dockerName:/$baseDir/divaClient ./$baseDir
}

start
