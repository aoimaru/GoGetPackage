[app/sources/252777719.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:0f0b6e646efcbb20e9faf678ed5f79160251593968345181a865ff1af5a96987" [label="/bin/sh -c apk update && apk add scapy python && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:caffee0915afdd9976e3c03fd6ff72cf68b576b53a77f061b4ac86969650e46c" [label="local://context" shape="ellipse"];
  "sha256:27e9f10dac0c92bb4abf43a4c72967aeee38a1d4dec985943c674ddb6f8665f8" [label="copy{src=/traceroute.py, dest=/opt/traceroute}" shape="note"];
  "sha256:80ec2d2e2025807603b522ec75caef9f7148b1fad9c93ebfc8ce77999fdb3e95" [label="/bin/sh -c chmod 777 /opt/traceroute" shape="box"];
  "sha256:39036074d1bfcdbafb404147adee38a1c7cfab5c3b8d53687e8bcf1a7a8b42e8" [label="sha256:39036074d1bfcdbafb404147adee38a1c7cfab5c3b8d53687e8bcf1a7a8b42e8" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:0f0b6e646efcbb20e9faf678ed5f79160251593968345181a865ff1af5a96987" [label=""];
  "sha256:0f0b6e646efcbb20e9faf678ed5f79160251593968345181a865ff1af5a96987" -> "sha256:27e9f10dac0c92bb4abf43a4c72967aeee38a1d4dec985943c674ddb6f8665f8" [label=""];
  "sha256:caffee0915afdd9976e3c03fd6ff72cf68b576b53a77f061b4ac86969650e46c" -> "sha256:27e9f10dac0c92bb4abf43a4c72967aeee38a1d4dec985943c674ddb6f8665f8" [label=""];
  "sha256:27e9f10dac0c92bb4abf43a4c72967aeee38a1d4dec985943c674ddb6f8665f8" -> "sha256:80ec2d2e2025807603b522ec75caef9f7148b1fad9c93ebfc8ce77999fdb3e95" [label=""];
  "sha256:80ec2d2e2025807603b522ec75caef9f7148b1fad9c93ebfc8ce77999fdb3e95" -> "sha256:39036074d1bfcdbafb404147adee38a1c7cfab5c3b8d53687e8bcf1a7a8b42e8" [label=""];
}

