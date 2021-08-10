[app/sources/252787041.Dockerfile]
digraph {
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" [label="docker-image://docker.io/library/node:6" shape="ellipse"];
  "sha256:f994630853c2942bee46abaff35c438bc5d49b65f49d6a4b95d6ea305b027dfe" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:b52dfdce2c55fb76c1ee37dd945b082c923f6741811b8cf97d1dd1033d1effb8" [label="local://context" shape="ellipse"];
  "sha256:9769001dee345686ec126a9219b21ea2d982139173b34ea6a4d6f0c9c7f7aa65" [label="copy{src=/run-tiddlywiki.sh, dest=/usr/local/bin}" shape="note"];
  "sha256:eae9646e943a6a5f045e4d17e19c80a52b4c7e4adb8f86a8f4430720c662fe5c" [label="/bin/sh -c npm install --silent -g tiddlywiki@${TW_VERSION}" shape="box"];
  "sha256:6f7ad32d3f1c42695280180417a388e2c8f30e04df9e5f8d98fa0359f056591d" [label="sha256:6f7ad32d3f1c42695280180417a388e2c8f30e04df9e5f8d98fa0359f056591d" shape="plaintext"];
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" -> "sha256:f994630853c2942bee46abaff35c438bc5d49b65f49d6a4b95d6ea305b027dfe" [label=""];
  "sha256:f994630853c2942bee46abaff35c438bc5d49b65f49d6a4b95d6ea305b027dfe" -> "sha256:9769001dee345686ec126a9219b21ea2d982139173b34ea6a4d6f0c9c7f7aa65" [label=""];
  "sha256:b52dfdce2c55fb76c1ee37dd945b082c923f6741811b8cf97d1dd1033d1effb8" -> "sha256:9769001dee345686ec126a9219b21ea2d982139173b34ea6a4d6f0c9c7f7aa65" [label=""];
  "sha256:9769001dee345686ec126a9219b21ea2d982139173b34ea6a4d6f0c9c7f7aa65" -> "sha256:eae9646e943a6a5f045e4d17e19c80a52b4c7e4adb8f86a8f4430720c662fe5c" [label=""];
  "sha256:eae9646e943a6a5f045e4d17e19c80a52b4c7e4adb8f86a8f4430720c662fe5c" -> "sha256:6f7ad32d3f1c42695280180417a388e2c8f30e04df9e5f8d98fa0359f056591d" [label=""];
}

