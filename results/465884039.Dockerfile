[app/sources/465884039.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:038172c892f6c078d9de63c4c071c980adc86ef838ec23a6b6711bea3478bf83" [label="/bin/sh -c set -xe     && apk add --no-cache ca-certificates                           ffmpeg                           openssl                           python3     && pip3 install youtube-dl" shape="box"];
  "sha256:e18bbad954ed19cf112ad25900b57105f36805895a799fb13d7c931434f7a342" [label="local://context" shape="ellipse"];
  "sha256:2115b41e25f193be6689475b07865b9d418630ee4b24b5985144f79cf90a354c" [label="copy{src=/youtube-dl-api.py, dest=/youtube-dl-api.py}" shape="note"];
  "sha256:5521785722e4d2e9fe6b452a78925cdcb3d5177e667e8f305297db35df4ac051" [label="/bin/sh -c chmod +x /youtube-dl-api.py" shape="box"];
  "sha256:f5d8915172a71eefff27bc67dac3a466000f52a00062679ca07234828249923d" [label="mkdir{path=/data}" shape="note"];
  "sha256:0af95d6ddde71f52fc4f5cb8f801fc1d97ad43b2a7c3b5f111e8142ddad28e11" [label="sha256:0af95d6ddde71f52fc4f5cb8f801fc1d97ad43b2a7c3b5f111e8142ddad28e11" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:038172c892f6c078d9de63c4c071c980adc86ef838ec23a6b6711bea3478bf83" [label=""];
  "sha256:038172c892f6c078d9de63c4c071c980adc86ef838ec23a6b6711bea3478bf83" -> "sha256:2115b41e25f193be6689475b07865b9d418630ee4b24b5985144f79cf90a354c" [label=""];
  "sha256:e18bbad954ed19cf112ad25900b57105f36805895a799fb13d7c931434f7a342" -> "sha256:2115b41e25f193be6689475b07865b9d418630ee4b24b5985144f79cf90a354c" [label=""];
  "sha256:2115b41e25f193be6689475b07865b9d418630ee4b24b5985144f79cf90a354c" -> "sha256:5521785722e4d2e9fe6b452a78925cdcb3d5177e667e8f305297db35df4ac051" [label=""];
  "sha256:5521785722e4d2e9fe6b452a78925cdcb3d5177e667e8f305297db35df4ac051" -> "sha256:f5d8915172a71eefff27bc67dac3a466000f52a00062679ca07234828249923d" [label=""];
  "sha256:f5d8915172a71eefff27bc67dac3a466000f52a00062679ca07234828249923d" -> "sha256:0af95d6ddde71f52fc4f5cb8f801fc1d97ad43b2a7c3b5f111e8142ddad28e11" [label=""];
}

