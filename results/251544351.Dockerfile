[app/sources/251544351.Dockerfile]
digraph {
  "sha256:9be9a0353274ded952b89beff8b84e91a6475457d3473f1f0f4141549211f997" [label="docker-image://docker.io/library/golang:1.8.3" shape="ellipse"];
  "sha256:b66d5317a80efbe67cb4418f0d59c4752846fc18e93d553980a651b12f13010a" [label="/bin/sh -c cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime" shape="box"];
  "sha256:c52e220fc521c67b46d54ac6a149c8072e68bf439967be55075cffe463da54a7" [label="local://context" shape="ellipse"];
  "sha256:ba4017a51667ea912128fa65e7e2379cbdc868f8006c57179c948323d1af441e" [label="copy{src=/src, dest=/src/}" shape="note"];
  "sha256:5241bccb7000daa3461b4f5975dae82bc31eb42e3c39e4af891d2eb8ff583ead" [label="copy{src=/bin, dest=/bin/}" shape="note"];
  "sha256:3e0f3deba1f7c8fe52f84638036f94b5dec3e479afba394ef83ca4c851e272f2" [label="mkdir{path=/bin}" shape="note"];
  "sha256:7cf0ffa10390dde1290166e29770e1cf4a62b2c1ed3be5f3398a425be407f614" [label="/bin/sh -c go build stocksniper" shape="box"];
  "sha256:71c060352cc9a9fc94fd0a5bc2ad907ede734f98bea2e8a58fa68d878491d9ae" [label="/bin/sh -c rm -rf /go/src/*" shape="box"];
  "sha256:12ffd250ee57a34db2b1d68aa8d62f91aab0d8d8d28a8a6b4e56b10c19d59caa" [label="sha256:12ffd250ee57a34db2b1d68aa8d62f91aab0d8d8d28a8a6b4e56b10c19d59caa" shape="plaintext"];
  "sha256:9be9a0353274ded952b89beff8b84e91a6475457d3473f1f0f4141549211f997" -> "sha256:b66d5317a80efbe67cb4418f0d59c4752846fc18e93d553980a651b12f13010a" [label=""];
  "sha256:b66d5317a80efbe67cb4418f0d59c4752846fc18e93d553980a651b12f13010a" -> "sha256:ba4017a51667ea912128fa65e7e2379cbdc868f8006c57179c948323d1af441e" [label=""];
  "sha256:c52e220fc521c67b46d54ac6a149c8072e68bf439967be55075cffe463da54a7" -> "sha256:ba4017a51667ea912128fa65e7e2379cbdc868f8006c57179c948323d1af441e" [label=""];
  "sha256:ba4017a51667ea912128fa65e7e2379cbdc868f8006c57179c948323d1af441e" -> "sha256:5241bccb7000daa3461b4f5975dae82bc31eb42e3c39e4af891d2eb8ff583ead" [label=""];
  "sha256:c52e220fc521c67b46d54ac6a149c8072e68bf439967be55075cffe463da54a7" -> "sha256:5241bccb7000daa3461b4f5975dae82bc31eb42e3c39e4af891d2eb8ff583ead" [label=""];
  "sha256:5241bccb7000daa3461b4f5975dae82bc31eb42e3c39e4af891d2eb8ff583ead" -> "sha256:3e0f3deba1f7c8fe52f84638036f94b5dec3e479afba394ef83ca4c851e272f2" [label=""];
  "sha256:3e0f3deba1f7c8fe52f84638036f94b5dec3e479afba394ef83ca4c851e272f2" -> "sha256:7cf0ffa10390dde1290166e29770e1cf4a62b2c1ed3be5f3398a425be407f614" [label=""];
  "sha256:7cf0ffa10390dde1290166e29770e1cf4a62b2c1ed3be5f3398a425be407f614" -> "sha256:71c060352cc9a9fc94fd0a5bc2ad907ede734f98bea2e8a58fa68d878491d9ae" [label=""];
  "sha256:71c060352cc9a9fc94fd0a5bc2ad907ede734f98bea2e8a58fa68d878491d9ae" -> "sha256:12ffd250ee57a34db2b1d68aa8d62f91aab0d8d8d28a8a6b4e56b10c19d59caa" [label=""];
}

