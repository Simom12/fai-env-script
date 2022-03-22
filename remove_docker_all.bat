@rem dockerを止めてコンテナ削除、イメージ削除する.

taskkill /F /IM AIManagedService.exe /T

timeout /t 5 /nobreak >nul

del /f C:\FWExtractorTools\AIManagedService\AIManagedService.exe /q
del /f C:\FWExtractorTools\AIManagedService\* /q

RMDIR C:\FWExtractorTools /s /q


@rem ----------------------------------------------------->
@rem docker contenar stop
docker stop ascari
docker stop fai-ui
docker stop logger
@rem -----------------------------------------------------<

@rem ----------------------------------------------------->
@rem docker contenar remove
docker rm ascari
docker rm fai-ui
docker rm logger
@rem -----------------------------------------------------<

@rem ----------------------------------------------------->
@rem docker image remove
docker image rm fai-mod-ascari:v0.1
docker image rm fai-mod-ui:v0.1
docker image rm fai-mod-logger:v0.1
@rem -----------------------------------------------------<

docker network rm fai-spider-net
