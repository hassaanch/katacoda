FROM mcr.microsoft.com/dotnet/core/sdk:3.0-alpine

WORKDIR /app

COPY . ./

RUN dotnet restore

RUN dotnet publish --output out --configuration Release

ENTRYPOINT ["dotnet", "Demo.Client.dll"]