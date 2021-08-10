[app/sources/196414480.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:b24b29fe6cd75aeb81978d3004b18120dd7ca30e2cf76d02bb911c529a7991fe" [label="/bin/sh -c apk add --no-cache \tbash \tca-certificates" shape="box"];
  "sha256:4a37b8eb9d86028e9a536570152833f4e4dc0f2952fa35a0e829d6b36a852fe0" [label="local://context" shape="ellipse"];
  "sha256:c97665b6f5f545c31c8afe219fc899413985ab31cf71712f348cf14a04f29521" [label="copy{src=/, dest=/go/src/github.com/genuinetools/netns}" shape="note"];
  "sha256:07d1ec2d04067db3b9fb2036ed3625e0dbd7012872db23031ec57fad11f9215e" [label="/bin/sh -c set -x \t&& apk add --no-cache --virtual .build-deps \t\tgit \t\tgcc \t\tlibc-dev \t\tlinux-headers \t\tlibgcc \t\tmake \t&& cd /go/src/github.com/genuinetools/netns \t&& make static \t&& mv netns /usr/bin/netns \t&& apk del .build-deps \t&& rm -rf /go \t&& echo \"Build complete.\"" shape="box"];
  "sha256:5e6a63e5add21edbe950817144ab7640844187c52067b71246423bca51adb907" [label="copy{src=/usr/bin/netns, dest=/usr/bin/netns}" shape="note"];
  "sha256:dc5d0e85a7275e9265d8a384efcdff8c8d947c6d599d48334850cb01c28fe281" [label="copy{src=/etc/ssl/certs, dest=/etc/ssl/certs}" shape="note"];
  "sha256:bed36746be722047afb9d7e54bd7ca86e5207ce31e26684f3936db7056ebda93" [label="sha256:bed36746be722047afb9d7e54bd7ca86e5207ce31e26684f3936db7056ebda93" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:b24b29fe6cd75aeb81978d3004b18120dd7ca30e2cf76d02bb911c529a7991fe" [label=""];
  "sha256:b24b29fe6cd75aeb81978d3004b18120dd7ca30e2cf76d02bb911c529a7991fe" -> "sha256:c97665b6f5f545c31c8afe219fc899413985ab31cf71712f348cf14a04f29521" [label=""];
  "sha256:4a37b8eb9d86028e9a536570152833f4e4dc0f2952fa35a0e829d6b36a852fe0" -> "sha256:c97665b6f5f545c31c8afe219fc899413985ab31cf71712f348cf14a04f29521" [label=""];
  "sha256:c97665b6f5f545c31c8afe219fc899413985ab31cf71712f348cf14a04f29521" -> "sha256:07d1ec2d04067db3b9fb2036ed3625e0dbd7012872db23031ec57fad11f9215e" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:5e6a63e5add21edbe950817144ab7640844187c52067b71246423bca51adb907" [label=""];
  "sha256:07d1ec2d04067db3b9fb2036ed3625e0dbd7012872db23031ec57fad11f9215e" -> "sha256:5e6a63e5add21edbe950817144ab7640844187c52067b71246423bca51adb907" [label=""];
  "sha256:5e6a63e5add21edbe950817144ab7640844187c52067b71246423bca51adb907" -> "sha256:dc5d0e85a7275e9265d8a384efcdff8c8d947c6d599d48334850cb01c28fe281" [label=""];
  "sha256:07d1ec2d04067db3b9fb2036ed3625e0dbd7012872db23031ec57fad11f9215e" -> "sha256:dc5d0e85a7275e9265d8a384efcdff8c8d947c6d599d48334850cb01c28fe281" [label=""];
  "sha256:dc5d0e85a7275e9265d8a384efcdff8c8d947c6d599d48334850cb01c28fe281" -> "sha256:bed36746be722047afb9d7e54bd7ca86e5207ce31e26684f3936db7056ebda93" [label=""];
}

