# README

## List Containers

### List All Containers

```
docker ps -a
```

### List Running Containers

```
docker ps
```

## Start Container

### Start Non-Persistent Container

```
docker run --interactive --rm --tty --volume "$(PWD)":/mnt cs61/f19
```

### Start Persistent Container

```
docker create --interactive --name NAME --tty --volume "$(PWD)":/mnt cs61/f19
docker start NAME
docker attach NAME
```

## Restart Persistent Container

```
docker start NAME
docker attach NAME
```

## Remove Persistent Container

*This will delete the container's contents.*

```
docker rm NAME
```

## Update Image (for new containers)

```
docker pull cs61/f19
```

1. `docker run -it -P --rm -v "$(PWD)":/mnt cs61/f19` to start container and mount `$PWD` at `/mnt`
