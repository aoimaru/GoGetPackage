[app/sources/197078439.Dockerfile]
digraph {
  "sha256:44629d8080142a8ebb9c3b30be76e73d7e6516e0c4617d78e22a6b5ea75732ac" [label="local://context" shape="ellipse"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:c9c005afc41526aed49558b72320518a06789ec07304c5582e2eb9ed91981e28" [label="/bin/sh -c git clone https://github.com/HDE/python-lambda-local.git" shape="box"];
  "sha256:2bf1ecee96031f454ae4362f51f9c41f4fffe22d88868631321ae22c72721809" [label="/bin/sh -c pip install ./python-lambda-local" shape="box"];
  "sha256:360ecc215fd5bc1f88c1708b3ed3e38fc391b3d2a2de4ea6ac4212af4859f9e8" [label="copy{src=/run_lambda_python.sh, dest=/usr/bin}" shape="note"];
  "sha256:b6906309b0f3ad9098466579215c5276646a1dece8a9be6bf69685555a9a8226" [label="/bin/sh -c sed -i -e 's/\\r$//' /usr/bin/run_lambda_python.sh" shape="box"];
  "sha256:951458c24c0575dc0fcad2caadb2778d663cdad2e0d29a19e39e2d0db7f991db" [label="/bin/sh -c chmod +x /usr/bin/run_lambda_python.sh" shape="box"];
  "sha256:e502264aac2dcb1d67411230a05575b6d1630a4e9eb102c353107baa4022993d" [label="/bin/sh -c mkdir -p /usr/src" shape="box"];
  "sha256:aa23abb160bdd5372ae52b4244d80dcc16600951f9236999d187debe2bccbf1b" [label="sha256:aa23abb160bdd5372ae52b4244d80dcc16600951f9236999d187debe2bccbf1b" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:c9c005afc41526aed49558b72320518a06789ec07304c5582e2eb9ed91981e28" [label=""];
  "sha256:c9c005afc41526aed49558b72320518a06789ec07304c5582e2eb9ed91981e28" -> "sha256:2bf1ecee96031f454ae4362f51f9c41f4fffe22d88868631321ae22c72721809" [label=""];
  "sha256:2bf1ecee96031f454ae4362f51f9c41f4fffe22d88868631321ae22c72721809" -> "sha256:360ecc215fd5bc1f88c1708b3ed3e38fc391b3d2a2de4ea6ac4212af4859f9e8" [label=""];
  "sha256:44629d8080142a8ebb9c3b30be76e73d7e6516e0c4617d78e22a6b5ea75732ac" -> "sha256:360ecc215fd5bc1f88c1708b3ed3e38fc391b3d2a2de4ea6ac4212af4859f9e8" [label=""];
  "sha256:360ecc215fd5bc1f88c1708b3ed3e38fc391b3d2a2de4ea6ac4212af4859f9e8" -> "sha256:b6906309b0f3ad9098466579215c5276646a1dece8a9be6bf69685555a9a8226" [label=""];
  "sha256:b6906309b0f3ad9098466579215c5276646a1dece8a9be6bf69685555a9a8226" -> "sha256:951458c24c0575dc0fcad2caadb2778d663cdad2e0d29a19e39e2d0db7f991db" [label=""];
  "sha256:951458c24c0575dc0fcad2caadb2778d663cdad2e0d29a19e39e2d0db7f991db" -> "sha256:e502264aac2dcb1d67411230a05575b6d1630a4e9eb102c353107baa4022993d" [label=""];
  "sha256:e502264aac2dcb1d67411230a05575b6d1630a4e9eb102c353107baa4022993d" -> "sha256:aa23abb160bdd5372ae52b4244d80dcc16600951f9236999d187debe2bccbf1b" [label=""];
}

