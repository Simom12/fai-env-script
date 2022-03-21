@rem イメージをDocker Desktopに登録する.

@rem image load to docker desktop.
docker load -i fai-mod-logger_v01.tar
docker load -i fai-mod-ui_v01.tar
docker load -i fai-mod-ascari_v01.tar

@rem copy madsun
mkdir C:\FWExtractorTools\AIManagedService
copy /y FWExtractorTools\AIManagedService\* C:\FWExtractorTools\AIManagedService
