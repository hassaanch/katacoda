Let's take the skills we learned creating a .NET Core application in Docker to build a .NET Core website.

A really simple website demo would be to host a static HTML webpage that is returned as the response for a HTTP GET request.

To do this, we need to create a new .NET Core project file (named **Demo.Web.csproj**) that references the ``Microsoft.NET.Sdk.Web`` SDK instead of ``Microsoft.NET.Sdk``:

<pre class="file" data-filename="Demo.Web.csproj" data-target="replace">
&lt;Project Sdk="Microsoft.NET.Sdk.Web"&gt;
    &lt;PropertyGroup&gt;
        &lt;TargetFramework&gt;netcoreapp3.0&lt;/TargetFramework&gt;
    &lt;/PropertyGroup&gt;
    &lt;ItemGroup&gt;
        &lt;PackageReference Include="Microsoft.AspNetCore" /&gt;
    &lt;/ItemGroup&gt;
&lt;/Project&gt;
</pre>

Every .NET Core project has a entry point static method just like a console application. In this example, we even named our entrypoint ``Program.Main`` just like we did with our console application. In this implementation, we use a class named ``Startup`` to implement a webserver and then run the server:

<pre class="file" data-filename="Program.cs" data-target="replace">
using Microsoft.AspNetCore.Hosting;

public class Program
{
    public static void Main(string[] args) =>
        new WebHostBuilder()
            .UseKestrel()
            .UseStartup<Startup>()
            .Build()
            .Run();
}
</pre>

And here is our web server implementation. This simply uses the ``IApplicationBuilder`` class to run a web server that always responds with static HTMl content on every request. We had a little fun here and used bootstrap styling:

<pre class="file" data-filename="Startup.cs" data-target="replace">
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Http;

public class Startup
{
    string css = "&lt;link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\"&gt;";
    string title = "Hey .NET User Group!";

    public void Configure(IApplicationBuilder app) =&gt;
        app.Run(context =&gt;
            context.Response.WriteAsync($"&lt;html&gt;&lt;head&gt;{css}&lt;/head&gt;&lt;body class=\"container\"&gt;&lt;h1 class=\"display-1\"&gt;{title}&lt;/h1&gt;&lt;/body&gt;&lt;/html&gt;")
	    );
}
</pre>

> **Note**: The editor will automatically save your files.