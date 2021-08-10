[app/sources/281346167.Dockerfile]
digraph {
  "sha256:1bd0a028ecd64926b2e87e7683409fc95cc1d1d01e2f9f1aef0f4a5b0bd7b5cf" [label="docker-image://docker.io/library/corebuild:latest" shape="ellipse"];
  "sha256:4511e42153ce2ce8f61d31bf3a3ada5a9e4ec0885a1c18d290720f5826dcda40" [label="copy{src=/go/src/github.com/notegio/openrelay/bin/fundcheckrelay, dest=/fundcheckrelay}" shape="note"];
  "sha256:98bb02b7997cc3bf658e5a1d6865f39f813f4f0a866ad36608faf47c4e09f6e3" [label="copy{src=/etc/ssl/certs/ca-certificates.crt, dest=/etc/ssl/certs/ca-certificates.crt}" shape="note"];
  "sha256:6ad53cb29507c7ab8a6a9afc98c1db7e4d54e91d5809dddbed694c58009108f6" [label="sha256:6ad53cb29507c7ab8a6a9afc98c1db7e4d54e91d5809dddbed694c58009108f6" shape="plaintext"];
  "sha256:1bd0a028ecd64926b2e87e7683409fc95cc1d1d01e2f9f1aef0f4a5b0bd7b5cf" -> "sha256:4511e42153ce2ce8f61d31bf3a3ada5a9e4ec0885a1c18d290720f5826dcda40" [label=""];
  "sha256:4511e42153ce2ce8f61d31bf3a3ada5a9e4ec0885a1c18d290720f5826dcda40" -> "sha256:98bb02b7997cc3bf658e5a1d6865f39f813f4f0a866ad36608faf47c4e09f6e3" [label=""];
  "sha256:1bd0a028ecd64926b2e87e7683409fc95cc1d1d01e2f9f1aef0f4a5b0bd7b5cf" -> "sha256:98bb02b7997cc3bf658e5a1d6865f39f813f4f0a866ad36608faf47c4e09f6e3" [label=""];
  "sha256:98bb02b7997cc3bf658e5a1d6865f39f813f4f0a866ad36608faf47c4e09f6e3" -> "sha256:6ad53cb29507c7ab8a6a9afc98c1db7e4d54e91d5809dddbed694c58009108f6" [label=""];
}

