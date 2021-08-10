[app/sources/173908290.Dockerfile]
digraph {
  "sha256:5831750ae2a81477d4aad8bf7400073a7c8f0df0a6b79ca241c38e1cb5c5f96b" [label="local://context" shape="ellipse"];
  "sha256:ed96a37f8f49a5eef9dd010e78f254b22d1981760d4843351e03ae3e821a5fb7" [label="docker-image://docker.io/library/python:3.6-stretch" shape="ellipse"];
  "sha256:f2f7bf73ef81a1d64e8e23288effd28fbcabf45c76b64464856cda6839a3c35a" [label="/bin/sh -c python3 -m venv /venv && /venv/bin/pip install -U pip setuptools" shape="box"];
  "sha256:fea60411e69019b0cc5ab4b418f2ee808d8e16251a18a9edc47ffaad6bec4c6a" [label="copy{src=/requirements.txt, dest=/opentaxii/},copy{src=/requirements-docker.txt, dest=/opentaxii/}" shape="note"];
  "sha256:60585f1e6e8634592d14cc6a520c1afd2958bb0ecd1507ef697a93d04cbef236" [label="/bin/sh -c /venv/bin/pip install -r /opentaxii/requirements.txt -r /opentaxii/requirements-docker.txt" shape="box"];
  "sha256:4c4888df9027107ed0fe4070ed8b3dc94b3d2bc935f81ffbc8f7abd48984c12a" [label="copy{src=/, dest=/opentaxii}" shape="note"];
  "sha256:8034d69b267b7ac57e9681f714deca6c61b1e8228b153cb7f29eabbd7af0d3d4" [label="/bin/sh -c /venv/bin/pip install /opentaxii" shape="box"];
  "sha256:6d057cc2302805b5818acee456fa932a931eabf1a4f08c364c2d85d42b6a1bc4" [label="docker-image://docker.io/library/python:3.6-slim-stretch" shape="ellipse"];
  "sha256:6eeb5940b2d0352725f96e3b4dd4212003a8b07f2265a983298bd42460b47d2c" [label="copy{src=/venv, dest=/venv}" shape="note"];
  "sha256:81c5f8a1021dfe56f4483cc1fdfbbd8602501a9a584ed71124924f8983d998b5" [label="/bin/sh -c mkdir /data /input" shape="box"];
  "sha256:2be55245f40cecb7756e4730f97fa1dc09d696440ae472ee393fb35fd2a58101" [label="copy{src=/docker/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:b9d85cf2388f78d4d6e483a2fd7eb2261ff7101e834502e13ccda4f8912d25e6" [label="sha256:b9d85cf2388f78d4d6e483a2fd7eb2261ff7101e834502e13ccda4f8912d25e6" shape="plaintext"];
  "sha256:ed96a37f8f49a5eef9dd010e78f254b22d1981760d4843351e03ae3e821a5fb7" -> "sha256:f2f7bf73ef81a1d64e8e23288effd28fbcabf45c76b64464856cda6839a3c35a" [label=""];
  "sha256:f2f7bf73ef81a1d64e8e23288effd28fbcabf45c76b64464856cda6839a3c35a" -> "sha256:fea60411e69019b0cc5ab4b418f2ee808d8e16251a18a9edc47ffaad6bec4c6a" [label=""];
  "sha256:5831750ae2a81477d4aad8bf7400073a7c8f0df0a6b79ca241c38e1cb5c5f96b" -> "sha256:fea60411e69019b0cc5ab4b418f2ee808d8e16251a18a9edc47ffaad6bec4c6a" [label=""];
  "sha256:fea60411e69019b0cc5ab4b418f2ee808d8e16251a18a9edc47ffaad6bec4c6a" -> "sha256:60585f1e6e8634592d14cc6a520c1afd2958bb0ecd1507ef697a93d04cbef236" [label=""];
  "sha256:60585f1e6e8634592d14cc6a520c1afd2958bb0ecd1507ef697a93d04cbef236" -> "sha256:4c4888df9027107ed0fe4070ed8b3dc94b3d2bc935f81ffbc8f7abd48984c12a" [label=""];
  "sha256:5831750ae2a81477d4aad8bf7400073a7c8f0df0a6b79ca241c38e1cb5c5f96b" -> "sha256:4c4888df9027107ed0fe4070ed8b3dc94b3d2bc935f81ffbc8f7abd48984c12a" [label=""];
  "sha256:4c4888df9027107ed0fe4070ed8b3dc94b3d2bc935f81ffbc8f7abd48984c12a" -> "sha256:8034d69b267b7ac57e9681f714deca6c61b1e8228b153cb7f29eabbd7af0d3d4" [label=""];
  "sha256:6d057cc2302805b5818acee456fa932a931eabf1a4f08c364c2d85d42b6a1bc4" -> "sha256:6eeb5940b2d0352725f96e3b4dd4212003a8b07f2265a983298bd42460b47d2c" [label=""];
  "sha256:8034d69b267b7ac57e9681f714deca6c61b1e8228b153cb7f29eabbd7af0d3d4" -> "sha256:6eeb5940b2d0352725f96e3b4dd4212003a8b07f2265a983298bd42460b47d2c" [label=""];
  "sha256:6eeb5940b2d0352725f96e3b4dd4212003a8b07f2265a983298bd42460b47d2c" -> "sha256:81c5f8a1021dfe56f4483cc1fdfbbd8602501a9a584ed71124924f8983d998b5" [label=""];
  "sha256:81c5f8a1021dfe56f4483cc1fdfbbd8602501a9a584ed71124924f8983d998b5" -> "sha256:2be55245f40cecb7756e4730f97fa1dc09d696440ae472ee393fb35fd2a58101" [label=""];
  "sha256:5831750ae2a81477d4aad8bf7400073a7c8f0df0a6b79ca241c38e1cb5c5f96b" -> "sha256:2be55245f40cecb7756e4730f97fa1dc09d696440ae472ee393fb35fd2a58101" [label=""];
  "sha256:2be55245f40cecb7756e4730f97fa1dc09d696440ae472ee393fb35fd2a58101" -> "sha256:b9d85cf2388f78d4d6e483a2fd7eb2261ff7101e834502e13ccda4f8912d25e6" [label=""];
}

