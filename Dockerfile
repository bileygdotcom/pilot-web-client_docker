# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/dotnet/runtime:5.0
MAINTAINER bileyg <volkov_va@ascon.ru>
COPY build App/
COPY scripts /App/
WORKDIR /App
EXPOSE 5000
RUN apt-get update && apt-get install -y mupdf-tools
ENTRYPOINT ["dotnet", "Pilot.Web.dll"]
