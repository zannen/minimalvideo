# Minimal Video

A minimal docker container to check that docker containers can run graphical programs.
The Storj Share Daemon+CLI (https://github.com/Storj/storjshare-daemon).

## Pull

```bash
docker pull oreandawe/minimalvideo:alpine-3.9
```

## Local Build

Alternatively, build the container locally:

```bash
git clone https://github.com/zannen/minimalvideo
cd minimalvideo
make build-alpine-3.9
```

## Run

```bash
make run-alpine-3.9
```

## Stop

Just press `Ctrl-C`, then wait a second.


## Troubleshooting

* `No protocol specified` and/or `Error: Can't open display: :0`
    Try `xhost +`
