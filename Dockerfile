# syntax=docker/dockerfile:1
FROM pilotdev/hangar:1.4

LABEL project="Pilot-Web-Client"\
      version="1.5" \
      mantainer="bileyg"\
      company="Ascon Complex"

ENV ASPNETCORE_URLS=http://+:80
COPY build App/
WORKDIR /App
EXPOSE 5000
ENTRYPOINT ["dotnet", "Pilot.Web.dll"]
