@rem dockerをビルドしてイメージに出力する.

mkdir ..\02_docker_release_image\%1

@rem ----------------------------------------------------->
@rem ascari
cd ..\fai-mod-ascari
docker build -t fai-mod-ascari:v0.1 .
cd ..
cd 02_docker_release_image\%1
docker save -o fai-mod-ascari_v01.tar fai-mod-ascari:v0.1
cd ..
@rem -----------------------------------------------------<

@rem ----------------------------------------------------->
@rem logger
cd ..\fai-mod-logger
docker build -t fai-mod-logger:v0.1 .
cd ..
cd 02_docker_release_image\%1
docker save -o fai-mod-logger_v01.tar fai-mod-logger:v0.1
cd ..
@rem -----------------------------------------------------<

@rem ----------------------------------------------------->
@rem ui
cd ..\fai-mod-ui
docker build -t fai-mod-ui:v0.1 .
cd ..
cd 02_docker_release_image\%1
docker save -o fai-mod-ui_v01.tar fai-mod-ui:v0.1
cd ..
@rem -----------------------------------------------------<

@rem ----------------------------------------------------->
@rem madsun
cd ..\fai-mod-madsun

mkdir ..\02_docker_release_image\%1\FWExtractorTools\AIManagedService

copy /y Release_bin\* ..\02_docker_release_image\%1\FWExtractorTools\AIManagedService
@rem -----------------------------------------------------<

@rem ----------------------------------------------------->
@rem docker-compose
cd ..\fai-env-compose

copy /y docker-compose.yml ..\02_docker_release_image\%1

cd ..
@rem -----------------------------------------------------<

cd fai-env-script

@rem ----------------------------------------------------->
@rem boot_set

copy /y load_image_all.bat ..\02_docker_release_image\%1
copy /y remove_docker_all.bat ..\02_docker_release_image\%1
copy /y boot_all.bat ..\02_docker_release_image\%1
copy /y execute_total_deploy.bat ..\02_docker_release_image\%1
@rem -----------------------------------------------------<

