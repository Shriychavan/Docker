@echo off
setlocal


REM Check if version argument is passed
if "%~1"=="" (
    echo Usage: push_docker.cmd [version]
    echo Example: push_docker.cmd v1.0.4
    exit /b 1
)
aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 213801610933.dkr.ecr.ap-northeast-1.amazonaws.com/kuber-stg-backend
REM Set version from argument
set VERSION=%~1

REM Docker image name
set IMAGE_NAME=kuber-stg-backend

REM AWS ECR repository URI
set ECR_REPO=213801610933.dkr.ecr.ap-northeast-1.amazonaws.com/kuber-stg-backend

REM Build the Docker image
echo Building Docker image %IMAGE_NAME%:%VERSION% ...
docker build -t %IMAGE_NAME%:%VERSION% .

REM Tag the image for ECR
echo Tagging image for ECR repository...
docker tag %IMAGE_NAME%:%VERSION% %ECR_REPO%:%VERSION%

REM Push the image to ECR
echo Pushing image to ECR repository...
docker push %ECR_REPO%:%VERSION%

echo Done!
endlocal
