setlocal

cd /d %~dp0
docker-compose up -d --build

endlocal