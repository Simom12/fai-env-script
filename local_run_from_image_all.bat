@echo off

@rem すべてのDockerコンテナを起動して、madsunも起動する.


@rem boot container
cd ..\fai-env-compose

docker-compose up -d


@rem boot madsun

mkdir C:\FWExtractorTools\AIManagedService

cd ..\fai-mod-madsun\Release_bin
copy /y * C:\FWExtractorTools\AIManagedService

start C:\FWExtractorTools\AIManagedService\AIManagedService.exe

cd ..\..\

cd fai-env-script
