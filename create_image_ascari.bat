
mkdir ..\02_docker_release_image\%1

@rem ----------------------------------------------------->
@rem ascari
cd ..\fai-mod-ascari
docker build -t fai-mod-ascari:v0.1 .
cd ..
cd 02_docker_release_image\%1
docker save -o fai-mod-ascari_v01.tar fai-mod-ascari:v0.1
cd ..\..
@rem -----------------------------------------------------<

cd fai-env-script
