[app/sources/324913327.Dockerfile]
digraph {
  "sha256:63451236380d0eda3a03736a7a027635b3724b59771a9b8ff95c4baf47d74505" [label="docker-image://docker.io/library/haconiwa-container:base" shape="ellipse"];
  "sha256:0b6c8381c89e18a0965159d0234bae66ac83bae0d91dd71ecf6e66649859723b" [label="/bin/sh -c apt update -yy &&     apt install -yy nginx" shape="box"];
  "sha256:298c97583dc21b8ae6a2f9812a566e1a5d669ccec88b87ff3580d27335f87269" [label="sha256:298c97583dc21b8ae6a2f9812a566e1a5d669ccec88b87ff3580d27335f87269" shape="plaintext"];
  "sha256:63451236380d0eda3a03736a7a027635b3724b59771a9b8ff95c4baf47d74505" -> "sha256:0b6c8381c89e18a0965159d0234bae66ac83bae0d91dd71ecf6e66649859723b" [label=""];
  "sha256:0b6c8381c89e18a0965159d0234bae66ac83bae0d91dd71ecf6e66649859723b" -> "sha256:298c97583dc21b8ae6a2f9812a566e1a5d669ccec88b87ff3580d27335f87269" [label=""];
}

