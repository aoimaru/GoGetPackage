[app/sources/345375179.Dockerfile]
digraph {
  "sha256:b55c76369c27816e9be7d0f51cbcc40b42125b9b36ab7795eace14258b858d9a" [label="docker-image://docker.io/balenalib/nitrogen6xq2g-fedora:29-build@sha256:686fc8975e3827475050132e9edea52f8a36179ba8dea31084da3e8583e42d85" shape="ellipse"];
  "sha256:e382fd390857ba595890d036adc26de9af9cfcc30970ddd94b6dafa46ae6428e" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:0e3218e24d4035c944708759d8de30eaeb3d702a9c1d4749823d21a073c46938" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:d09181624a530b8f993716acf4ea399990d7e2215889952fd8d661b218f34569" [label="mkdir{path=/go}" shape="note"];
  "sha256:dc3747fcf263b7737146bd10babfe57f180579d58105d84f7e475a8586847376" [label="sha256:dc3747fcf263b7737146bd10babfe57f180579d58105d84f7e475a8586847376" shape="plaintext"];
  "sha256:b55c76369c27816e9be7d0f51cbcc40b42125b9b36ab7795eace14258b858d9a" -> "sha256:e382fd390857ba595890d036adc26de9af9cfcc30970ddd94b6dafa46ae6428e" [label=""];
  "sha256:e382fd390857ba595890d036adc26de9af9cfcc30970ddd94b6dafa46ae6428e" -> "sha256:0e3218e24d4035c944708759d8de30eaeb3d702a9c1d4749823d21a073c46938" [label=""];
  "sha256:0e3218e24d4035c944708759d8de30eaeb3d702a9c1d4749823d21a073c46938" -> "sha256:d09181624a530b8f993716acf4ea399990d7e2215889952fd8d661b218f34569" [label=""];
  "sha256:d09181624a530b8f993716acf4ea399990d7e2215889952fd8d661b218f34569" -> "sha256:dc3747fcf263b7737146bd10babfe57f180579d58105d84f7e475a8586847376" [label=""];
}

