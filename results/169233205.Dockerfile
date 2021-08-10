[app/sources/169233205.Dockerfile]
digraph {
  "sha256:3d563a9af8b994ffe3906464633e19f54a20bc408be1567f3ed287bda59f7e48" [label="docker-image://docker.io/library/golang:1.8.3-alpine3.6" shape="ellipse"];
  "sha256:645e1425ae69bea40d51abaaf593c4c0c20b3e06ef9a858bd407552b0ce6435f" [label="/bin/sh -c apk -U add openssl git" shape="box"];
  "sha256:665a5518ba9c0e592757821c21875851f4d0264816d539c5b7c53dca15f78a8b" [label="local://context" shape="ellipse"];
  "sha256:67632c2ee2a51f8c4f52b79f85e8e4ccaa64161b670158728bc2a383b46df59f" [label="copy{src=/, dest=/go/src/github.com/jwilder/dockerize}" shape="note"];
  "sha256:64a5a379d5a88cae9d806c4b5a480a1b5730db805c49f9320d0082d0a3500e7e" [label="mkdir{path=/go/src/github.com/jwilder/dockerize}" shape="note"];
  "sha256:1301387882c9d1389b94e8cc7ffc57447ffe857a6fbd3cbfcc3cc0b4482b43a2" [label="/bin/sh -c go get github.com/robfig/glock" shape="box"];
  "sha256:36962bfd941d137e3c49f14d99428862d9aa7d7dd1cb5bfec4421aedd96d67d5" [label="/bin/sh -c glock sync -n < GLOCKFILE" shape="box"];
  "sha256:ce594998ba1ae28927cc206b2825b9d18376344139f1953cad23f998cc1afae0" [label="/bin/sh -c go install" shape="box"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:a6b6a869ab189f653fa38085aedfb390dd5e0bf14ea25560cf1eea17db82d68a" [label="copy{src=/go/bin/dockerize, dest=/usr/local/bin}" shape="note"];
  "sha256:56e21e58fbce5c6ea9f89f9dd02e4cb2ac4772a14355e10e66121702c2adb6f9" [label="sha256:56e21e58fbce5c6ea9f89f9dd02e4cb2ac4772a14355e10e66121702c2adb6f9" shape="plaintext"];
  "sha256:3d563a9af8b994ffe3906464633e19f54a20bc408be1567f3ed287bda59f7e48" -> "sha256:645e1425ae69bea40d51abaaf593c4c0c20b3e06ef9a858bd407552b0ce6435f" [label=""];
  "sha256:645e1425ae69bea40d51abaaf593c4c0c20b3e06ef9a858bd407552b0ce6435f" -> "sha256:67632c2ee2a51f8c4f52b79f85e8e4ccaa64161b670158728bc2a383b46df59f" [label=""];
  "sha256:665a5518ba9c0e592757821c21875851f4d0264816d539c5b7c53dca15f78a8b" -> "sha256:67632c2ee2a51f8c4f52b79f85e8e4ccaa64161b670158728bc2a383b46df59f" [label=""];
  "sha256:67632c2ee2a51f8c4f52b79f85e8e4ccaa64161b670158728bc2a383b46df59f" -> "sha256:64a5a379d5a88cae9d806c4b5a480a1b5730db805c49f9320d0082d0a3500e7e" [label=""];
  "sha256:64a5a379d5a88cae9d806c4b5a480a1b5730db805c49f9320d0082d0a3500e7e" -> "sha256:1301387882c9d1389b94e8cc7ffc57447ffe857a6fbd3cbfcc3cc0b4482b43a2" [label=""];
  "sha256:1301387882c9d1389b94e8cc7ffc57447ffe857a6fbd3cbfcc3cc0b4482b43a2" -> "sha256:36962bfd941d137e3c49f14d99428862d9aa7d7dd1cb5bfec4421aedd96d67d5" [label=""];
  "sha256:36962bfd941d137e3c49f14d99428862d9aa7d7dd1cb5bfec4421aedd96d67d5" -> "sha256:ce594998ba1ae28927cc206b2825b9d18376344139f1953cad23f998cc1afae0" [label=""];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:a6b6a869ab189f653fa38085aedfb390dd5e0bf14ea25560cf1eea17db82d68a" [label=""];
  "sha256:ce594998ba1ae28927cc206b2825b9d18376344139f1953cad23f998cc1afae0" -> "sha256:a6b6a869ab189f653fa38085aedfb390dd5e0bf14ea25560cf1eea17db82d68a" [label=""];
  "sha256:a6b6a869ab189f653fa38085aedfb390dd5e0bf14ea25560cf1eea17db82d68a" -> "sha256:56e21e58fbce5c6ea9f89f9dd02e4cb2ac4772a14355e10e66121702c2adb6f9" [label=""];
}

