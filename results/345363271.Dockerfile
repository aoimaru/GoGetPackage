[app/sources/345363271.Dockerfile]
digraph {
  "sha256:6ec8e72a12997260cc1c6e7d56b3d8c939f719b9ff678911e88c94b5a4ee393f" [label="docker-image://docker.io/balenalib/am571x-evm-fedora:29-run" shape="ellipse"];
  "sha256:f8cb43ff3bebbd97a4c3088be7e044e744cbf70ea263fd6c4526ad4575698e85" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:f5b27f0d709ce5169f57e73db32a2fee649f31be5203eb49ca460978dd397d06" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:9041b44947fb34d6ed72beab9e6eaa3d3b8cf42e59be74d57ec67ee49896411e" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:07f791e98703c20b081ede9e19679753193d6cb06e14106eda15cf721c6b502e" [label="mkdir{path=/go}" shape="note"];
  "sha256:40b844230cb607c82dded8253aca8069ade79a971987a6d7e138853bb7da0e0d" [label="sha256:40b844230cb607c82dded8253aca8069ade79a971987a6d7e138853bb7da0e0d" shape="plaintext"];
  "sha256:6ec8e72a12997260cc1c6e7d56b3d8c939f719b9ff678911e88c94b5a4ee393f" -> "sha256:f8cb43ff3bebbd97a4c3088be7e044e744cbf70ea263fd6c4526ad4575698e85" [label=""];
  "sha256:f8cb43ff3bebbd97a4c3088be7e044e744cbf70ea263fd6c4526ad4575698e85" -> "sha256:f5b27f0d709ce5169f57e73db32a2fee649f31be5203eb49ca460978dd397d06" [label=""];
  "sha256:f5b27f0d709ce5169f57e73db32a2fee649f31be5203eb49ca460978dd397d06" -> "sha256:9041b44947fb34d6ed72beab9e6eaa3d3b8cf42e59be74d57ec67ee49896411e" [label=""];
  "sha256:9041b44947fb34d6ed72beab9e6eaa3d3b8cf42e59be74d57ec67ee49896411e" -> "sha256:07f791e98703c20b081ede9e19679753193d6cb06e14106eda15cf721c6b502e" [label=""];
  "sha256:07f791e98703c20b081ede9e19679753193d6cb06e14106eda15cf721c6b502e" -> "sha256:40b844230cb607c82dded8253aca8069ade79a971987a6d7e138853bb7da0e0d" [label=""];
}

