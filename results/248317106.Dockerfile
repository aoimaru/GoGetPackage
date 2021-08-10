[app/sources/248317106.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:91cfb6c7627264a92753f6da851fbcefcb057a22c22f1a61fe2d1627ca34adf1" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:668b4e02cf257105a64be725bc82539757d900bf3e43557df895db74d1c2ddf7" [label="local://context" shape="ellipse"];
  "sha256:b988a4151b4f3b3ac69f6cee1a4b667d1ec31fcee1ec21601198efb68b0d1bf1" [label="copy{src=/_output/bin/etcd-backup-operator, dest=/usr/local/bin/etcd-backup-operator}" shape="note"];
  "sha256:4077321b9fcfe00f822f7f4b9dff9b60fb0c7ddc306df6b80ead11526e9d168c" [label="copy{src=/_output/bin/etcd-restore-operator, dest=/usr/local/bin/etcd-restore-operator}" shape="note"];
  "sha256:0aa2b4068eaac358ed99f4c7fc2ab0cb89894478a077f4fc1bb625e8f8398938" [label="copy{src=/_output/bin/etcd-operator, dest=/usr/local/bin/etcd-operator}" shape="note"];
  "sha256:d101d7d27a43478537b304eb2c5ea0b1566ab541576f2a31e1ea75df173d40a7" [label="/bin/sh -c adduser -D etcd-operator" shape="box"];
  "sha256:b67dbebadaa81fad1c79238bbed64891c8c127b7d1e913dd1ef72df0262f863b" [label="sha256:b67dbebadaa81fad1c79238bbed64891c8c127b7d1e913dd1ef72df0262f863b" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:91cfb6c7627264a92753f6da851fbcefcb057a22c22f1a61fe2d1627ca34adf1" [label=""];
  "sha256:91cfb6c7627264a92753f6da851fbcefcb057a22c22f1a61fe2d1627ca34adf1" -> "sha256:b988a4151b4f3b3ac69f6cee1a4b667d1ec31fcee1ec21601198efb68b0d1bf1" [label=""];
  "sha256:668b4e02cf257105a64be725bc82539757d900bf3e43557df895db74d1c2ddf7" -> "sha256:b988a4151b4f3b3ac69f6cee1a4b667d1ec31fcee1ec21601198efb68b0d1bf1" [label=""];
  "sha256:b988a4151b4f3b3ac69f6cee1a4b667d1ec31fcee1ec21601198efb68b0d1bf1" -> "sha256:4077321b9fcfe00f822f7f4b9dff9b60fb0c7ddc306df6b80ead11526e9d168c" [label=""];
  "sha256:668b4e02cf257105a64be725bc82539757d900bf3e43557df895db74d1c2ddf7" -> "sha256:4077321b9fcfe00f822f7f4b9dff9b60fb0c7ddc306df6b80ead11526e9d168c" [label=""];
  "sha256:4077321b9fcfe00f822f7f4b9dff9b60fb0c7ddc306df6b80ead11526e9d168c" -> "sha256:0aa2b4068eaac358ed99f4c7fc2ab0cb89894478a077f4fc1bb625e8f8398938" [label=""];
  "sha256:668b4e02cf257105a64be725bc82539757d900bf3e43557df895db74d1c2ddf7" -> "sha256:0aa2b4068eaac358ed99f4c7fc2ab0cb89894478a077f4fc1bb625e8f8398938" [label=""];
  "sha256:0aa2b4068eaac358ed99f4c7fc2ab0cb89894478a077f4fc1bb625e8f8398938" -> "sha256:d101d7d27a43478537b304eb2c5ea0b1566ab541576f2a31e1ea75df173d40a7" [label=""];
  "sha256:d101d7d27a43478537b304eb2c5ea0b1566ab541576f2a31e1ea75df173d40a7" -> "sha256:b67dbebadaa81fad1c79238bbed64891c8c127b7d1e913dd1ef72df0262f863b" [label=""];
}

