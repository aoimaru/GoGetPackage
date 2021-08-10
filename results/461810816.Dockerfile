[app/sources/461810816.Dockerfile]
digraph {
  "sha256:5dcb4a340b4d3df48c7d25ae4ad1f8eda728863de6ccc01df7655baf0dff65d9" [label="docker-image://docker.io/library/python:3.7.0-alpine3.8" shape="ellipse"];
  "sha256:a629d68df56ee0083443a0532d94b030f917830b1a955cca9314cb12de63d575" [label="/bin/sh -c pip install scanless" shape="box"];
  "sha256:f3c80fe3de9d1575999f1ab5ffd83e3018ebacb6f770380625309ce33e8c7fda" [label="sha256:f3c80fe3de9d1575999f1ab5ffd83e3018ebacb6f770380625309ce33e8c7fda" shape="plaintext"];
  "sha256:5dcb4a340b4d3df48c7d25ae4ad1f8eda728863de6ccc01df7655baf0dff65d9" -> "sha256:a629d68df56ee0083443a0532d94b030f917830b1a955cca9314cb12de63d575" [label=""];
  "sha256:a629d68df56ee0083443a0532d94b030f917830b1a955cca9314cb12de63d575" -> "sha256:f3c80fe3de9d1575999f1ab5ffd83e3018ebacb6f770380625309ce33e8c7fda" [label=""];
}

