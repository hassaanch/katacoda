
```
cd /home
dir
```{{execute}}

```
dotnet publish --configuration Release --output pub --runtime linux-x64 --self-contained
```{{execute}}

<kbd>Ctrl</kbd>+<kbd>c</kbd>

```
docker ps --latest
```{{execute}}

```
docker cp $(docker ps --latest --quiet):/home/pub .
```{{execute}}

```
dir
```{{execute}}

```
Demo.Client
```{{execute}}