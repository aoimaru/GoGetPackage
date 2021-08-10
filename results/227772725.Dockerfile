[app/sources/227772725.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:daf49b5dcb57bad6e0f892fdac7b955fb19a67defbdca629a2d85c521cd7db9a" [label="https://github.com/ginuerzh/gost/releases/download/v2.4/gost_2.4_linux_amd64.tar.gz" shape="ellipse"];
  "sha256:bf9442614cb4ed6ea9f7359500a81884feb9d9157220da00dcc2da0773401c65" [label="copy{src=/gost_2.4_linux_amd64.tar.gz, dest=/root/}" shape="note"];
  "sha256:aab0bf6d314ce26de324c8c172513f0de1aa0c0783da6be819443d694a20c146" [label="/bin/sh -c cd /root && tar xzvf gost_${GOST_VERSION}_linux_amd64.tar.gz && cp /root/gost_${GOST_VERSION}_linux_amd64/gost /sbin/" shape="box"];
  "sha256:5021a95689df6115e325ff3092d7b840876ec01ded01f6380c4a00762458516e" [label="sha256:5021a95689df6115e325ff3092d7b840876ec01ded01f6380c4a00762458516e" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:bf9442614cb4ed6ea9f7359500a81884feb9d9157220da00dcc2da0773401c65" [label=""];
  "sha256:daf49b5dcb57bad6e0f892fdac7b955fb19a67defbdca629a2d85c521cd7db9a" -> "sha256:bf9442614cb4ed6ea9f7359500a81884feb9d9157220da00dcc2da0773401c65" [label=""];
  "sha256:bf9442614cb4ed6ea9f7359500a81884feb9d9157220da00dcc2da0773401c65" -> "sha256:aab0bf6d314ce26de324c8c172513f0de1aa0c0783da6be819443d694a20c146" [label=""];
  "sha256:aab0bf6d314ce26de324c8c172513f0de1aa0c0783da6be819443d694a20c146" -> "sha256:5021a95689df6115e325ff3092d7b840876ec01ded01f6380c4a00762458516e" [label=""];
}

