[app/sources/334167463.Dockerfile]
digraph {
  "sha256:c8a2edfcc3291ffa6f43c1ca355525e2f8191f9b3e9682063c411b04fdae0a44" [label="docker-image://docker.io/arm64v8/ubuntu:18.04" shape="ellipse"];
  "sha256:b9c2043981e6a571d4a867f491bc416e3b7e10c3f5e1a1e1207178143a08213e" [label="/bin/sh -c apt-get update &&     apt-get install -y         libstdc++6         libunwind8         libunwind8-dev         libicu-dev         libnuma-dev         liblttng-ust-dev         libcurl4-openssl-dev         libicu-dev         libssl-dev         libkrb5-dev     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a474f1d20581064c34281f8cd4bea28d2c39e711ee5469dc0ed5f1374617dd04" [label="sha256:a474f1d20581064c34281f8cd4bea28d2c39e711ee5469dc0ed5f1374617dd04" shape="plaintext"];
  "sha256:c8a2edfcc3291ffa6f43c1ca355525e2f8191f9b3e9682063c411b04fdae0a44" -> "sha256:b9c2043981e6a571d4a867f491bc416e3b7e10c3f5e1a1e1207178143a08213e" [label=""];
  "sha256:b9c2043981e6a571d4a867f491bc416e3b7e10c3f5e1a1e1207178143a08213e" -> "sha256:a474f1d20581064c34281f8cd4bea28d2c39e711ee5469dc0ed5f1374617dd04" [label=""];
}

