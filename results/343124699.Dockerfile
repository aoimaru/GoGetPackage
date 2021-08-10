[app/sources/343124699.Dockerfile]
digraph {
  "sha256:9b3043d94c2a91da62ecea633f9c28a3133d8901367686ed05e6be24ed7a5497" [label="docker-image://docker.io/library/python:3.6-alpine3.8" shape="ellipse"];
  "sha256:37e37e2cf6f44319f53ed0750549c985e0a0edd40278209e725deb632d322d97" [label="local://context" shape="ellipse"];
  "sha256:8a158835fc6549a82a015af84cb3be14a29ef57dc134d0ce657a90663d57aa7d" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:4e50e95ea480adcd6070f036e1408892b1e146d014562577a5f2055066eaedb9" [label="mkdir{path=/code}" shape="note"];
  "sha256:3533502ce7680339f09f579067c45f0c4fcc49f8a2439aef0e9af1b30d95cbf1" [label="/bin/sh -c apk update && apk add --no-cache       --virtual=.build-dependencies       gcc       musl-dev       postgresql-dev       git       python3-dev       jpeg-dev       zlib-dev       freetype-dev       lcms2-dev       openjpeg-dev       tiff-dev       tk-dev       tcl-dev       harfbuzz-dev       fribidi-dev &&     python -m pip --no-cache install -U pip &&     python -m pip --no-cache install -r requirements.txt &&     apk del --purge .build-dependencies" shape="box"];
  "sha256:9534bab03eebbf8f17ac92ff3ac5e686bd709ce2fc30ed279d9ea9ad305a0196" [label="sha256:9534bab03eebbf8f17ac92ff3ac5e686bd709ce2fc30ed279d9ea9ad305a0196" shape="plaintext"];
  "sha256:9b3043d94c2a91da62ecea633f9c28a3133d8901367686ed05e6be24ed7a5497" -> "sha256:8a158835fc6549a82a015af84cb3be14a29ef57dc134d0ce657a90663d57aa7d" [label=""];
  "sha256:37e37e2cf6f44319f53ed0750549c985e0a0edd40278209e725deb632d322d97" -> "sha256:8a158835fc6549a82a015af84cb3be14a29ef57dc134d0ce657a90663d57aa7d" [label=""];
  "sha256:8a158835fc6549a82a015af84cb3be14a29ef57dc134d0ce657a90663d57aa7d" -> "sha256:4e50e95ea480adcd6070f036e1408892b1e146d014562577a5f2055066eaedb9" [label=""];
  "sha256:4e50e95ea480adcd6070f036e1408892b1e146d014562577a5f2055066eaedb9" -> "sha256:3533502ce7680339f09f579067c45f0c4fcc49f8a2439aef0e9af1b30d95cbf1" [label=""];
  "sha256:3533502ce7680339f09f579067c45f0c4fcc49f8a2439aef0e9af1b30d95cbf1" -> "sha256:9534bab03eebbf8f17ac92ff3ac5e686bd709ce2fc30ed279d9ea9ad305a0196" [label=""];
}

