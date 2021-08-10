[app/sources/223037309.Dockerfile]
digraph {
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" [label="docker-image://docker.io/library/node:6" shape="ellipse"];
  "sha256:5edf288e65b2c0721740e3c2377756ad36db65082d2de2de25e7256dcaf8f55a" [label="/bin/sh -c npm install pm2 -g" shape="box"];
  "sha256:8d3f4e65ac7c20677d05a67a6ccf9b59328bd6aa20188e77af822f483f28470f" [label="sha256:8d3f4e65ac7c20677d05a67a6ccf9b59328bd6aa20188e77af822f483f28470f" shape="plaintext"];
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" -> "sha256:5edf288e65b2c0721740e3c2377756ad36db65082d2de2de25e7256dcaf8f55a" [label=""];
  "sha256:5edf288e65b2c0721740e3c2377756ad36db65082d2de2de25e7256dcaf8f55a" -> "sha256:8d3f4e65ac7c20677d05a67a6ccf9b59328bd6aa20188e77af822f483f28470f" [label=""];
}

