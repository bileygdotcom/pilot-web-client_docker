# syntax=docker/dockerfile:1
FROM bileyg/hangar:latest

LABEL project="Pilot-Web-Client"\
      version="1.2" \
      mantainer="bileyg"\
      company="Ascon Complex"

ENV ASPNETCORE_URLS=http://+:80
COPY build App/
COPY scripts /App/
WORKDIR /App
EXPOSE 5000
ENTRYPOINT ["dotnet", "Pilot.Web.dll"]
