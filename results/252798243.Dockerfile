[app/sources/252798243.Dockerfile]
digraph {
  "sha256:dc059de449eaedf62cd8878ada3304fd65cc53b7eb65d00d4cdfb0e2e141f2d7" [label="local://context" shape="ellipse"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:8d251613dee33c505fe7cfd5f2f63bb00ac2eecaa9f4e02e302c3c63ffd18198" [label="/bin/sh -c apk --update add openjdk8-jre" shape="box"];
  "sha256:b5438cedaff4dfe7745f6b61f4c4502c532b839b0f51b1c80d47995e6509303a" [label="copy{src=/*.jar, dest=/edgex/edgex-device-fischertechnik/fuse-device-fischertechnik.jar}" shape="note"];
  "sha256:e83fb39f22d3ae369a665e0eb9d8f076f04f25b0ea38fd0d59cebdf988e7a59e" [label="copy{src=/*.properties, dest=/edgex/edgex-device-fischertechnik/}" shape="note"];
  "sha256:45cb9bd83f0f986d30972f0a935531a6f4c09ae281a1b26e91e1a1b88d72866e" [label="/bin/sh -c chown root:root /dev/tty*" shape="box"];
  "sha256:40e0924edf0c23e9ed0969db26e72602ff14714b2949817c6f89d2f7912f3fa7" [label="mkdir{path=/edgex/edgex-device-fischertechnik}" shape="note"];
  "sha256:edf1597a0326a28d8027184e158cfc28929a27f7cc1351417b4ff44d33ea2656" [label="sha256:edf1597a0326a28d8027184e158cfc28929a27f7cc1351417b4ff44d33ea2656" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:8d251613dee33c505fe7cfd5f2f63bb00ac2eecaa9f4e02e302c3c63ffd18198" [label=""];
  "sha256:8d251613dee33c505fe7cfd5f2f63bb00ac2eecaa9f4e02e302c3c63ffd18198" -> "sha256:b5438cedaff4dfe7745f6b61f4c4502c532b839b0f51b1c80d47995e6509303a" [label=""];
  "sha256:dc059de449eaedf62cd8878ada3304fd65cc53b7eb65d00d4cdfb0e2e141f2d7" -> "sha256:b5438cedaff4dfe7745f6b61f4c4502c532b839b0f51b1c80d47995e6509303a" [label=""];
  "sha256:b5438cedaff4dfe7745f6b61f4c4502c532b839b0f51b1c80d47995e6509303a" -> "sha256:e83fb39f22d3ae369a665e0eb9d8f076f04f25b0ea38fd0d59cebdf988e7a59e" [label=""];
  "sha256:dc059de449eaedf62cd8878ada3304fd65cc53b7eb65d00d4cdfb0e2e141f2d7" -> "sha256:e83fb39f22d3ae369a665e0eb9d8f076f04f25b0ea38fd0d59cebdf988e7a59e" [label=""];
  "sha256:e83fb39f22d3ae369a665e0eb9d8f076f04f25b0ea38fd0d59cebdf988e7a59e" -> "sha256:45cb9bd83f0f986d30972f0a935531a6f4c09ae281a1b26e91e1a1b88d72866e" [label=""];
  "sha256:45cb9bd83f0f986d30972f0a935531a6f4c09ae281a1b26e91e1a1b88d72866e" -> "sha256:40e0924edf0c23e9ed0969db26e72602ff14714b2949817c6f89d2f7912f3fa7" [label=""];
  "sha256:40e0924edf0c23e9ed0969db26e72602ff14714b2949817c6f89d2f7912f3fa7" -> "sha256:edf1597a0326a28d8027184e158cfc28929a27f7cc1351417b4ff44d33ea2656" [label=""];
}

