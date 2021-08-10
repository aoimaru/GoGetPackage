[app/sources/252793980.Dockerfile]
digraph {
  "sha256:b1f021720e349b3ba5e3e439685bdf787ee34c4fb4325357929fcdfc1e2601a4" [label="docker-image://docker.io/library/fedora:24@sha256:0c1580c63e623ecfa0ef2d4a548d73a655e8072725bcca01bc6f2e446914a7bc" shape="ellipse"];
  "sha256:53670c0e6395a3ec4225af447619f84829fcba006e3c8d6832a6dcea6582710f" [label="/bin/sh -c dnf clean all && dnf update -y && dnf clean all" shape="box"];
  "sha256:27b876c00cfe2b9036ef3ec291b5f301f91b92b2c50e6de7a3fb44557b004c46" [label="sha256:27b876c00cfe2b9036ef3ec291b5f301f91b92b2c50e6de7a3fb44557b004c46" shape="plaintext"];
  "sha256:b1f021720e349b3ba5e3e439685bdf787ee34c4fb4325357929fcdfc1e2601a4" -> "sha256:53670c0e6395a3ec4225af447619f84829fcba006e3c8d6832a6dcea6582710f" [label=""];
  "sha256:53670c0e6395a3ec4225af447619f84829fcba006e3c8d6832a6dcea6582710f" -> "sha256:27b876c00cfe2b9036ef3ec291b5f301f91b92b2c50e6de7a3fb44557b004c46" [label=""];
}

