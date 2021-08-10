[app/sources/360637888.Dockerfile]
digraph {
  "sha256:1c6291f0d703b27c874fb37519a54e454b23a9886d2ca21361a46d024d5e3d1f" [label="docker-image://docker.io/library/python:2-slim@sha256:6c1ffdff499e29ea663e6e67c9b6b9a3b401d554d2c9f061f9a45344e3992363" shape="ellipse"];
  "sha256:eee00c77909eb6d0f7422c528dd32436992e7b898310a38ce7e39387364bb5dd" [label="mkdir{path=/src/vtapi}" shape="note"];
  "sha256:d992f96f0c8d071d142b415e081182f003263656ab4dcbe0bcf915d7e39753f4" [label="local://context" shape="ellipse"];
  "sha256:0e35635361b4faff5c47fb2de01ba5cda49e19fd9ecd24fcd0140cd0e01f087e" [label="copy{src=/, dest=/src/vtapi/}" shape="note"];
  "sha256:8570cfa386e0e085069554f46f124a60910f248f4025843ab639d2b6cf69c38a" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:73ae494b3eb95c82747e84e0a326062592dda2c2b6fc9c1b93c070ee9a5efbc4" [label="sha256:73ae494b3eb95c82747e84e0a326062592dda2c2b6fc9c1b93c070ee9a5efbc4" shape="plaintext"];
  "sha256:1c6291f0d703b27c874fb37519a54e454b23a9886d2ca21361a46d024d5e3d1f" -> "sha256:eee00c77909eb6d0f7422c528dd32436992e7b898310a38ce7e39387364bb5dd" [label=""];
  "sha256:eee00c77909eb6d0f7422c528dd32436992e7b898310a38ce7e39387364bb5dd" -> "sha256:0e35635361b4faff5c47fb2de01ba5cda49e19fd9ecd24fcd0140cd0e01f087e" [label=""];
  "sha256:d992f96f0c8d071d142b415e081182f003263656ab4dcbe0bcf915d7e39753f4" -> "sha256:0e35635361b4faff5c47fb2de01ba5cda49e19fd9ecd24fcd0140cd0e01f087e" [label=""];
  "sha256:0e35635361b4faff5c47fb2de01ba5cda49e19fd9ecd24fcd0140cd0e01f087e" -> "sha256:8570cfa386e0e085069554f46f124a60910f248f4025843ab639d2b6cf69c38a" [label=""];
  "sha256:8570cfa386e0e085069554f46f124a60910f248f4025843ab639d2b6cf69c38a" -> "sha256:73ae494b3eb95c82747e84e0a326062592dda2c2b6fc9c1b93c070ee9a5efbc4" [label=""];
}

