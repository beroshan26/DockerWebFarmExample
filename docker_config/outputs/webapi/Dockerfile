FROM microsoft/aspnetcore:1.1.2
 
WORKDIR /app
COPY . .
 
EXPOSE 9901/tcp

ENTRYPOINT ["dotnet", "DockerWebFarmExample.dll", "--urls", "https://0.0.0.0:9901"]
