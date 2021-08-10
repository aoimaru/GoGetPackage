[app/sources/345360777.Dockerfile]
digraph {
  "sha256:dd7105581baebdeee87dba0f074797e9bf696430a61ae7521371836f1a8d7365" [label="docker-image://docker.io/balenalib/surface-pro-6-ubuntu:artful-run" shape="ellipse"];
  "sha256:9ee5b22dff19c9f6ce27ca1f908c7e5d720c840654be3d906e0e929b53fa045d" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:47eb35fa28870d1002dd0041e57d0644b262646607b7390ebc16e2047313cc02" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:948a4efabbb0961b0516259ca14ace9881105f81f2b6fdd0b4fad44c238ca3a3" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:5bdacf8c1cbe0e8411d50e72fc314b6be751b81d638dcf7dec707523e0ec2b90" [label="mkdir{path=/go}" shape="note"];
  "sha256:fd2dbc265d944e947a718d3bb237ad5ec755c5ac4764e2c3226ac95dcc227c15" [label="sha256:fd2dbc265d944e947a718d3bb237ad5ec755c5ac4764e2c3226ac95dcc227c15" shape="plaintext"];
  "sha256:dd7105581baebdeee87dba0f074797e9bf696430a61ae7521371836f1a8d7365" -> "sha256:9ee5b22dff19c9f6ce27ca1f908c7e5d720c840654be3d906e0e929b53fa045d" [label=""];
  "sha256:9ee5b22dff19c9f6ce27ca1f908c7e5d720c840654be3d906e0e929b53fa045d" -> "sha256:47eb35fa28870d1002dd0041e57d0644b262646607b7390ebc16e2047313cc02" [label=""];
  "sha256:47eb35fa28870d1002dd0041e57d0644b262646607b7390ebc16e2047313cc02" -> "sha256:948a4efabbb0961b0516259ca14ace9881105f81f2b6fdd0b4fad44c238ca3a3" [label=""];
  "sha256:948a4efabbb0961b0516259ca14ace9881105f81f2b6fdd0b4fad44c238ca3a3" -> "sha256:5bdacf8c1cbe0e8411d50e72fc314b6be751b81d638dcf7dec707523e0ec2b90" [label=""];
  "sha256:5bdacf8c1cbe0e8411d50e72fc314b6be751b81d638dcf7dec707523e0ec2b90" -> "sha256:fd2dbc265d944e947a718d3bb237ad5ec755c5ac4764e2c3226ac95dcc227c15" [label=""];
}

