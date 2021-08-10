[app/sources/349738951.Dockerfile]
digraph {
  "sha256:1a483a6972c9d8e93cf6123fc432d6fd76c2aaf8f29d97faa0b28c7595571835" [label="docker-image://docker.io/library/cassandra:3.11" shape="ellipse"];
  "sha256:5c280c0eadd4f1c4d44a2acbc19716d7fefb8d2678f33f9fa137e1e6384acd8e" [label="/bin/sh -c apt-get update; DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends default-jdk" shape="box"];
  "sha256:ac038f53ce1468d7e46d3a2f986cc25003a196e03279b22c0a7afff628d01a4b" [label="sha256:ac038f53ce1468d7e46d3a2f986cc25003a196e03279b22c0a7afff628d01a4b" shape="plaintext"];
  "sha256:1a483a6972c9d8e93cf6123fc432d6fd76c2aaf8f29d97faa0b28c7595571835" -> "sha256:5c280c0eadd4f1c4d44a2acbc19716d7fefb8d2678f33f9fa137e1e6384acd8e" [label=""];
  "sha256:5c280c0eadd4f1c4d44a2acbc19716d7fefb8d2678f33f9fa137e1e6384acd8e" -> "sha256:ac038f53ce1468d7e46d3a2f986cc25003a196e03279b22c0a7afff628d01a4b" [label=""];
}

