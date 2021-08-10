[app/sources/441465874.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:ec1000d3c76b17196eee724b2d73d5548e10d398651b16aeb7c6c9244d757dff" [label="/bin/sh -c apk add --no-cache     ca-certificates     tzdata" shape="box"];
  "sha256:01b5b33fad3b664692abdfcedfafec3e17da9ae62e61d52e3d86db9c8a012cf4" [label="local://context" shape="ellipse"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:1b8762f2059babcfcfca5a4805b5063f29d17cd22b8ba9887be3c175df159129" [label="/bin/sh -c apk add --no-cache openssh-client git curl" shape="box"];
  "sha256:7e2e8115dcbdc314ac4300ad4292f8a5aab702b7d658188bf29f7ccf4a3467c3" [label="/bin/sh -c curl https://glide.sh/get | sh" shape="box"];
  "sha256:eb461dce8f31d7f0b16976f7d279ceaae813b731a176126a982e1b5b8c470457" [label="mkdir{path=/go/src/github.com/kopfkrieg/watchtower}" shape="note"];
  "sha256:46a2b09cee5516ea21cb7fe76b9fc3f5f6291a174de7f1b9be080ce277d7a1b9" [label="copy{src=/, dest=/go/src/github.com/kopfkrieg/watchtower/}" shape="note"];
  "sha256:60231546f6228a42df3f6b89600a36c9d010b2c910fe949bbb27e8a627cecd06" [label="/bin/sh -c glide install" shape="box"];
  "sha256:85765775f3e5e98f0e9540cef5f2ade95761717047293a1433fb96e853cefa75" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o watchtower ." shape="box"];
  "sha256:bdb5879e04ab3d35649843bdf4d9295a59a0bc4f245fee93d1a31560e40e5345" [label="copy{src=/go/src/github.com/kopfkrieg/watchtower/watchtower, dest=/}" shape="note"];
  "sha256:4f25b55269389e4bafc1c8ea4dcc8376deac135dd7509bb99db53ed727275a6e" [label="sha256:4f25b55269389e4bafc1c8ea4dcc8376deac135dd7509bb99db53ed727275a6e" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:ec1000d3c76b17196eee724b2d73d5548e10d398651b16aeb7c6c9244d757dff" [label=""];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:1b8762f2059babcfcfca5a4805b5063f29d17cd22b8ba9887be3c175df159129" [label=""];
  "sha256:1b8762f2059babcfcfca5a4805b5063f29d17cd22b8ba9887be3c175df159129" -> "sha256:7e2e8115dcbdc314ac4300ad4292f8a5aab702b7d658188bf29f7ccf4a3467c3" [label=""];
  "sha256:7e2e8115dcbdc314ac4300ad4292f8a5aab702b7d658188bf29f7ccf4a3467c3" -> "sha256:eb461dce8f31d7f0b16976f7d279ceaae813b731a176126a982e1b5b8c470457" [label=""];
  "sha256:eb461dce8f31d7f0b16976f7d279ceaae813b731a176126a982e1b5b8c470457" -> "sha256:46a2b09cee5516ea21cb7fe76b9fc3f5f6291a174de7f1b9be080ce277d7a1b9" [label=""];
  "sha256:01b5b33fad3b664692abdfcedfafec3e17da9ae62e61d52e3d86db9c8a012cf4" -> "sha256:46a2b09cee5516ea21cb7fe76b9fc3f5f6291a174de7f1b9be080ce277d7a1b9" [label=""];
  "sha256:46a2b09cee5516ea21cb7fe76b9fc3f5f6291a174de7f1b9be080ce277d7a1b9" -> "sha256:60231546f6228a42df3f6b89600a36c9d010b2c910fe949bbb27e8a627cecd06" [label=""];
  "sha256:60231546f6228a42df3f6b89600a36c9d010b2c910fe949bbb27e8a627cecd06" -> "sha256:85765775f3e5e98f0e9540cef5f2ade95761717047293a1433fb96e853cefa75" [label=""];
  "sha256:ec1000d3c76b17196eee724b2d73d5548e10d398651b16aeb7c6c9244d757dff" -> "sha256:bdb5879e04ab3d35649843bdf4d9295a59a0bc4f245fee93d1a31560e40e5345" [label=""];
  "sha256:85765775f3e5e98f0e9540cef5f2ade95761717047293a1433fb96e853cefa75" -> "sha256:bdb5879e04ab3d35649843bdf4d9295a59a0bc4f245fee93d1a31560e40e5345" [label=""];
  "sha256:bdb5879e04ab3d35649843bdf4d9295a59a0bc4f245fee93d1a31560e40e5345" -> "sha256:4f25b55269389e4bafc1c8ea4dcc8376deac135dd7509bb99db53ed727275a6e" [label=""];
}

