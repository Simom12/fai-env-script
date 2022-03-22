# fai-env-script

## 実行環境
  ・Windows10  
  ・Docker Desktop  
  ・WSL2  

## ソース準備
  同一フォルダに全レポジトリを準備する。  

## スクリプト

> create_image_all.bat  
> [引数] アウトプットフォルダ名  
> 例) `$create_image_all 220320`  
  
  ・"..\02_docker_release_image\%1"ここに出力される  
  ・全部のイメージをビルドして、tarファイルとしてローカルに保存する  
  ・AI Managed Serviceの実行ファイルをコピーする  
  
  
> remove_docker_all.bat
  ・全部のコンテナを停止し、コンテナの削除、イメージの削除を行う  
  
  
> load_image_all.bat
  ・ローカルのtarをイメージとしてロードする  
  ・AI Managed ServiceをCドライブへコピーする  
  
  
> boot_all.bat
  ・すべてのコンテナとAI Managed Serviceを起動する  
  ・一度実行すれば再起動しても大丈夫  
  
  
> local_build_and_run.bat
  ・ローカルでコンテナを動かす
  ・全部のイメージをビルドして、コンテナを起動する  
  ・AI Managed Serviceは含まない  
  
  
> local_run_from_image_all.bat
  ・ローカルでコンテナを動かす
  ・すでにあるイメージを使用してコンテナを起動する  
  ・AI Managed Serviceは含まない  
