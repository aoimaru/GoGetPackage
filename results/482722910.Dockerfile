[app/sources/482722910.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:a5bcc68ffeeb2ee4979cfee9d6758c918abfb6add97fa21be44c7ada2bd33ef7" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends         sudo         curl         psmisc         lsb-release         mongodb-server         default-jre-headless         jsvc" shape="box"];
  "sha256:afcc1878609fa5e4d019be65386405c78cc40dd5fc9a4d7a9b228d8afc970457" [label="/bin/sh -c curl -sSL https://dl.ubnt.com/firmwares/ufv/v${VERSION}/unifi-video.Debian7_amd64.v${VERSION}.deb -o /tmp/unifi-video.deb &&     dpkg -i /tmp/unifi-video.deb &&     apt-get -f -y install &&     rm -rf /tmp/unifi-video.deb" shape="box"];
  "sha256:c508cfe7d4b25c1c57354640db850882b7f4bc6ac4d60884bc4e4460892d3bdf" [label="local://context" shape="ellipse"];
  "sha256:1cb464c90243620920dc381b2650c6d9647db61ff740f32612f96d6ae2209cfb" [label="copy{src=/run.sh, dest=/usr/local/bin/run}" shape="note"];
  "sha256:1514ce587bb09f40623812238145a8c95d3f401c164bd2f1ca20d256e2ac3414" [label="sha256:1514ce587bb09f40623812238145a8c95d3f401c164bd2f1ca20d256e2ac3414" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:a5bcc68ffeeb2ee4979cfee9d6758c918abfb6add97fa21be44c7ada2bd33ef7" [label=""];
  "sha256:a5bcc68ffeeb2ee4979cfee9d6758c918abfb6add97fa21be44c7ada2bd33ef7" -> "sha256:afcc1878609fa5e4d019be65386405c78cc40dd5fc9a4d7a9b228d8afc970457" [label=""];
  "sha256:afcc1878609fa5e4d019be65386405c78cc40dd5fc9a4d7a9b228d8afc970457" -> "sha256:1cb464c90243620920dc381b2650c6d9647db61ff740f32612f96d6ae2209cfb" [label=""];
  "sha256:c508cfe7d4b25c1c57354640db850882b7f4bc6ac4d60884bc4e4460892d3bdf" -> "sha256:1cb464c90243620920dc381b2650c6d9647db61ff740f32612f96d6ae2209cfb" [label=""];
  "sha256:1cb464c90243620920dc381b2650c6d9647db61ff740f32612f96d6ae2209cfb" -> "sha256:1514ce587bb09f40623812238145a8c95d3f401c164bd2f1ca20d256e2ac3414" [label=""];
}

