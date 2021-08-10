[app/sources/252766249.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:bcd9c64662199ca6b8be6c0b28dc9bf84b282d2e00610340302f0289fdd86c43" [label="/bin/sh -c mkdir -p /conf && mkdir -p /conf-copy && mkdir -p /data && apk add --no-cache tzdata bash aria2 darkhttpd s6" shape="box"];
  "sha256:b30dbceb3d5e0ca081e634b94158c3fc9905160d2a993bb7e26a8033a7750447" [label="/bin/sh -c apk add --no-cache git && git clone \\--depth 1 https://github.com/ziahamza/webui-aria2 /aria2-webui && apk del git" shape="box"];
  "sha256:2f570acbf125d66e4dae56bef09c72f39da7ac0272bc15f681121b5855a23ea2" [label="local://context" shape="ellipse"];
  "sha256:27eeb10b4c7b0265f4e84c00d9c037fd3bda8d8b80ee2de32248124e64f16829" [label="copy{src=/files/start.sh, dest=/conf-copy/start.sh}" shape="note"];
  "sha256:283835169c8b4657b9ba17de1e1bc407e1df2e2984f5990899ef2c450fce0592" [label="copy{src=/files/aria2.conf, dest=/conf-copy/aria2.conf}" shape="note"];
  "sha256:098bf9f1af03b27d5d1fb76cb1e5a8eece5690b730dea6faa7aff42371c2ec1c" [label="/bin/sh -c chmod +x /conf-copy/start.sh" shape="box"];
  "sha256:ee48a584e7330f243e17718c681bfbab1552b5a82fec94a01cbf839b8a96ed1f" [label="sha256:ee48a584e7330f243e17718c681bfbab1552b5a82fec94a01cbf839b8a96ed1f" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:bcd9c64662199ca6b8be6c0b28dc9bf84b282d2e00610340302f0289fdd86c43" [label=""];
  "sha256:bcd9c64662199ca6b8be6c0b28dc9bf84b282d2e00610340302f0289fdd86c43" -> "sha256:b30dbceb3d5e0ca081e634b94158c3fc9905160d2a993bb7e26a8033a7750447" [label=""];
  "sha256:b30dbceb3d5e0ca081e634b94158c3fc9905160d2a993bb7e26a8033a7750447" -> "sha256:27eeb10b4c7b0265f4e84c00d9c037fd3bda8d8b80ee2de32248124e64f16829" [label=""];
  "sha256:2f570acbf125d66e4dae56bef09c72f39da7ac0272bc15f681121b5855a23ea2" -> "sha256:27eeb10b4c7b0265f4e84c00d9c037fd3bda8d8b80ee2de32248124e64f16829" [label=""];
  "sha256:27eeb10b4c7b0265f4e84c00d9c037fd3bda8d8b80ee2de32248124e64f16829" -> "sha256:283835169c8b4657b9ba17de1e1bc407e1df2e2984f5990899ef2c450fce0592" [label=""];
  "sha256:2f570acbf125d66e4dae56bef09c72f39da7ac0272bc15f681121b5855a23ea2" -> "sha256:283835169c8b4657b9ba17de1e1bc407e1df2e2984f5990899ef2c450fce0592" [label=""];
  "sha256:283835169c8b4657b9ba17de1e1bc407e1df2e2984f5990899ef2c450fce0592" -> "sha256:098bf9f1af03b27d5d1fb76cb1e5a8eece5690b730dea6faa7aff42371c2ec1c" [label=""];
  "sha256:098bf9f1af03b27d5d1fb76cb1e5a8eece5690b730dea6faa7aff42371c2ec1c" -> "sha256:ee48a584e7330f243e17718c681bfbab1552b5a82fec94a01cbf839b8a96ed1f" [label=""];
}

