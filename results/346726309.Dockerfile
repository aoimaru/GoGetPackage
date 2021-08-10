[app/sources/346726309.Dockerfile]
digraph {
  "sha256:d1bb71a6987a775bced3ce7f5156ed9187180d8bf00cf1ac4e5be1c099e80a53" [label="local://context" shape="ellipse"];
  "sha256:461c14e87d98e6824ba7487b930dc8d0b527e3889c259857084533cad3a78522" [label="docker-image://docker.io/library/todo:latest" shape="ellipse"];
  "sha256:1c2137c36b12b74925f73d8d34bcaaa4aa66616f863fd57ad0d214fdc8dda35c" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:b27225dc32a80c877bb0d00cdcf4648820897a257d7740cc718bf0333440be42" [label="/bin/sh -c npm build" shape="box"];
  "sha256:e95ec2cd9fec5f1b51dee481d8f603cc2d6bb8a16287efc8befeb3d1b39e094d" [label="sha256:e95ec2cd9fec5f1b51dee481d8f603cc2d6bb8a16287efc8befeb3d1b39e094d" shape="plaintext"];
  "sha256:461c14e87d98e6824ba7487b930dc8d0b527e3889c259857084533cad3a78522" -> "sha256:1c2137c36b12b74925f73d8d34bcaaa4aa66616f863fd57ad0d214fdc8dda35c" [label=""];
  "sha256:d1bb71a6987a775bced3ce7f5156ed9187180d8bf00cf1ac4e5be1c099e80a53" -> "sha256:1c2137c36b12b74925f73d8d34bcaaa4aa66616f863fd57ad0d214fdc8dda35c" [label=""];
  "sha256:1c2137c36b12b74925f73d8d34bcaaa4aa66616f863fd57ad0d214fdc8dda35c" -> "sha256:b27225dc32a80c877bb0d00cdcf4648820897a257d7740cc718bf0333440be42" [label=""];
  "sha256:b27225dc32a80c877bb0d00cdcf4648820897a257d7740cc718bf0333440be42" -> "sha256:e95ec2cd9fec5f1b51dee481d8f603cc2d6bb8a16287efc8befeb3d1b39e094d" [label=""];
}

