
mkdir ..\02_docker_release_image\%1

@rem ----------------------------------------------------->
@rem logger
cd ..\fai-mod-logger
docker build -t fai-mod-logger:v0.1 .
cd ..
cd 02_docker_release_image\%1
docker save -o fai-mod-logger_v01.tar fai-mod-logger:v0.1
cd ..\..
@rem -----------------------------------------------------<

cd fai-env-script
