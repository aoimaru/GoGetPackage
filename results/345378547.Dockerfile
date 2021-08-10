[app/sources/345378547.Dockerfile]
digraph {
  "sha256:3e0fc4dfd980ee1fba13985f0c721ac0fd0b543a80219001713a9a09139e4b16" [label="docker-image://docker.io/balenalib/zc702-zynq7-ubuntu:xenial-run" shape="ellipse"];
  "sha256:72b913440bdaad6dead2111a34ed3ba7a997d7a89829f0b0d83fbd29cf112d32" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c3a0331fdad8b4cbfbdc945d17fe5909ae8e967e5d1b5c406a696d0f392c835c" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:22782a96ff9058832913a86265952848222795684751f087dfaf4d0086e4e08a" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:f10a28dc3d0033d7ec27614670f4b8958316ca8e077db56e94694ac3c397ab52" [label="mkdir{path=/go}" shape="note"];
  "sha256:81f32830c2deca824223cfaf45888b32398709724e82a7b12ce83fd32087781c" [label="sha256:81f32830c2deca824223cfaf45888b32398709724e82a7b12ce83fd32087781c" shape="plaintext"];
  "sha256:3e0fc4dfd980ee1fba13985f0c721ac0fd0b543a80219001713a9a09139e4b16" -> "sha256:72b913440bdaad6dead2111a34ed3ba7a997d7a89829f0b0d83fbd29cf112d32" [label=""];
  "sha256:72b913440bdaad6dead2111a34ed3ba7a997d7a89829f0b0d83fbd29cf112d32" -> "sha256:c3a0331fdad8b4cbfbdc945d17fe5909ae8e967e5d1b5c406a696d0f392c835c" [label=""];
  "sha256:c3a0331fdad8b4cbfbdc945d17fe5909ae8e967e5d1b5c406a696d0f392c835c" -> "sha256:22782a96ff9058832913a86265952848222795684751f087dfaf4d0086e4e08a" [label=""];
  "sha256:22782a96ff9058832913a86265952848222795684751f087dfaf4d0086e4e08a" -> "sha256:f10a28dc3d0033d7ec27614670f4b8958316ca8e077db56e94694ac3c397ab52" [label=""];
  "sha256:f10a28dc3d0033d7ec27614670f4b8958316ca8e077db56e94694ac3c397ab52" -> "sha256:81f32830c2deca824223cfaf45888b32398709724e82a7b12ce83fd32087781c" [label=""];
}

