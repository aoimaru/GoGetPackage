[app/sources/345363666.Dockerfile]
digraph {
  "sha256:2f3667ceca7f4c0c512cd53b7f51e10252a2d99794aa1930b4540d27ae6dac8d" [label="docker-image://docker.io/balenalib/artik10-alpine:3.6-build" shape="ellipse"];
  "sha256:6f46b0bb2572d724848de5dba3f293122ee8fff9937e18c8a82344088d381e03" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:4d26a1dfbf02dfaef43c3b703dda9c8f4460ccb2d257a678b2eba99c8196747b" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:a0b17a329b0f8b71a9abffba5d01b539e496f8b445caf31bd7d3bd571c4ab2cf" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:8a1531828a811f5975ca46e8496cc72cdeda0d3528fc9187f4ce10a634662c8c" [label="mkdir{path=/go}" shape="note"];
  "sha256:ddebd02039b209690c063f1258c6b95b810595f29dcae221d18bdc7ccc4bd2a3" [label="sha256:ddebd02039b209690c063f1258c6b95b810595f29dcae221d18bdc7ccc4bd2a3" shape="plaintext"];
  "sha256:2f3667ceca7f4c0c512cd53b7f51e10252a2d99794aa1930b4540d27ae6dac8d" -> "sha256:6f46b0bb2572d724848de5dba3f293122ee8fff9937e18c8a82344088d381e03" [label=""];
  "sha256:6f46b0bb2572d724848de5dba3f293122ee8fff9937e18c8a82344088d381e03" -> "sha256:4d26a1dfbf02dfaef43c3b703dda9c8f4460ccb2d257a678b2eba99c8196747b" [label=""];
  "sha256:4d26a1dfbf02dfaef43c3b703dda9c8f4460ccb2d257a678b2eba99c8196747b" -> "sha256:a0b17a329b0f8b71a9abffba5d01b539e496f8b445caf31bd7d3bd571c4ab2cf" [label=""];
  "sha256:a0b17a329b0f8b71a9abffba5d01b539e496f8b445caf31bd7d3bd571c4ab2cf" -> "sha256:8a1531828a811f5975ca46e8496cc72cdeda0d3528fc9187f4ce10a634662c8c" [label=""];
  "sha256:8a1531828a811f5975ca46e8496cc72cdeda0d3528fc9187f4ce10a634662c8c" -> "sha256:ddebd02039b209690c063f1258c6b95b810595f29dcae221d18bdc7ccc4bd2a3" [label=""];
}

