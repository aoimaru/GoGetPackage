[app/sources/217400821.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:7c841b0cd8d771d46a351b804b2186716aef6ba1f919753046ef6c1bda910953" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:fb0244675c191a26a2146ae3c47fe11f54a64dbb53b92cb742bcf83918ff5bde" [label="/bin/sh -c apt-get install -y     autoconf     automake     curl     g++     git     libtool     make     python     unzip     wget     zlib1g-dev" shape="box"];
  "sha256:f1520b591116f141355d69ec34285f982f7460b1471a70396fcff395e5fd9a50" [label="sha256:f1520b591116f141355d69ec34285f982f7460b1471a70396fcff395e5fd9a50" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:7c841b0cd8d771d46a351b804b2186716aef6ba1f919753046ef6c1bda910953" [label=""];
  "sha256:7c841b0cd8d771d46a351b804b2186716aef6ba1f919753046ef6c1bda910953" -> "sha256:fb0244675c191a26a2146ae3c47fe11f54a64dbb53b92cb742bcf83918ff5bde" [label=""];
  "sha256:fb0244675c191a26a2146ae3c47fe11f54a64dbb53b92cb742bcf83918ff5bde" -> "sha256:f1520b591116f141355d69ec34285f982f7460b1471a70396fcff395e5fd9a50" [label=""];
}

