[app/sources/345366179.Dockerfile]
digraph {
  "sha256:c87582d2162034e6f27e19c752f3e458ed04b6fab5a43b81a55b7eeea5ab6782" [label="docker-image://docker.io/balenalib/hummingboard-fedora:28-run" shape="ellipse"];
  "sha256:4126c15b059d9b7ee4a725bdf4753de930ba2127560acbc8cac219cb1d9e76b0" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:c3ea846d4f6ff78abf312d492f3a4f658068f9cb38cf70a1874507e5f5aad95d" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:3b3dd49e72e61c182f18cb4e1b43197af13e0dcabaa493a16420962fabd1bb48" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:0814744f0d7943b0121dca9621c62c68aad5a4bf40f90ebb02155f61345f5cd0" [label="mkdir{path=/go}" shape="note"];
  "sha256:b898f854edc97e97e022f0dcdedb6ffdd546ab02e1fa82601fd85062a151a3f7" [label="sha256:b898f854edc97e97e022f0dcdedb6ffdd546ab02e1fa82601fd85062a151a3f7" shape="plaintext"];
  "sha256:c87582d2162034e6f27e19c752f3e458ed04b6fab5a43b81a55b7eeea5ab6782" -> "sha256:4126c15b059d9b7ee4a725bdf4753de930ba2127560acbc8cac219cb1d9e76b0" [label=""];
  "sha256:4126c15b059d9b7ee4a725bdf4753de930ba2127560acbc8cac219cb1d9e76b0" -> "sha256:c3ea846d4f6ff78abf312d492f3a4f658068f9cb38cf70a1874507e5f5aad95d" [label=""];
  "sha256:c3ea846d4f6ff78abf312d492f3a4f658068f9cb38cf70a1874507e5f5aad95d" -> "sha256:3b3dd49e72e61c182f18cb4e1b43197af13e0dcabaa493a16420962fabd1bb48" [label=""];
  "sha256:3b3dd49e72e61c182f18cb4e1b43197af13e0dcabaa493a16420962fabd1bb48" -> "sha256:0814744f0d7943b0121dca9621c62c68aad5a4bf40f90ebb02155f61345f5cd0" [label=""];
  "sha256:0814744f0d7943b0121dca9621c62c68aad5a4bf40f90ebb02155f61345f5cd0" -> "sha256:b898f854edc97e97e022f0dcdedb6ffdd546ab02e1fa82601fd85062a151a3f7" [label=""];
}

