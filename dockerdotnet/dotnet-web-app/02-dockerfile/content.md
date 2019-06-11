
```
FROM mcr.microsoft.com/dotnet/core/sdk:3.0-alpine
```

```
WORKDIR /web
```

```
COPY . ./
```

```
RUN dotnet publish --output site --configuration Release
```

```
ENTRYPOINT ["dotnet", "site/Demo.Web.dll"]
```

```
docker build --tag demoweb:1 .
```