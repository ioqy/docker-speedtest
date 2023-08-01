# Build

```sh
chmod +x build.sh
./build.sh
```

# Run

```sh
docker run --rm speedtest
```

```sh
docker run --rm --network=container:gluetun speedtest
```

# Remove

```sh
docker image rm speedtest
docker image prune --all --force
```
