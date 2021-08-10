[app/sources/252788791.Dockerfile]
digraph {
  "sha256:5db6bf1b2e7878d0cc855f166f2ebc4769b69aaee9fd20d5c5f695a319a1c2d6" [label="https://storage.googleapis.com/v2ray-docker/geoip.dat" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:c75463592f72475cd64f5d81c9f2542f0f4ddc676f76f1675b3c4185c6575f4a" [label="local://context" shape="ellipse"];
  "sha256:1d340678c66393b7528638f0958d8f977efbd61c64896d12c09f92b15ecc957f" [label="copy{src=/v2ray, dest=/usr/bin/v2ray/}" shape="note"];
  "sha256:bb6dcdccccc242698a6f6a143e00cecdf5caff58868fefdbff04da5b4adfee9b" [label="https://storage.googleapis.com/v2ray-docker/v2ctl" shape="ellipse"];
  "sha256:b8c962936bb782f42dbb5bd1f6fabcd1e8f40dfb7fc2c09b25282842174ce1c2" [label="copy{src=/v2ctl, dest=/usr/bin/v2ray/}" shape="note"];
  "sha256:9ab54cf437bec6059a2799e7ac302b8c8ad09df18775529572d5cfe7082648ff" [label="copy{src=/geoip.dat, dest=/usr/bin/v2ray/}" shape="note"];
  "sha256:50bc72b69a2d50bd05d57237993d87b3ed3ad5d8751c4c0f60fc4a54030c3c8d" [label="https://storage.googleapis.com/v2ray-docker/geosite.dat" shape="ellipse"];
  "sha256:4f0c058702f0f85bafff86af9c3ef81915b8acf670959ea87d652034088ff7a2" [label="copy{src=/geosite.dat, dest=/usr/bin/v2ray/}" shape="note"];
  "sha256:8b6732228335f7fcb5f1e194877f0e13ac11e0fbd6c5c21c73145ebf0a3f27c3" [label="copy{src=/config.json, dest=/etc/v2ray/config.json}" shape="note"];
  "sha256:d71b4dcc805b172b0f38984376ba325cd595cef923063a1893a789972e83a164" [label="/bin/sh -c set -ex && apk --no-cache add ca-certificates && mkdir /var/log/v2ray/ &&chmod +x /usr/bin/v2ray/v2ctl && chmod +x /usr/bin/v2ray/v2ray" shape="box"];
  "sha256:0cddef015f22a4bd39b513f57ebafad4c8799c1e90abaea1179b24052e4c7779" [label="sha256:0cddef015f22a4bd39b513f57ebafad4c8799c1e90abaea1179b24052e4c7779" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:1d340678c66393b7528638f0958d8f977efbd61c64896d12c09f92b15ecc957f" [label=""];
  "sha256:c75463592f72475cd64f5d81c9f2542f0f4ddc676f76f1675b3c4185c6575f4a" -> "sha256:1d340678c66393b7528638f0958d8f977efbd61c64896d12c09f92b15ecc957f" [label=""];
  "sha256:1d340678c66393b7528638f0958d8f977efbd61c64896d12c09f92b15ecc957f" -> "sha256:b8c962936bb782f42dbb5bd1f6fabcd1e8f40dfb7fc2c09b25282842174ce1c2" [label=""];
  "sha256:bb6dcdccccc242698a6f6a143e00cecdf5caff58868fefdbff04da5b4adfee9b" -> "sha256:b8c962936bb782f42dbb5bd1f6fabcd1e8f40dfb7fc2c09b25282842174ce1c2" [label=""];
  "sha256:b8c962936bb782f42dbb5bd1f6fabcd1e8f40dfb7fc2c09b25282842174ce1c2" -> "sha256:9ab54cf437bec6059a2799e7ac302b8c8ad09df18775529572d5cfe7082648ff" [label=""];
  "sha256:5db6bf1b2e7878d0cc855f166f2ebc4769b69aaee9fd20d5c5f695a319a1c2d6" -> "sha256:9ab54cf437bec6059a2799e7ac302b8c8ad09df18775529572d5cfe7082648ff" [label=""];
  "sha256:9ab54cf437bec6059a2799e7ac302b8c8ad09df18775529572d5cfe7082648ff" -> "sha256:4f0c058702f0f85bafff86af9c3ef81915b8acf670959ea87d652034088ff7a2" [label=""];
  "sha256:50bc72b69a2d50bd05d57237993d87b3ed3ad5d8751c4c0f60fc4a54030c3c8d" -> "sha256:4f0c058702f0f85bafff86af9c3ef81915b8acf670959ea87d652034088ff7a2" [label=""];
  "sha256:4f0c058702f0f85bafff86af9c3ef81915b8acf670959ea87d652034088ff7a2" -> "sha256:8b6732228335f7fcb5f1e194877f0e13ac11e0fbd6c5c21c73145ebf0a3f27c3" [label=""];
  "sha256:c75463592f72475cd64f5d81c9f2542f0f4ddc676f76f1675b3c4185c6575f4a" -> "sha256:8b6732228335f7fcb5f1e194877f0e13ac11e0fbd6c5c21c73145ebf0a3f27c3" [label=""];
  "sha256:8b6732228335f7fcb5f1e194877f0e13ac11e0fbd6c5c21c73145ebf0a3f27c3" -> "sha256:d71b4dcc805b172b0f38984376ba325cd595cef923063a1893a789972e83a164" [label=""];
  "sha256:d71b4dcc805b172b0f38984376ba325cd595cef923063a1893a789972e83a164" -> "sha256:0cddef015f22a4bd39b513f57ebafad4c8799c1e90abaea1179b24052e4c7779" [label=""];
}

