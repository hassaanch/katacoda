using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Http;

public class Startup
{
    string css = "<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">";
    string title = "Hey .NET User Group!";

    public void Configure(IApplicationBuilder app) =>
        app.Run(context =>
            context.Response.WriteAsync($@"
                <html>
                    <head>
                        {css}
                    </head>
                    <body class=""container"">
                        <h1 class=""display-1"">
                            {title}
                        </h1>
                    </body>
                </html>
            ")
	    );
}