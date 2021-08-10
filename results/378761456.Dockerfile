[app/sources/378761456.Dockerfile]
digraph {
  "sha256:c52000a6199ca59072d5ddfb1501d2da621a0c7abf1c28ee8ce6783678376741" [label="docker-image://docker.io/tfennelly/java6_dev:latest" shape="ellipse"];
  "sha256:04d47c5bc006b09e47b3174d94ab5bfc358a6d49b40ccef4d1d0a57775c79dbb" [label="/bin/sh -c git clone https://github.com/smooks/smooks.git /home/smooks" shape="box"];
  "sha256:3f752ea53c80c67129e449d3cfd47862d064dc1bbcb1deab38a8e574a3cf6d22" [label="mkdir{path=/home/smooks}" shape="note"];
  "sha256:f3434363b945e2c6ccb7e5cdac137a92988d59d84cee7a7baee47e138a9a566f" [label="sha256:f3434363b945e2c6ccb7e5cdac137a92988d59d84cee7a7baee47e138a9a566f" shape="plaintext"];
  "sha256:c52000a6199ca59072d5ddfb1501d2da621a0c7abf1c28ee8ce6783678376741" -> "sha256:04d47c5bc006b09e47b3174d94ab5bfc358a6d49b40ccef4d1d0a57775c79dbb" [label=""];
  "sha256:04d47c5bc006b09e47b3174d94ab5bfc358a6d49b40ccef4d1d0a57775c79dbb" -> "sha256:3f752ea53c80c67129e449d3cfd47862d064dc1bbcb1deab38a8e574a3cf6d22" [label=""];
  "sha256:3f752ea53c80c67129e449d3cfd47862d064dc1bbcb1deab38a8e574a3cf6d22" -> "sha256:f3434363b945e2c6ccb7e5cdac137a92988d59d84cee7a7baee47e138a9a566f" [label=""];
}

