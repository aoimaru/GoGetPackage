[app/sources/472171998.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:752946bed353a5268c4950cb92e5739513e5ea5b6b690fa3aa67690147cfaf01" [label="mkdir{path=/root}" shape="note"];
  "sha256:2071aa663e1738a42724f2ab263c17f4f728f2aa0545c87158b591aeefa76e08" [label="docker-image://docker.io/library/golang:1.10.4" shape="ellipse"];
  "sha256:a1022d46273bba8cfa01eb8b1bdb2c40f479f34c05894d80d6261a7a9909a176" [label="mkdir{path=/go/src/github.com/awslabs/aws-eks-cluster-controller}" shape="note"];
  "sha256:8e59fd0439afcda4231f5a14bd7ac6f167c6f0cb6f6d83ba00a8fd464891d499" [label="/bin/sh -c curl -o /tmp/aws-iam-authenticator --silent --location https://amazon-eks.s3-us-west-2.amazonaws.com/1.10.3/2018-07-26/bin/linux/amd64/aws-iam-authenticator     && chmod 0755 /tmp/aws-iam-authenticator     && mv /tmp/aws-iam-authenticator /usr/local/bin" shape="box"];
  "sha256:8e6c8e70c6bd25e5fb4aa83a036183313d13e42708955d5a4147ac9e5fc2eed3" [label="local://context" shape="ellipse"];
  "sha256:e31eea3a013a4eb16b492783c9c8723caa438c4be2560f72a33f786772e00e8d" [label="copy{src=/vendor, dest=/go/src/github.com/awslabs/aws-eks-cluster-controller/vendor/}" shape="note"];
  "sha256:faca9c9b0284378c5988ea2823d4a9f8dc0e21fabaab5d8d7d78639aaa54613c" [label="copy{src=/pkg, dest=/go/src/github.com/awslabs/aws-eks-cluster-controller/pkg/}" shape="note"];
  "sha256:6c4c5f47d1ec2529308ede12226ed461ade842086b9de514bda5560776bb3147" [label="copy{src=/cmd, dest=/go/src/github.com/awslabs/aws-eks-cluster-controller/cmd/}" shape="note"];
  "sha256:ca3493ea1ff4379bad909ca8047c28787e41720601472e90d6507406bebc4f95" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o manager github.com/awslabs/aws-eks-cluster-controller/cmd/manager" shape="box"];
  "sha256:04b10c51412dd9047fcb7f37755ffeee175c86e1548a510744b6b19503af7419" [label="copy{src=/etc/ssl, dest=/etc/ssl}" shape="note"];
  "sha256:2af75742a5fd40a5c6428f4095bd852fad941806b64ce0b3a0b853c3f9ed7d88" [label="copy{src=/usr/local/bin/aws-iam-authenticator, dest=/usr/local/bin/aws-iam-authenticator}" shape="note"];
  "sha256:adefcbb21e31d9db6aaa7eb2f6ae39d5a8215fbc4adea2aee751de17edc16514" [label="copy{src=/go/src/github.com/awslabs/aws-eks-cluster-controller/manager, dest=/root/}" shape="note"];
  "sha256:b40e5ccba4261b84968b59539d9c51b101df589020285cef8276d8cb1f541706" [label="sha256:b40e5ccba4261b84968b59539d9c51b101df589020285cef8276d8cb1f541706" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:752946bed353a5268c4950cb92e5739513e5ea5b6b690fa3aa67690147cfaf01" [label=""];
  "sha256:2071aa663e1738a42724f2ab263c17f4f728f2aa0545c87158b591aeefa76e08" -> "sha256:a1022d46273bba8cfa01eb8b1bdb2c40f479f34c05894d80d6261a7a9909a176" [label=""];
  "sha256:a1022d46273bba8cfa01eb8b1bdb2c40f479f34c05894d80d6261a7a9909a176" -> "sha256:8e59fd0439afcda4231f5a14bd7ac6f167c6f0cb6f6d83ba00a8fd464891d499" [label=""];
  "sha256:8e59fd0439afcda4231f5a14bd7ac6f167c6f0cb6f6d83ba00a8fd464891d499" -> "sha256:e31eea3a013a4eb16b492783c9c8723caa438c4be2560f72a33f786772e00e8d" [label=""];
  "sha256:8e6c8e70c6bd25e5fb4aa83a036183313d13e42708955d5a4147ac9e5fc2eed3" -> "sha256:e31eea3a013a4eb16b492783c9c8723caa438c4be2560f72a33f786772e00e8d" [label=""];
  "sha256:e31eea3a013a4eb16b492783c9c8723caa438c4be2560f72a33f786772e00e8d" -> "sha256:faca9c9b0284378c5988ea2823d4a9f8dc0e21fabaab5d8d7d78639aaa54613c" [label=""];
  "sha256:8e6c8e70c6bd25e5fb4aa83a036183313d13e42708955d5a4147ac9e5fc2eed3" -> "sha256:faca9c9b0284378c5988ea2823d4a9f8dc0e21fabaab5d8d7d78639aaa54613c" [label=""];
  "sha256:faca9c9b0284378c5988ea2823d4a9f8dc0e21fabaab5d8d7d78639aaa54613c" -> "sha256:6c4c5f47d1ec2529308ede12226ed461ade842086b9de514bda5560776bb3147" [label=""];
  "sha256:8e6c8e70c6bd25e5fb4aa83a036183313d13e42708955d5a4147ac9e5fc2eed3" -> "sha256:6c4c5f47d1ec2529308ede12226ed461ade842086b9de514bda5560776bb3147" [label=""];
  "sha256:6c4c5f47d1ec2529308ede12226ed461ade842086b9de514bda5560776bb3147" -> "sha256:ca3493ea1ff4379bad909ca8047c28787e41720601472e90d6507406bebc4f95" [label=""];
  "sha256:752946bed353a5268c4950cb92e5739513e5ea5b6b690fa3aa67690147cfaf01" -> "sha256:04b10c51412dd9047fcb7f37755ffeee175c86e1548a510744b6b19503af7419" [label=""];
  "sha256:ca3493ea1ff4379bad909ca8047c28787e41720601472e90d6507406bebc4f95" -> "sha256:04b10c51412dd9047fcb7f37755ffeee175c86e1548a510744b6b19503af7419" [label=""];
  "sha256:04b10c51412dd9047fcb7f37755ffeee175c86e1548a510744b6b19503af7419" -> "sha256:2af75742a5fd40a5c6428f4095bd852fad941806b64ce0b3a0b853c3f9ed7d88" [label=""];
  "sha256:ca3493ea1ff4379bad909ca8047c28787e41720601472e90d6507406bebc4f95" -> "sha256:2af75742a5fd40a5c6428f4095bd852fad941806b64ce0b3a0b853c3f9ed7d88" [label=""];
  "sha256:2af75742a5fd40a5c6428f4095bd852fad941806b64ce0b3a0b853c3f9ed7d88" -> "sha256:adefcbb21e31d9db6aaa7eb2f6ae39d5a8215fbc4adea2aee751de17edc16514" [label=""];
  "sha256:ca3493ea1ff4379bad909ca8047c28787e41720601472e90d6507406bebc4f95" -> "sha256:adefcbb21e31d9db6aaa7eb2f6ae39d5a8215fbc4adea2aee751de17edc16514" [label=""];
  "sha256:adefcbb21e31d9db6aaa7eb2f6ae39d5a8215fbc4adea2aee751de17edc16514" -> "sha256:b40e5ccba4261b84968b59539d9c51b101df589020285cef8276d8cb1f541706" [label=""];
}

