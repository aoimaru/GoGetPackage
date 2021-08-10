[app/sources/475337434.Dockerfile]
digraph {
  "sha256:964e11df39cda4e4d4be60ca2e1c4d5af45d3eea1bd69e653733bbb8057d46c8" [label="docker-image://docker.io/google/golang:latest" shape="ellipse"];
  "sha256:4a1118fa90305aaf4faafe84d05821d0304bfd965a91baffc9276fdcc5105fe1" [label="local://context" shape="ellipse"];
  "sha256:9ec92bd6c1ed88b1631ca1ca45e6f5c8edcb2f1cdbaf23e53540434271a1129d" [label="copy{src=/src, dest=/gopath/src/}" shape="note"];
  "sha256:174e86e52bdfba47225ef1558c8792fe0cfc3ba7e76ab688e2a99f05ed31b90c" [label="copy{src=/static, dest=/tmp/static}" shape="note"];
  "sha256:57fa58ecd81e4dfffdad87243b00599c07ba53c491b74e6e2f34c206aa2720ed" [label="copy{src=/test.sh, dest=/opt/test.sh}" shape="note"];
  "sha256:f74ff31715391cae3ef60096379199cb0bfe06600cc91f88b75841a71bbcbaab" [label="/bin/sh -c chmod 777 /opt/test.sh" shape="box"];
  "sha256:6d411c4ac339ea76f077bcc7400be252f97513de416393b3907f28aed814fb18" [label="mkdir{path=/gopath/src}" shape="note"];
  "sha256:3458fc3934101eff10344a5327f8fb61b7b2a543f9a204148935e4fd98e56a41" [label="/bin/sh -c go get main" shape="box"];
  "sha256:66d9c0a53fe84eb754fc1b480fe1cabe52bd59e95034eb5faa45bbb18f0fb1bd" [label="sha256:66d9c0a53fe84eb754fc1b480fe1cabe52bd59e95034eb5faa45bbb18f0fb1bd" shape="plaintext"];
  "sha256:964e11df39cda4e4d4be60ca2e1c4d5af45d3eea1bd69e653733bbb8057d46c8" -> "sha256:9ec92bd6c1ed88b1631ca1ca45e6f5c8edcb2f1cdbaf23e53540434271a1129d" [label=""];
  "sha256:4a1118fa90305aaf4faafe84d05821d0304bfd965a91baffc9276fdcc5105fe1" -> "sha256:9ec92bd6c1ed88b1631ca1ca45e6f5c8edcb2f1cdbaf23e53540434271a1129d" [label=""];
  "sha256:9ec92bd6c1ed88b1631ca1ca45e6f5c8edcb2f1cdbaf23e53540434271a1129d" -> "sha256:174e86e52bdfba47225ef1558c8792fe0cfc3ba7e76ab688e2a99f05ed31b90c" [label=""];
  "sha256:4a1118fa90305aaf4faafe84d05821d0304bfd965a91baffc9276fdcc5105fe1" -> "sha256:174e86e52bdfba47225ef1558c8792fe0cfc3ba7e76ab688e2a99f05ed31b90c" [label=""];
  "sha256:174e86e52bdfba47225ef1558c8792fe0cfc3ba7e76ab688e2a99f05ed31b90c" -> "sha256:57fa58ecd81e4dfffdad87243b00599c07ba53c491b74e6e2f34c206aa2720ed" [label=""];
  "sha256:4a1118fa90305aaf4faafe84d05821d0304bfd965a91baffc9276fdcc5105fe1" -> "sha256:57fa58ecd81e4dfffdad87243b00599c07ba53c491b74e6e2f34c206aa2720ed" [label=""];
  "sha256:57fa58ecd81e4dfffdad87243b00599c07ba53c491b74e6e2f34c206aa2720ed" -> "sha256:f74ff31715391cae3ef60096379199cb0bfe06600cc91f88b75841a71bbcbaab" [label=""];
  "sha256:f74ff31715391cae3ef60096379199cb0bfe06600cc91f88b75841a71bbcbaab" -> "sha256:6d411c4ac339ea76f077bcc7400be252f97513de416393b3907f28aed814fb18" [label=""];
  "sha256:6d411c4ac339ea76f077bcc7400be252f97513de416393b3907f28aed814fb18" -> "sha256:3458fc3934101eff10344a5327f8fb61b7b2a543f9a204148935e4fd98e56a41" [label=""];
  "sha256:3458fc3934101eff10344a5327f8fb61b7b2a543f9a204148935e4fd98e56a41" -> "sha256:66d9c0a53fe84eb754fc1b480fe1cabe52bd59e95034eb5faa45bbb18f0fb1bd" [label=""];
}

