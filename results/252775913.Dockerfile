[app/sources/252775913.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:1b15eedd9c5544228c15a15f98a69905a0796ab126f47b784909ec564c7d3eeb" [label="/bin/sh -c apk update && apk add socat" shape="box"];
  "sha256:cf9323da774be1f6cac425bc8d40ecfd4d490568060d9df336547fd64e4c2b10" [label="sha256:cf9323da774be1f6cac425bc8d40ecfd4d490568060d9df336547fd64e4c2b10" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:1b15eedd9c5544228c15a15f98a69905a0796ab126f47b784909ec564c7d3eeb" [label=""];
  "sha256:1b15eedd9c5544228c15a15f98a69905a0796ab126f47b784909ec564c7d3eeb" -> "sha256:cf9323da774be1f6cac425bc8d40ecfd4d490568060d9df336547fd64e4c2b10" [label=""];
}

