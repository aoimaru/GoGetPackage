[app/sources/467516333.Dockerfile]
digraph {
  "sha256:3504dc796477472cd8ee7125b021396078f7e02e6e3b37dcef19d723943cc481" [label="docker-image://docker.io/wezm/port-prebuilt-freebsd11@sha256:43553e2265ec702ec72a63a765df333f50b1858b896e69385749e96d8624e9b0" shape="ellipse"];
  "sha256:7ce67a6744a340800a8182bb6c6e3d128927fb2d706e99f070e2c009bf10a2ae" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:3c0d576abeca9e6c50f3e3dcd762a6b778c1b4e8f2ecee740a380dd290b5bf93" [label="/bin/sh -c apt-get install -y --no-install-recommends   qemu genext2fs xz-utils" shape="box"];
  "sha256:568b42d92b1f856e1571eb2c43732fe2e9cd13369f1f565466e4f2609be0c07a" [label="/bin/sh -c apt-get install -y curl ca-certificates gcc" shape="box"];
  "sha256:3d6033ca4a18957f3318ae787809a164a1493024c30faa7a155cd69f432c24ef" [label="sha256:3d6033ca4a18957f3318ae787809a164a1493024c30faa7a155cd69f432c24ef" shape="plaintext"];
  "sha256:3504dc796477472cd8ee7125b021396078f7e02e6e3b37dcef19d723943cc481" -> "sha256:7ce67a6744a340800a8182bb6c6e3d128927fb2d706e99f070e2c009bf10a2ae" [label=""];
  "sha256:7ce67a6744a340800a8182bb6c6e3d128927fb2d706e99f070e2c009bf10a2ae" -> "sha256:3c0d576abeca9e6c50f3e3dcd762a6b778c1b4e8f2ecee740a380dd290b5bf93" [label=""];
  "sha256:3c0d576abeca9e6c50f3e3dcd762a6b778c1b4e8f2ecee740a380dd290b5bf93" -> "sha256:568b42d92b1f856e1571eb2c43732fe2e9cd13369f1f565466e4f2609be0c07a" [label=""];
  "sha256:568b42d92b1f856e1571eb2c43732fe2e9cd13369f1f565466e4f2609be0c07a" -> "sha256:3d6033ca4a18957f3318ae787809a164a1493024c30faa7a155cd69f432c24ef" [label=""];
}

