
mkdir ..\02_docker_release_image\%1

@rem ----------------------------------------------------->
@rem ui
cd ..\fai-mod-ui
docker build -t fai-mod-ui:v0.1 .
cd ..
cd 02_docker_release_image\%1
docker save -o fai-mod-ui_v01.tar fai-mod-ui:v0.1
cd ..\..
@rem -----------------------------------------------------<

cd fai-env-script
