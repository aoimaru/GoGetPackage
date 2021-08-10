[app/sources/345367937.Dockerfile]
digraph {
  "sha256:5a9a99572a369e4be7fcf9ade5fb70d84f477e03db1975548ed7371eb11dd45f" [label="docker-image://docker.io/balenalib/artik530-fedora:26-run" shape="ellipse"];
  "sha256:d16f2a8eaf244a24f2ccf70b3db4547ad85b158d0efaf1193419ae3628b65f59" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:f7631e54eab5bf5726add6692608f37e56e114378fe55732ebee0f823d586c23" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:8dd3fc7356e07d57c5e3d4ad3340e645f873405c666e6f3f87114e8cb8ce5767" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:fb79f215435dc703d910dde16824338665800217be4518584a7556658b181175" [label="mkdir{path=/go}" shape="note"];
  "sha256:4208e3c3c727df8d12393201bbac055dfb91f4059cefd5461165c407e1e2c4aa" [label="sha256:4208e3c3c727df8d12393201bbac055dfb91f4059cefd5461165c407e1e2c4aa" shape="plaintext"];
  "sha256:5a9a99572a369e4be7fcf9ade5fb70d84f477e03db1975548ed7371eb11dd45f" -> "sha256:d16f2a8eaf244a24f2ccf70b3db4547ad85b158d0efaf1193419ae3628b65f59" [label=""];
  "sha256:d16f2a8eaf244a24f2ccf70b3db4547ad85b158d0efaf1193419ae3628b65f59" -> "sha256:f7631e54eab5bf5726add6692608f37e56e114378fe55732ebee0f823d586c23" [label=""];
  "sha256:f7631e54eab5bf5726add6692608f37e56e114378fe55732ebee0f823d586c23" -> "sha256:8dd3fc7356e07d57c5e3d4ad3340e645f873405c666e6f3f87114e8cb8ce5767" [label=""];
  "sha256:8dd3fc7356e07d57c5e3d4ad3340e645f873405c666e6f3f87114e8cb8ce5767" -> "sha256:fb79f215435dc703d910dde16824338665800217be4518584a7556658b181175" [label=""];
  "sha256:fb79f215435dc703d910dde16824338665800217be4518584a7556658b181175" -> "sha256:4208e3c3c727df8d12393201bbac055dfb91f4059cefd5461165c407e1e2c4aa" [label=""];
}

