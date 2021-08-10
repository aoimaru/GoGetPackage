[app/sources/252772943.Dockerfile]
digraph {
  "sha256:145685dd8404afaf86330e008cb26633bfe8777e480881027c9d4ff8570c9c49" [label="docker-image://docker.io/library/python:3.4-onbuild" shape="ellipse"];
  "sha256:a76d8c4a12a049b155b6ea8682d5048e2af1053d2fa43990e40b7958956e6978" [label="/bin/sh -c apt-get update && apt-get -y install wamerican" shape="box"];
  "sha256:c6d16e3cf490de50565d2b85b3f7087da2514ddf0a49b77494e80b58acdc3751" [label="/bin/sh -c python setup.py develop" shape="box"];
  "sha256:47394b86dc1be7b9ad23b359d5fa77ca152620a4cd16e0222130387bbcacd71b" [label="sha256:47394b86dc1be7b9ad23b359d5fa77ca152620a4cd16e0222130387bbcacd71b" shape="plaintext"];
  "sha256:145685dd8404afaf86330e008cb26633bfe8777e480881027c9d4ff8570c9c49" -> "sha256:a76d8c4a12a049b155b6ea8682d5048e2af1053d2fa43990e40b7958956e6978" [label=""];
  "sha256:a76d8c4a12a049b155b6ea8682d5048e2af1053d2fa43990e40b7958956e6978" -> "sha256:c6d16e3cf490de50565d2b85b3f7087da2514ddf0a49b77494e80b58acdc3751" [label=""];
  "sha256:c6d16e3cf490de50565d2b85b3f7087da2514ddf0a49b77494e80b58acdc3751" -> "sha256:47394b86dc1be7b9ad23b359d5fa77ca152620a4cd16e0222130387bbcacd71b" [label=""];
}

