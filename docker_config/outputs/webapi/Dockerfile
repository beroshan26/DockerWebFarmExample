FROM microsoft/aspnetcore:1.1.2

ENV HOST_URI http://0.0.0.0:9901/
EXPOSE 9901

WORKDIR /app
COPY . .
 
ENTRYPOINT ["dotnet", "DockerWebFarmExample.dll"]
