dotnet new console --name Application --output .
docker pull mcr.microsoft.com/azure-storage/azurite:latest
docker run -p 10000:10000 mcr.microsoft.com/azure-storage/azurite