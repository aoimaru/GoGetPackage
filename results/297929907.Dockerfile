[app/sources/297929907.Dockerfile]
digraph {
  "sha256:8b75678862aa0f6c0db17508016ee1f919cee928bc87a132953f52ca47c3e0ab" [label="docker-image://docker.io/library/golang:1.12.6-alpine@sha256:c750d6718009f2e94cb20f56a87884f601f175d43c9418ae0fa21ea00ad6a2ff" shape="ellipse"];
  "sha256:3c041c5edcb6dc4741d8287fffb7dd741df460d73366aba95763fdabd1134ce6" [label="/bin/sh -c apk update &&   apk upgrade &&   apk add git" shape="box"];
  "sha256:6cc27a9a5d6e088d0574040df21b42a2265673107572b166d22b0b51864e755f" [label="mkdir{path=/app}" shape="note"];
  "sha256:472a3aaf3c8f1447ce419a2ffc1d06534f45d38100febf2e58c551078d53f44f" [label="local://context" shape="ellipse"];
  "sha256:fac9e4081ecc205bfc3e2fb856839505a52aa1faae9745f5be1681b1cece4532" [label="copy{src=/go.mod, dest=/app/}" shape="note"];
  "sha256:1edeeabb3f060c6787fb042346f65b09e0a08b60f3b718e8f154dbd526ce5d71" [label="copy{src=/go.sum, dest=/app/}" shape="note"];
  "sha256:9c1fc021f9227bb83ba370e987fff8a9b66aa8ed8d3ccd8263518fa757bfe4fd" [label="/bin/sh -c go mod download" shape="box"];
  "sha256:9d78874eea753d7a5b4b67818b651c258973a3bb443a3e48632ec5320521513d" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:f605f36d845167dd13a028c5173048d21a23fd43d316a3bdfc6bc8cd1e6a6d49" [label="/bin/sh -c go build" shape="box"];
  "sha256:d83d7619dd9b744e05360ee198a9b3f625a035c590b44ed4fe05bfa980771658" [label="copy{src=/app/ddns, dest=/app/}" shape="note"];
  "sha256:5475bdb870e7b158c4a8710cc27ba8d85ae5fb2384e9568fd00cf5a56babcb3a" [label="sha256:5475bdb870e7b158c4a8710cc27ba8d85ae5fb2384e9568fd00cf5a56babcb3a" shape="plaintext"];
  "sha256:8b75678862aa0f6c0db17508016ee1f919cee928bc87a132953f52ca47c3e0ab" -> "sha256:3c041c5edcb6dc4741d8287fffb7dd741df460d73366aba95763fdabd1134ce6" [label=""];
  "sha256:3c041c5edcb6dc4741d8287fffb7dd741df460d73366aba95763fdabd1134ce6" -> "sha256:6cc27a9a5d6e088d0574040df21b42a2265673107572b166d22b0b51864e755f" [label=""];
  "sha256:6cc27a9a5d6e088d0574040df21b42a2265673107572b166d22b0b51864e755f" -> "sha256:fac9e4081ecc205bfc3e2fb856839505a52aa1faae9745f5be1681b1cece4532" [label=""];
  "sha256:472a3aaf3c8f1447ce419a2ffc1d06534f45d38100febf2e58c551078d53f44f" -> "sha256:fac9e4081ecc205bfc3e2fb856839505a52aa1faae9745f5be1681b1cece4532" [label=""];
  "sha256:fac9e4081ecc205bfc3e2fb856839505a52aa1faae9745f5be1681b1cece4532" -> "sha256:1edeeabb3f060c6787fb042346f65b09e0a08b60f3b718e8f154dbd526ce5d71" [label=""];
  "sha256:472a3aaf3c8f1447ce419a2ffc1d06534f45d38100febf2e58c551078d53f44f" -> "sha256:1edeeabb3f060c6787fb042346f65b09e0a08b60f3b718e8f154dbd526ce5d71" [label=""];
  "sha256:1edeeabb3f060c6787fb042346f65b09e0a08b60f3b718e8f154dbd526ce5d71" -> "sha256:9c1fc021f9227bb83ba370e987fff8a9b66aa8ed8d3ccd8263518fa757bfe4fd" [label=""];
  "sha256:9c1fc021f9227bb83ba370e987fff8a9b66aa8ed8d3ccd8263518fa757bfe4fd" -> "sha256:9d78874eea753d7a5b4b67818b651c258973a3bb443a3e48632ec5320521513d" [label=""];
  "sha256:472a3aaf3c8f1447ce419a2ffc1d06534f45d38100febf2e58c551078d53f44f" -> "sha256:9d78874eea753d7a5b4b67818b651c258973a3bb443a3e48632ec5320521513d" [label=""];
  "sha256:9d78874eea753d7a5b4b67818b651c258973a3bb443a3e48632ec5320521513d" -> "sha256:f605f36d845167dd13a028c5173048d21a23fd43d316a3bdfc6bc8cd1e6a6d49" [label=""];
  "sha256:8b75678862aa0f6c0db17508016ee1f919cee928bc87a132953f52ca47c3e0ab" -> "sha256:d83d7619dd9b744e05360ee198a9b3f625a035c590b44ed4fe05bfa980771658" [label=""];
  "sha256:f605f36d845167dd13a028c5173048d21a23fd43d316a3bdfc6bc8cd1e6a6d49" -> "sha256:d83d7619dd9b744e05360ee198a9b3f625a035c590b44ed4fe05bfa980771658" [label=""];
  "sha256:d83d7619dd9b744e05360ee198a9b3f625a035c590b44ed4fe05bfa980771658" -> "sha256:5475bdb870e7b158c4a8710cc27ba8d85ae5fb2384e9568fd00cf5a56babcb3a" [label=""];
}

