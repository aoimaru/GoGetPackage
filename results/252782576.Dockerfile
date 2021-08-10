[app/sources/252782576.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:570a9c2592519ac700d9a5d2b03672d332f24bad5db15cd6aa591d4ba609dbef" [label="/bin/sh -c apk update && apk add bind-tools net-tools curl nmap" shape="box"];
  "sha256:33c5a1538ae07c3cd5ec4c42035484d02f9b2509181ec1a2df99b61d32c13742" [label="sha256:33c5a1538ae07c3cd5ec4c42035484d02f9b2509181ec1a2df99b61d32c13742" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:570a9c2592519ac700d9a5d2b03672d332f24bad5db15cd6aa591d4ba609dbef" [label=""];
  "sha256:570a9c2592519ac700d9a5d2b03672d332f24bad5db15cd6aa591d4ba609dbef" -> "sha256:33c5a1538ae07c3cd5ec4c42035484d02f9b2509181ec1a2df99b61d32c13742" [label=""];
}

