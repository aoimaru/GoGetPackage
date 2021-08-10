[app/sources/252768324.Dockerfile]
digraph {
  "sha256:da0db8f2cd8ff14b52d52a9d2df5f0bc58fc837b93e6a23f0b511f0e48e14be0" [label="docker-image://docker.io/rancher/confd-base:0.11.0-dev-rancher@sha256:bb4a2df21b9de3b162cfef772e72d12e2db79607fca9099579f405066a99c487" shape="ellipse"];
  "sha256:88b1fb0cd193d4c947115180f2e9512326302c5465c45f63e12877189d70d638" [label="local://context" shape="ellipse"];
  "sha256:2d72c3d38de1d902a0f4e5862d4bcbf2bdd70a0d050dcde3f1c51a48c6576efa" [label="copy{src=/conf.d, dest=/etc/confd/conf.d}" shape="note"];
  "sha256:0a81fe585f6b1be5c65cc93d41ef4610f0af41e8d11967798830ff2c5651f01b" [label="copy{src=/templates, dest=/etc/confd/templates}" shape="note"];
  "sha256:2c70a4951cd2f87861e7e0afd6318a0467605cac5112488f0b75484a405f7562" [label="sha256:2c70a4951cd2f87861e7e0afd6318a0467605cac5112488f0b75484a405f7562" shape="plaintext"];
  "sha256:da0db8f2cd8ff14b52d52a9d2df5f0bc58fc837b93e6a23f0b511f0e48e14be0" -> "sha256:2d72c3d38de1d902a0f4e5862d4bcbf2bdd70a0d050dcde3f1c51a48c6576efa" [label=""];
  "sha256:88b1fb0cd193d4c947115180f2e9512326302c5465c45f63e12877189d70d638" -> "sha256:2d72c3d38de1d902a0f4e5862d4bcbf2bdd70a0d050dcde3f1c51a48c6576efa" [label=""];
  "sha256:2d72c3d38de1d902a0f4e5862d4bcbf2bdd70a0d050dcde3f1c51a48c6576efa" -> "sha256:0a81fe585f6b1be5c65cc93d41ef4610f0af41e8d11967798830ff2c5651f01b" [label=""];
  "sha256:88b1fb0cd193d4c947115180f2e9512326302c5465c45f63e12877189d70d638" -> "sha256:0a81fe585f6b1be5c65cc93d41ef4610f0af41e8d11967798830ff2c5651f01b" [label=""];
  "sha256:0a81fe585f6b1be5c65cc93d41ef4610f0af41e8d11967798830ff2c5651f01b" -> "sha256:2c70a4951cd2f87861e7e0afd6318a0467605cac5112488f0b75484a405f7562" [label=""];
}

