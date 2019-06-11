Test

```
<Project Sdk="Microsoft.NET.Sdk.Web">
    <PropertyGroup>
        <TargetFramework>netcoreapp3.0</TargetFramework>
    </PropertyGroup>
    <ItemGroup>
        <PackageReference Include="Microsoft.AspNetCore" />
    </ItemGroup>
</Project>
```

```
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Http;

public class Startup
{
    string css = "<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">";
    string title = "Hey .NET User Group!";

    public void Configure(IApplicationBuilder app) =>
        app.Run(context =>
            context.Response.WriteAsync($"{css}<h1 class=\"display-1\">{title}</h1>")
	    );
}
```

```
using Microsoft.AspNetCore.Hosting;

public class Program
{
    public static void Main(string[] args) =>
        new WebHostBuilder()
            .UseKestrel()
            .UseStartup<Startup>()
            .Build().Run();
}
```

```
FROM mcr.microsoft.com/dotnet/core/sdk:3.0-alpine

WORKDIR /web

COPY . ./

RUN dotnet publish --output site --configuration Release

ENTRYPOINT ["dotnet", "site/Demo.Web.dll"]
```

```
FROM mcr.microsoft.com/dotnet/core/sdk:3.0-alpine AS build

WORKDIR /web

COPY . ./

RUN dotnet publish --output site --configuration Release

FROM mcr.microsoft.com/dotnet/core/runtime:3.0-alpine

COPY --from=build /web/site .

ENTRYPOINT ["dotnet", "Demo.Web.dll"]
```