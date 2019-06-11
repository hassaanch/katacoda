
<pre class="file" data-filename="Demo.Client.csproj" data-target="replace">
&lt;Project Sdk="Microsoft.NET.Sdk"&gt;
  &lt;PropertyGroup&gt;
    &lt;OutputType&gt;Exe&lt;/OutputType&gt;
    &lt;TargetFramework&gt;netcoreapp3.0&lt;/TargetFramework&gt;
  &lt;/PropertyGroup&gt;
&lt;/Project&gt;
</pre>

<pre class="file" data-filename="Program.cs" data-target="replace">
using System;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Hello World");
    }
}
</pre>

```
dir
```{{execute}}

```
cat Demo.Client.csproj
```{{execute}}

```
cat Program.cs
```{{execute}}

```
dotnet --version
```{{execute}}