```
docker run --detach --publish 80:80 demoweb:1
```

```
docker ps
```

```
docker stop $(docker ps --quiet)
```

```
docker run --detach --publish 80 demoweb:1
```

```
docker ps
```

```
docker stop $(docker ps --quiet)
```