@rem dockerをビルドしてイメージに出力する.

@rem ----------------------------------------------------->
@rem ascari
cd ..\fai-mod-ascari
docker build -t fai-mod-ascari:v0.1 .
@rem -----------------------------------------------------<

@rem ----------------------------------------------------->
@rem logger
cd ..\fai-mod-logger
docker build -t fai-mod-logger:v0.1 .
@rem -----------------------------------------------------<

@rem ----------------------------------------------------->
@rem ui
cd ..\fai-mod-ui
docker build -t fai-mod-ui:v0.1 .
@rem -----------------------------------------------------<

cd ..\fai-env-compose

docker-compose up -d

cd ..\fai-env-script
