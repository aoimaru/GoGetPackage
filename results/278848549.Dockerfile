[app/sources/278848549.Dockerfile]
digraph {
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" [label="docker-image://docker.io/library/ubuntu:17.10" shape="ellipse"];
  "sha256:ee9b2eace693dbf50ef3abfa9230d100bd4f85cf760c8560f37fae35a563722f" [label="/bin/sh -c apt-get update && apt-get install -y \tnginx\t\tpython3-jinja2\t\tpython3-pyinotify\t\tpython3-requests\t\t&& rm -rf /etc/nginx/sites-enabled/default" shape="box"];
  "sha256:0a41af5d94b0f1a0cc6210cd668d22bccbf5754e8aa71e5f1dd986e689f490f4" [label="local://context" shape="ellipse"];
  "sha256:4294315e33ab95512e25313a2a9fc1cb666ad60681f475f19fac1cbff68d27ef" [label="copy{src=/templates, dest=/root/templates}" shape="note"];
  "sha256:ccf53f2b33a533be68f64af461648d800104cd44cf896220fface595e13310fa" [label="copy{src=/config-render.py, dest=/root/config-render.py}" shape="note"];
  "sha256:3bcef27368d0d4f5f8b66898351813c490cbae76d26f3e4ac9dffef0dd92c655" [label="copy{src=/kick-update.py, dest=/root/kick-update.py}" shape="note"];
  "sha256:36e446fc6f49087f01ab35800ac58f43c7186b7693801b08bc0aaf74023a43e8" [label="sha256:36e446fc6f49087f01ab35800ac58f43c7186b7693801b08bc0aaf74023a43e8" shape="plaintext"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" -> "sha256:ee9b2eace693dbf50ef3abfa9230d100bd4f85cf760c8560f37fae35a563722f" [label=""];
  "sha256:ee9b2eace693dbf50ef3abfa9230d100bd4f85cf760c8560f37fae35a563722f" -> "sha256:4294315e33ab95512e25313a2a9fc1cb666ad60681f475f19fac1cbff68d27ef" [label=""];
  "sha256:0a41af5d94b0f1a0cc6210cd668d22bccbf5754e8aa71e5f1dd986e689f490f4" -> "sha256:4294315e33ab95512e25313a2a9fc1cb666ad60681f475f19fac1cbff68d27ef" [label=""];
  "sha256:4294315e33ab95512e25313a2a9fc1cb666ad60681f475f19fac1cbff68d27ef" -> "sha256:ccf53f2b33a533be68f64af461648d800104cd44cf896220fface595e13310fa" [label=""];
  "sha256:0a41af5d94b0f1a0cc6210cd668d22bccbf5754e8aa71e5f1dd986e689f490f4" -> "sha256:ccf53f2b33a533be68f64af461648d800104cd44cf896220fface595e13310fa" [label=""];
  "sha256:ccf53f2b33a533be68f64af461648d800104cd44cf896220fface595e13310fa" -> "sha256:3bcef27368d0d4f5f8b66898351813c490cbae76d26f3e4ac9dffef0dd92c655" [label=""];
  "sha256:0a41af5d94b0f1a0cc6210cd668d22bccbf5754e8aa71e5f1dd986e689f490f4" -> "sha256:3bcef27368d0d4f5f8b66898351813c490cbae76d26f3e4ac9dffef0dd92c655" [label=""];
  "sha256:3bcef27368d0d4f5f8b66898351813c490cbae76d26f3e4ac9dffef0dd92c655" -> "sha256:36e446fc6f49087f01ab35800ac58f43c7186b7693801b08bc0aaf74023a43e8" [label=""];
}

