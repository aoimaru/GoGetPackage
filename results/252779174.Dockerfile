[app/sources/252779174.Dockerfile]
digraph {
  "sha256:fab57a3de19506744a00b2947093dc679ded4c0dfba9847a2338539cc234113a" [label="docker-image://docker.io/docker/whalesay:latest@sha256:178598e51a26abbc958b8a2e48825c90bc22e641de3d31e18aaf55f3258ba93b" shape="ellipse"];
  "sha256:d3dfee7194a03da27cd979da763d2bf4d424abfcdf46148fee70be38f2eddf12" [label="/bin/sh -c apt-get -y update && apt-get install -y fortunes" shape="box"];
  "sha256:c1e3ad1b2e0d2656ca260f0cecdfbd4c331e000d1ef76dc2d1f4c078115045b4" [label="sha256:c1e3ad1b2e0d2656ca260f0cecdfbd4c331e000d1ef76dc2d1f4c078115045b4" shape="plaintext"];
  "sha256:fab57a3de19506744a00b2947093dc679ded4c0dfba9847a2338539cc234113a" -> "sha256:d3dfee7194a03da27cd979da763d2bf4d424abfcdf46148fee70be38f2eddf12" [label=""];
  "sha256:d3dfee7194a03da27cd979da763d2bf4d424abfcdf46148fee70be38f2eddf12" -> "sha256:c1e3ad1b2e0d2656ca260f0cecdfbd4c331e000d1ef76dc2d1f4c078115045b4" [label=""];
}

