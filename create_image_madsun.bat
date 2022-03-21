
@rem ----------------------------------------------------->
@rem madsun
cd ..\fai-mod-madsun

mkdir ..\02_docker_release_image\%1\FWExtractorTools\AIManagedService

copy /y Release_bin\* ..\02_docker_release_image\%1\FWExtractorTools\AIManagedService
cd ..
@rem -----------------------------------------------------<

cd fai-env-script

