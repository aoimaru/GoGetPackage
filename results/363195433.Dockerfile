[app/sources/363195433.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:e0e67ebe22aa8b7b77feb7e228605270cd459d8f3593a23064b439cf21915731" [label="/bin/sh -c apk add --no-cache             ca-certificates             bash             git             openssh             curl" shape="box"];
  "sha256:f91d674fc03fb513394805a565b8cf2a6e0d74eef80530059ea502d474231081" [label="sha256:f91d674fc03fb513394805a565b8cf2a6e0d74eef80530059ea502d474231081" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:e0e67ebe22aa8b7b77feb7e228605270cd459d8f3593a23064b439cf21915731" [label=""];
  "sha256:e0e67ebe22aa8b7b77feb7e228605270cd459d8f3593a23064b439cf21915731" -> "sha256:f91d674fc03fb513394805a565b8cf2a6e0d74eef80530059ea502d474231081" [label=""];
}

