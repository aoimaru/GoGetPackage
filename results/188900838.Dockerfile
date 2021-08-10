[app/sources/188900838.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:6538a467beb7534dcfddab4dbadfca1755ef9462e7c59738b184ba81df8ecaf1" [label="/bin/sh -c apt-get update && apt-get install -y   autoconf   automake   build-essential   curl   git   default-jdk   default-jre   libtool   libpcre3-dev   libssl-dev   make   zip   zlib1g-dev" shape="box"];
  "sha256:056c16d7a67fce33b196ff3e2e11a3941079a35eb0aac3d3c9336ed748b2a96c" [label="/bin/sh -c git clone https://github.com/grpc/grpc-web /github/grpc-web" shape="box"];
  "sha256:0db3e6b7f24297b820c274ac90c48abd45ec9535359baf9d7dabf38f22cb01c4" [label="/bin/sh -c cd /github/grpc-web &&   ./scripts/init_submodules.sh" shape="box"];
  "sha256:723e27e988bc9b94b33c4c5ce181aff80f223ce432dbae9289e11c8bcc2af43a" [label="/bin/sh -c cd /github/grpc-web/third_party/grpc &&   make && make install" shape="box"];
  "sha256:d0be92aca5b29776f270345af64a00d6ba8a2029740fd2521f8bb221feb06b29" [label="/bin/sh -c cd /github/grpc-web &&   make" shape="box"];
  "sha256:002eae0c29066e891b1f67cd554424b0dc5f0123358ebcbb42ac0c430d1c668d" [label="sha256:002eae0c29066e891b1f67cd554424b0dc5f0123358ebcbb42ac0c430d1c668d" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:6538a467beb7534dcfddab4dbadfca1755ef9462e7c59738b184ba81df8ecaf1" [label=""];
  "sha256:6538a467beb7534dcfddab4dbadfca1755ef9462e7c59738b184ba81df8ecaf1" -> "sha256:056c16d7a67fce33b196ff3e2e11a3941079a35eb0aac3d3c9336ed748b2a96c" [label=""];
  "sha256:056c16d7a67fce33b196ff3e2e11a3941079a35eb0aac3d3c9336ed748b2a96c" -> "sha256:0db3e6b7f24297b820c274ac90c48abd45ec9535359baf9d7dabf38f22cb01c4" [label=""];
  "sha256:0db3e6b7f24297b820c274ac90c48abd45ec9535359baf9d7dabf38f22cb01c4" -> "sha256:723e27e988bc9b94b33c4c5ce181aff80f223ce432dbae9289e11c8bcc2af43a" [label=""];
  "sha256:723e27e988bc9b94b33c4c5ce181aff80f223ce432dbae9289e11c8bcc2af43a" -> "sha256:d0be92aca5b29776f270345af64a00d6ba8a2029740fd2521f8bb221feb06b29" [label=""];
  "sha256:d0be92aca5b29776f270345af64a00d6ba8a2029740fd2521f8bb221feb06b29" -> "sha256:002eae0c29066e891b1f67cd554424b0dc5f0123358ebcbb42ac0c430d1c668d" [label=""];
}

