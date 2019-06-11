Let's start build our first .NET Core projects using Docker. Our current terminal represents a machine with Docker installed. Unfortunately, our host machine does not have .NET Core installed.

We can validate that .NET Core is not installed by attempting to run a .NET CLI command:

```
dotnet --version
```{{execute}}

Since we do not have the .NET CLI available, we need to build our project manually. Fortunately for us, we have some sample code to start with.

First, we are going to create a **.csproj** file four our project. We will name this file (and the project) ``Demo.Client`` and keep most settings set to their default values:

<pre class="file" data-filename="Demo.Client.csproj" data-target="replace">
&lt;Project Sdk="Microsoft.NET.Sdk"&gt;
    &lt;PropertyGroup&gt;
        &lt;OutputType&gt;Exe&lt;/OutputType&gt;
        &lt;TargetFramework&gt;netcoreapp3.0&lt;/TargetFramework&gt;
    &lt;/PropertyGroup&gt;
    &lt;ItemGroup&gt;
        &lt;RuntimeHostConfigurationOption Include="System.Globalization.Invariant" Value="true" /&gt;
    &lt;/ItemGroup&gt;
&lt;/Project&gt;
</pre>

> **Note**: If you are wondering about the ``RuntimeHostConfigurationOption`` option, this is to ensure that the machine running our applications does not require any ICU libraries installed.

We can also create a **Program.cs** file with a ``Program.Main`` static entry point method. In this example, we simply say ``Hello World``. You can replace this greeting with any greeting you like:

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

> **Note**: The editor will automatically save your files.

Let's use the ``dir`` command to view our two new files:

```
dir
```{{execute}}

We can also use the ``cat`` command to view the contents of each file:

```
cat Demo.Client.csproj
```{{execute}}

```
cat Program.cs
```{{execute}}