FROM microsoft/dotnet:1.0.3-sdk-projectjson

ENV DOTNET_CLI_TELEMETRY_OPTOUT 1

RUN mkdir -p /app/IO.Swagger
COPY . /app/IO.Swagger
WORKDIR /app/IO.Swagger

EXPOSE 5000/tcp

RUN ["dotnet", "restore"]
ENTRYPOINT ["dotnet", "run", "-p", "project.json", "web"]
