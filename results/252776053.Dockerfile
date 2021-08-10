[app/sources/252776053.Dockerfile]
digraph {
  "sha256:d244fdf0be3f7a94976bdc6c1a9a7453316e4c14984d71d2885caa12da08e8f0" [label="local://context" shape="ellipse"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:14e4938f079a768497cb38d8a72d1fd01fada5e24c03cca197a523e30ad8037b" [label="mkdir{path=/home/node}" shape="note"];
  "sha256:0081cb59c31877513450530668851455ba6213cfb655f71024056f4196447dae" [label="/bin/sh -c apt-get update && apt-get install -y libicu-dev" shape="box"];
  "sha256:d95ae59bd709f539110f5a78b80a59b53f688cf4fb0b132d94f66515d5bd88f6" [label="copy{src=/discord-irc, dest=/home/node}" shape="note"];
  "sha256:3e24af5d33c44a75986f381e2671600b42f8967671d02fe087cfc92bf6852a2d" [label="/bin/sh -c npm install" shape="box"];
  "sha256:aca0e47fa72a0c1ed8cbdd51e41476b959a18082e1877435ed1e8e6a0505534a" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:ffdf899bbcbfcc7006eb3f2c7fb6191d603b0220bdb0e899bc9803ba91082bcc" [label="sha256:ffdf899bbcbfcc7006eb3f2c7fb6191d603b0220bdb0e899bc9803ba91082bcc" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:14e4938f079a768497cb38d8a72d1fd01fada5e24c03cca197a523e30ad8037b" [label=""];
  "sha256:14e4938f079a768497cb38d8a72d1fd01fada5e24c03cca197a523e30ad8037b" -> "sha256:0081cb59c31877513450530668851455ba6213cfb655f71024056f4196447dae" [label=""];
  "sha256:0081cb59c31877513450530668851455ba6213cfb655f71024056f4196447dae" -> "sha256:d95ae59bd709f539110f5a78b80a59b53f688cf4fb0b132d94f66515d5bd88f6" [label=""];
  "sha256:d244fdf0be3f7a94976bdc6c1a9a7453316e4c14984d71d2885caa12da08e8f0" -> "sha256:d95ae59bd709f539110f5a78b80a59b53f688cf4fb0b132d94f66515d5bd88f6" [label=""];
  "sha256:d95ae59bd709f539110f5a78b80a59b53f688cf4fb0b132d94f66515d5bd88f6" -> "sha256:3e24af5d33c44a75986f381e2671600b42f8967671d02fe087cfc92bf6852a2d" [label=""];
  "sha256:3e24af5d33c44a75986f381e2671600b42f8967671d02fe087cfc92bf6852a2d" -> "sha256:aca0e47fa72a0c1ed8cbdd51e41476b959a18082e1877435ed1e8e6a0505534a" [label=""];
  "sha256:aca0e47fa72a0c1ed8cbdd51e41476b959a18082e1877435ed1e8e6a0505534a" -> "sha256:ffdf899bbcbfcc7006eb3f2c7fb6191d603b0220bdb0e899bc9803ba91082bcc" [label=""];
}

