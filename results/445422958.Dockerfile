[app/sources/445422958.Dockerfile]
digraph {
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" [label="docker-image://docker.io/library/golang:1.11-alpine" shape="ellipse"];
  "sha256:40f320b78d2edda42e072d74eee44cc1dc87e39094869aef1d61fb2abe91631a" [label="/bin/sh -c apk add --no-cache git" shape="box"];
  "sha256:988cc03e0bc9210147b8f66e0b39353d87ab35896103b404c6d602bd94e7c699" [label="/bin/sh -c go get github.com/pdevine/go-asciisprite" shape="box"];
  "sha256:40180ffed1342f710e4655091bd71455b918720c83ec2506a12f08d184590f05" [label="mkdir{path=/project}" shape="note"];
  "sha256:6fff6116432156dc44b751e6036397443b8e13c9e193486a7b6ebdd6d07afb6d" [label="local://context" shape="ellipse"];
  "sha256:aa1f8dcaed7c10812d923bd193f6ad92ec61845ebeef903e8ddcecbef27ee30d" [label="copy{src=/surprise.go, dest=/project/}" shape="note"];
  "sha256:66af9b005728421ea1cce4ab8cf491a78d63dac6d894f171e781fc5ef493b6b7" [label="/bin/sh -c CGO_ENABLED=0 go build -a -ldflags '-extldflags \"-static\"' -o surprise surprise.go" shape="box"];
  "sha256:c5f153312beb57f5cef64a91a00373091a952fe2df7c47cce3725f266843ca1e" [label="copy{src=/project/surprise, dest=/surprise}" shape="note"];
  "sha256:f11e75015f6ff9776b4503eac447dda7a1146db9926510d29e150a19eb625bad" [label="sha256:f11e75015f6ff9776b4503eac447dda7a1146db9926510d29e150a19eb625bad" shape="plaintext"];
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" -> "sha256:40f320b78d2edda42e072d74eee44cc1dc87e39094869aef1d61fb2abe91631a" [label=""];
  "sha256:40f320b78d2edda42e072d74eee44cc1dc87e39094869aef1d61fb2abe91631a" -> "sha256:988cc03e0bc9210147b8f66e0b39353d87ab35896103b404c6d602bd94e7c699" [label=""];
  "sha256:988cc03e0bc9210147b8f66e0b39353d87ab35896103b404c6d602bd94e7c699" -> "sha256:40180ffed1342f710e4655091bd71455b918720c83ec2506a12f08d184590f05" [label=""];
  "sha256:40180ffed1342f710e4655091bd71455b918720c83ec2506a12f08d184590f05" -> "sha256:aa1f8dcaed7c10812d923bd193f6ad92ec61845ebeef903e8ddcecbef27ee30d" [label=""];
  "sha256:6fff6116432156dc44b751e6036397443b8e13c9e193486a7b6ebdd6d07afb6d" -> "sha256:aa1f8dcaed7c10812d923bd193f6ad92ec61845ebeef903e8ddcecbef27ee30d" [label=""];
  "sha256:aa1f8dcaed7c10812d923bd193f6ad92ec61845ebeef903e8ddcecbef27ee30d" -> "sha256:66af9b005728421ea1cce4ab8cf491a78d63dac6d894f171e781fc5ef493b6b7" [label=""];
  "sha256:66af9b005728421ea1cce4ab8cf491a78d63dac6d894f171e781fc5ef493b6b7" -> "sha256:c5f153312beb57f5cef64a91a00373091a952fe2df7c47cce3725f266843ca1e" [label=""];
  "sha256:c5f153312beb57f5cef64a91a00373091a952fe2df7c47cce3725f266843ca1e" -> "sha256:f11e75015f6ff9776b4503eac447dda7a1146db9926510d29e150a19eb625bad" [label=""];
}

