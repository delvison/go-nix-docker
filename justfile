port := "3128"
image_name := "zero-to-nix-go"

@build:
  docker build -t {{image_name}} -f Dockerfile.nix .

@run: build
  docker run --rm -p {{port}}:8080 {{image_name}}

