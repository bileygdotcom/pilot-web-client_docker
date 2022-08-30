# syntax=docker/dockerfile:1
FROM bileyg/hangar:latest

LABEL project="Pilot-Web-Client"\
      version="1.1" \
      mantainer="bileyg"\
      company="Ascon Complex"

COPY build App/
COPY scripts /App/
WORKDIR /App
EXPOSE 5000
ENTRYPOINT ["dotnet", "Pilot.Web.dll"]
