FROM ubuntu:xenial
#FROM nginx:latest

RUN apt-get update && apt-get install wget -y

RUN wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb

RUN apt-get install apt-transport-https -y
RUN apt-get update
RUN apt-get install dotnet-sdk-2.2 -y
RUN export DOTNET_CLI_TELEMETRY_OPTOUT=1

RUN dotnet new webApp -o app --no-https

RUN apt update
RUN apt install nginx -y
#RUN service nginx start


