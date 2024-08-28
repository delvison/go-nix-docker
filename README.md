This showcases a Go project that uses [nix](https://nixos.org/guides/how-nix-works/).

Additionally, this project is packaged into a Docker image that uses nix as well. This idea was inspired by the [Docker and Nix (DockerCon 2023)](https://www.youtube.com/watch?v=l17oRkhgqHE) talk.

**Why is this cool?** - because it produces a tiny Docker image that contains ONLY whats needed to run the application

```sh
$ docker inspect -f "{{ .Size }}" zero-to-nix-go | numfmt --to=si
43M
```
