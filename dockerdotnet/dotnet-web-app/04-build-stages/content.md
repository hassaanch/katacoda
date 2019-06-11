
```
FROM mcr.microsoft.com/dotnet/core/sdk:3.0-alpine AS build

WORKDIR /web

COPY . ./

RUN dotnet publish --output site --configuration Release
```

```
FROM mcr.microsoft.com/dotnet/core/runtime:3.0-alpine
```

```
COPY --from=build /web/site .
```

```
ENTRYPOINT ["dotnet", "Demo.Web.dll"]
```

```
docker build --tag demoweb:2 .
```

```
docker run --publish 80:80 demoweb:2
```