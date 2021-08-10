[app/sources/345363618.Dockerfile]
digraph {
  "sha256:cfc18b4aa7c354ea28a5f02a12a056255ca4a5480b471158e832b49495781dbb" [label="docker-image://docker.io/balenalib/armv7hf-fedora:28-build" shape="ellipse"];
  "sha256:79d138bfc32304911cd47603cd81faddaeb9576cf9501028b2d543d759cf740a" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:b504e65271fce128caa2aea8147239b0372eaaf973041dbd6da2bbf157d804aa" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:beeee0b49d14d158323ff4ea8801bb7e7c5a56bd1b556cd0b62c7191ba76c00a" [label="mkdir{path=/go}" shape="note"];
  "sha256:d9bd7df93ab9f3bce854d34ea42060d22f579cbbd155d407d9ee5a1506b5b7d3" [label="sha256:d9bd7df93ab9f3bce854d34ea42060d22f579cbbd155d407d9ee5a1506b5b7d3" shape="plaintext"];
  "sha256:cfc18b4aa7c354ea28a5f02a12a056255ca4a5480b471158e832b49495781dbb" -> "sha256:79d138bfc32304911cd47603cd81faddaeb9576cf9501028b2d543d759cf740a" [label=""];
  "sha256:79d138bfc32304911cd47603cd81faddaeb9576cf9501028b2d543d759cf740a" -> "sha256:b504e65271fce128caa2aea8147239b0372eaaf973041dbd6da2bbf157d804aa" [label=""];
  "sha256:b504e65271fce128caa2aea8147239b0372eaaf973041dbd6da2bbf157d804aa" -> "sha256:beeee0b49d14d158323ff4ea8801bb7e7c5a56bd1b556cd0b62c7191ba76c00a" [label=""];
  "sha256:beeee0b49d14d158323ff4ea8801bb7e7c5a56bd1b556cd0b62c7191ba76c00a" -> "sha256:d9bd7df93ab9f3bce854d34ea42060d22f579cbbd155d407d9ee5a1506b5b7d3" [label=""];
}

