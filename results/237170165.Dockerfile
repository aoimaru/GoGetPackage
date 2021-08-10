[app/sources/237170165.Dockerfile]
digraph {
  "sha256:096047481b337ce84fc0be476643151cb340a52fd893ef849324698264980108" [label="docker-image://docker.io/library/golang:1.8-alpine" shape="ellipse"];
  "sha256:3c6ef70acb5e795b0423d63043938198bc277f420b2acdfab1c1d576c1067b1e" [label="mkdir{path=/go/src/github.com/yosifkit/syslog-init}" shape="note"];
  "sha256:d590057b74985bbb971b993fc9d4ebad74558f1859ccfe858ed89971693df3ec" [label="local://context" shape="ellipse"];
  "sha256:55de79ec09291f5170bc0eeb8c77418c5b9df3b8e72663c8dfbe97cf92a6a22a" [label="copy{src=/*.go, dest=/go/src/github.com/yosifkit/syslog-init/}" shape="note"];
  "sha256:1609feb8ae10fa0f33a99b8d56f4989193c9dcca616808eabb2312ab48607e56" [label="/bin/sh -c set -ex; apk add --no-cache git; eval \"go get $BUILD_FLAGS\"; apk del git" shape="box"];
  "sha256:0236793fc6596cb28b2c0b5092635944df7395e94bdbdd1ec6a8aaaf04aa464c" [label="sha256:0236793fc6596cb28b2c0b5092635944df7395e94bdbdd1ec6a8aaaf04aa464c" shape="plaintext"];
  "sha256:096047481b337ce84fc0be476643151cb340a52fd893ef849324698264980108" -> "sha256:3c6ef70acb5e795b0423d63043938198bc277f420b2acdfab1c1d576c1067b1e" [label=""];
  "sha256:3c6ef70acb5e795b0423d63043938198bc277f420b2acdfab1c1d576c1067b1e" -> "sha256:55de79ec09291f5170bc0eeb8c77418c5b9df3b8e72663c8dfbe97cf92a6a22a" [label=""];
  "sha256:d590057b74985bbb971b993fc9d4ebad74558f1859ccfe858ed89971693df3ec" -> "sha256:55de79ec09291f5170bc0eeb8c77418c5b9df3b8e72663c8dfbe97cf92a6a22a" [label=""];
  "sha256:55de79ec09291f5170bc0eeb8c77418c5b9df3b8e72663c8dfbe97cf92a6a22a" -> "sha256:1609feb8ae10fa0f33a99b8d56f4989193c9dcca616808eabb2312ab48607e56" [label=""];
  "sha256:1609feb8ae10fa0f33a99b8d56f4989193c9dcca616808eabb2312ab48607e56" -> "sha256:0236793fc6596cb28b2c0b5092635944df7395e94bdbdd1ec6a8aaaf04aa464c" [label=""];
}

