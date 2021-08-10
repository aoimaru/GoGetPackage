[app/sources/345356364.Dockerfile]
digraph {
  "sha256:ef64fcdc182dcb9dbb43c4f4ef26de92d36bc6f9d66ecdb1a61eb41c6154a42d" [label="docker-image://docker.io/balenalib/armv7hf-ubuntu:artful-run" shape="ellipse"];
  "sha256:a85745cb773e704b5059b2d803c54298bd21ff24f72eeaad20254d00c304a19f" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a188e6184c9342dde98d08b12b2eba1a1456d6532d2b151dea477b18007c756b" [label="sha256:a188e6184c9342dde98d08b12b2eba1a1456d6532d2b151dea477b18007c756b" shape="plaintext"];
  "sha256:ef64fcdc182dcb9dbb43c4f4ef26de92d36bc6f9d66ecdb1a61eb41c6154a42d" -> "sha256:a85745cb773e704b5059b2d803c54298bd21ff24f72eeaad20254d00c304a19f" [label=""];
  "sha256:a85745cb773e704b5059b2d803c54298bd21ff24f72eeaad20254d00c304a19f" -> "sha256:a188e6184c9342dde98d08b12b2eba1a1456d6532d2b151dea477b18007c756b" [label=""];
}

