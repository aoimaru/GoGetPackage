[app/sources/290787433.Dockerfile]
digraph {
  "sha256:007272d3c9c6fa10536f91cef9c2702f8bcc600ac5a2208888e23fff763c1b44" [label="docker-image://docker.io/library/buildpack-deps:wheezy-scm" shape="ellipse"];
  "sha256:38b5d9ec199ddbfc0d142c707fd88f21a6d7c25d531d0a811dcaaec450f0f0d3" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e5e7e300663c937e651ccaa5b1590d6d63de2e041fa0d6eb634b7864663055e3" [label="/bin/sh -c mkdir -p \"$GOLANG_BOOTSTRAP_PATH\" \t&& curl -fsSL \"$GOLANG_BOOTSTRAP_URL\" -o golang.tar.gz \t&& echo \"$GOLANG_BOOTSTRAP_SHA256  golang.tar.gz\" | sha256sum -c - \t&& tar -C \"$GOLANG_BOOTSTRAP_PATH\" -xzf golang.tar.gz \t&& rm golang.tar.gz" shape="box"];
  "sha256:b2fb2730fd163bdf09679131267dbcb8ef8c618a6fcaa50caa2888d31917e0ea" [label="/bin/sh -c export GOROOT_BOOTSTRAP=$GOLANG_BOOTSTRAP_PATH/go \t&& git clone \"$GOLANG_SRC_REPO_URL\" /usr/local/go \t&& cd /usr/local/go/src \t&& ./make.bash \t&& rm -rf \"$GOLANG_BOOTSTRAP_PATH\" /usr/local/go/pkg/bootstrap" shape="box"];
  "sha256:33d070f3c1287111ca44b6cfb01ab2c0e5e8a932a1502d55158117dd0c4c685c" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" \t&& chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:8f25d5ec82c7cf4d881109d4662c3029fd326fc5d38925f081fc1b4f09032321" [label="mkdir{path=/go}" shape="note"];
  "sha256:e6ac26e0344a65d9839523b53f50d8f089d8c43f02b153dcb8bbc41c6276aee9" [label="sha256:e6ac26e0344a65d9839523b53f50d8f089d8c43f02b153dcb8bbc41c6276aee9" shape="plaintext"];
  "sha256:007272d3c9c6fa10536f91cef9c2702f8bcc600ac5a2208888e23fff763c1b44" -> "sha256:38b5d9ec199ddbfc0d142c707fd88f21a6d7c25d531d0a811dcaaec450f0f0d3" [label=""];
  "sha256:38b5d9ec199ddbfc0d142c707fd88f21a6d7c25d531d0a811dcaaec450f0f0d3" -> "sha256:e5e7e300663c937e651ccaa5b1590d6d63de2e041fa0d6eb634b7864663055e3" [label=""];
  "sha256:e5e7e300663c937e651ccaa5b1590d6d63de2e041fa0d6eb634b7864663055e3" -> "sha256:b2fb2730fd163bdf09679131267dbcb8ef8c618a6fcaa50caa2888d31917e0ea" [label=""];
  "sha256:b2fb2730fd163bdf09679131267dbcb8ef8c618a6fcaa50caa2888d31917e0ea" -> "sha256:33d070f3c1287111ca44b6cfb01ab2c0e5e8a932a1502d55158117dd0c4c685c" [label=""];
  "sha256:33d070f3c1287111ca44b6cfb01ab2c0e5e8a932a1502d55158117dd0c4c685c" -> "sha256:8f25d5ec82c7cf4d881109d4662c3029fd326fc5d38925f081fc1b4f09032321" [label=""];
  "sha256:8f25d5ec82c7cf4d881109d4662c3029fd326fc5d38925f081fc1b4f09032321" -> "sha256:e6ac26e0344a65d9839523b53f50d8f089d8c43f02b153dcb8bbc41c6276aee9" [label=""];
}

