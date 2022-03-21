@echo off

@rem すべてのDockerコンテナを起動して、madsunも起動する.

@rem boot container
docker-compose up -d

@rem boot madsun
start C:\FWExtractorTools\AIManagedService\AIManagedService.exe

