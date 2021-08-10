[app/sources/141827636.Dockerfile]
digraph {
  "sha256:b41aada2e0db7f77cb7934dd88e043ad75b1e586786d7a5fb9a7ad2bcf361fe7" [label="docker-image://docker.io/library/python:3.6.6-alpine3.8" shape="ellipse"];
  "sha256:65485707e2926bd5f8dfb665e3d0c0b32c95e82b975af701f2b5e9600d50da33" [label="/bin/sh -c apk --no-cache add g++       && apk --no-cache add zeromq-dev       && pip install locustio pyzmq" shape="box"];
  "sha256:abcfe829628a4649973910e1ea497c9c2171f753fce8d4c008ceda458c4d76f3" [label="sha256:abcfe829628a4649973910e1ea497c9c2171f753fce8d4c008ceda458c4d76f3" shape="plaintext"];
  "sha256:b41aada2e0db7f77cb7934dd88e043ad75b1e586786d7a5fb9a7ad2bcf361fe7" -> "sha256:65485707e2926bd5f8dfb665e3d0c0b32c95e82b975af701f2b5e9600d50da33" [label=""];
  "sha256:65485707e2926bd5f8dfb665e3d0c0b32c95e82b975af701f2b5e9600d50da33" -> "sha256:abcfe829628a4649973910e1ea497c9c2171f753fce8d4c008ceda458c4d76f3" [label=""];
}

