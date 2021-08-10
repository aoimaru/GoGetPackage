[app/sources/252799931.Dockerfile]
digraph {
  "sha256:6a957ec870b9a2025d5dcf3e9bcd1c4da8f6e442c385389d9d008ec1302576c3" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:5686817a92fd054d81388b28aa355c434abf7487c0425908af85873ebba48315" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends python-pip && rm -fr /var/lib/apt/lists/* && rm -fr /tmp/* && rm -fr /var/tmp/*" shape="box"];
  "sha256:ca6350bc6ead7e079c0e3ce35d3d9681aebecb49d240ec18b3e5ad8ba3a62651" [label="/bin/sh -c pip install pushed redis" shape="box"];
  "sha256:562a58e442deeab5b24bdf3b84845b1e1ddc86bae55ec1b7b2e5ae3696742fb3" [label="copy{src=/app.py, dest=/opt/}" shape="note"];
  "sha256:cee9c10beaacead30310bde4937d8f356cbd1a3cea25b43486718117990ba826" [label="sha256:cee9c10beaacead30310bde4937d8f356cbd1a3cea25b43486718117990ba826" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:5686817a92fd054d81388b28aa355c434abf7487c0425908af85873ebba48315" [label=""];
  "sha256:5686817a92fd054d81388b28aa355c434abf7487c0425908af85873ebba48315" -> "sha256:ca6350bc6ead7e079c0e3ce35d3d9681aebecb49d240ec18b3e5ad8ba3a62651" [label=""];
  "sha256:ca6350bc6ead7e079c0e3ce35d3d9681aebecb49d240ec18b3e5ad8ba3a62651" -> "sha256:562a58e442deeab5b24bdf3b84845b1e1ddc86bae55ec1b7b2e5ae3696742fb3" [label=""];
  "sha256:6a957ec870b9a2025d5dcf3e9bcd1c4da8f6e442c385389d9d008ec1302576c3" -> "sha256:562a58e442deeab5b24bdf3b84845b1e1ddc86bae55ec1b7b2e5ae3696742fb3" [label=""];
  "sha256:562a58e442deeab5b24bdf3b84845b1e1ddc86bae55ec1b7b2e5ae3696742fb3" -> "sha256:cee9c10beaacead30310bde4937d8f356cbd1a3cea25b43486718117990ba826" [label=""];
}

