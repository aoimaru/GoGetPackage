[app/sources/353977082.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:2841755323802f87d5bf89735e4c0fd554c42927a4ae5cccae9485b3c4cfbbe8" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:636192166cbdd4d21e653dc23065c95ca6ed01c0a326961e888afad5702cfaec" [label="local://context" shape="ellipse"];
  "sha256:80c2096e8dc992eed02c72c6e2354e8a3eec49d483dbe9c79d3a54356166d7cb" [label="copy{src=/build/rovers_linux_amd64/rovers, dest=/bin/}" shape="note"];
  "sha256:1db362363aad326995680c67d7531438ea5dfa2b53732ef7db357eedb2b797dc" [label="sha256:1db362363aad326995680c67d7531438ea5dfa2b53732ef7db357eedb2b797dc" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:2841755323802f87d5bf89735e4c0fd554c42927a4ae5cccae9485b3c4cfbbe8" [label=""];
  "sha256:2841755323802f87d5bf89735e4c0fd554c42927a4ae5cccae9485b3c4cfbbe8" -> "sha256:80c2096e8dc992eed02c72c6e2354e8a3eec49d483dbe9c79d3a54356166d7cb" [label=""];
  "sha256:636192166cbdd4d21e653dc23065c95ca6ed01c0a326961e888afad5702cfaec" -> "sha256:80c2096e8dc992eed02c72c6e2354e8a3eec49d483dbe9c79d3a54356166d7cb" [label=""];
  "sha256:80c2096e8dc992eed02c72c6e2354e8a3eec49d483dbe9c79d3a54356166d7cb" -> "sha256:1db362363aad326995680c67d7531438ea5dfa2b53732ef7db357eedb2b797dc" [label=""];
}

