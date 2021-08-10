[app/sources/368310215.Dockerfile]
digraph {
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" [label="docker-image://docker.io/library/golang:1.12-alpine" shape="ellipse"];
  "sha256:318b8a272ba048ce4cbb5563827f38c8522168a79acca8e03ebcdcfd9c329f7d" [label="/bin/sh -c mkdir /user &&     echo 'nobody:x:65534:65534:nobody:/:' > /user/passwd &&     echo 'nobody:x:65534:' > /user/group" shape="box"];
  "sha256:982e09384f8efd72f5282dc985dba1916ce365f52db037ea8ec894e5ccc931f5" [label="/bin/sh -c apk add --no-cache ca-certificates git" shape="box"];
  "sha256:0dc15196df189dcbcfd998babb4f28ee8861f981928382f1c0a7ed23ce92795f" [label="mkdir{path=/src}" shape="note"];
  "sha256:a414c9a6d748ee05aa681358dd81ebee7ebbd508a6524723fea04028a92490b3" [label="local://context" shape="ellipse"];
  "sha256:4072444652819c6c682f93ff4fba8657d588aad19ec9f20f5f4296da7c14f376" [label="copy{src=/go.mod, dest=/src/},copy{src=/go.sum, dest=/src/}" shape="note"];
  "sha256:5131511688d6045b4b8d67f0b3c4996fbd83df2bde98ecdea2eaeb6dfa48343e" [label="/bin/sh -c go mod download" shape="box"];
  "sha256:b7ac33512d99df40de9035133da5bf8617477f12e77db9b073c43a83d2444dcd" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:37c0c267c188992d5cb8c60b02db982561a19f178e170b98dd47f1c3536dbbaa" [label="/bin/sh -c CGO_ENABLED=0 go build     -installsuffix 'static'     -o /app ." shape="box"];
  "sha256:c8c8c974b011ada1329102eb6dfb8a709052a5a0dbbb5e8665905a46760a92bd" [label="copy{src=/user/group, dest=/etc/},copy{src=/user/passwd, dest=/etc/}" shape="note"];
  "sha256:527463e5aac036d019dab2888de14f0ae355dc56999a3ff7043b53cffbc011e2" [label="copy{src=/etc/ssl/certs/ca-certificates.crt, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:e565a9cf9840732c81bd3f7e9cef64e8455d4c87588d84706d2fd378a403cf57" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:4d096a3237e7ca3047a3bf185edee8f2b6e4a2b4f3c98fd556871f3272056629" [label="sha256:4d096a3237e7ca3047a3bf185edee8f2b6e4a2b4f3c98fd556871f3272056629" shape="plaintext"];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" -> "sha256:318b8a272ba048ce4cbb5563827f38c8522168a79acca8e03ebcdcfd9c329f7d" [label=""];
  "sha256:318b8a272ba048ce4cbb5563827f38c8522168a79acca8e03ebcdcfd9c329f7d" -> "sha256:982e09384f8efd72f5282dc985dba1916ce365f52db037ea8ec894e5ccc931f5" [label=""];
  "sha256:982e09384f8efd72f5282dc985dba1916ce365f52db037ea8ec894e5ccc931f5" -> "sha256:0dc15196df189dcbcfd998babb4f28ee8861f981928382f1c0a7ed23ce92795f" [label=""];
  "sha256:0dc15196df189dcbcfd998babb4f28ee8861f981928382f1c0a7ed23ce92795f" -> "sha256:4072444652819c6c682f93ff4fba8657d588aad19ec9f20f5f4296da7c14f376" [label=""];
  "sha256:a414c9a6d748ee05aa681358dd81ebee7ebbd508a6524723fea04028a92490b3" -> "sha256:4072444652819c6c682f93ff4fba8657d588aad19ec9f20f5f4296da7c14f376" [label=""];
  "sha256:4072444652819c6c682f93ff4fba8657d588aad19ec9f20f5f4296da7c14f376" -> "sha256:5131511688d6045b4b8d67f0b3c4996fbd83df2bde98ecdea2eaeb6dfa48343e" [label=""];
  "sha256:5131511688d6045b4b8d67f0b3c4996fbd83df2bde98ecdea2eaeb6dfa48343e" -> "sha256:b7ac33512d99df40de9035133da5bf8617477f12e77db9b073c43a83d2444dcd" [label=""];
  "sha256:a414c9a6d748ee05aa681358dd81ebee7ebbd508a6524723fea04028a92490b3" -> "sha256:b7ac33512d99df40de9035133da5bf8617477f12e77db9b073c43a83d2444dcd" [label=""];
  "sha256:b7ac33512d99df40de9035133da5bf8617477f12e77db9b073c43a83d2444dcd" -> "sha256:37c0c267c188992d5cb8c60b02db982561a19f178e170b98dd47f1c3536dbbaa" [label=""];
  "sha256:37c0c267c188992d5cb8c60b02db982561a19f178e170b98dd47f1c3536dbbaa" -> "sha256:c8c8c974b011ada1329102eb6dfb8a709052a5a0dbbb5e8665905a46760a92bd" [label=""];
  "sha256:c8c8c974b011ada1329102eb6dfb8a709052a5a0dbbb5e8665905a46760a92bd" -> "sha256:527463e5aac036d019dab2888de14f0ae355dc56999a3ff7043b53cffbc011e2" [label=""];
  "sha256:37c0c267c188992d5cb8c60b02db982561a19f178e170b98dd47f1c3536dbbaa" -> "sha256:527463e5aac036d019dab2888de14f0ae355dc56999a3ff7043b53cffbc011e2" [label=""];
  "sha256:527463e5aac036d019dab2888de14f0ae355dc56999a3ff7043b53cffbc011e2" -> "sha256:e565a9cf9840732c81bd3f7e9cef64e8455d4c87588d84706d2fd378a403cf57" [label=""];
  "sha256:37c0c267c188992d5cb8c60b02db982561a19f178e170b98dd47f1c3536dbbaa" -> "sha256:e565a9cf9840732c81bd3f7e9cef64e8455d4c87588d84706d2fd378a403cf57" [label=""];
  "sha256:e565a9cf9840732c81bd3f7e9cef64e8455d4c87588d84706d2fd378a403cf57" -> "sha256:4d096a3237e7ca3047a3bf185edee8f2b6e4a2b4f3c98fd556871f3272056629" [label=""];
}

