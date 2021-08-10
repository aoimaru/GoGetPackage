[app/sources/325298542.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:040f02d3a90f2f7bc0ad21b699dee86beabdd118518eafa845c5096693f4c13a" [label="/bin/sh -c apt update &&     DEBIAN_FRONTEND=noninteractive  apt install libev-dev libssl-dev curl -y &&     DEBIAN_FRONTEND=noninteractive curl -L -o /tmp/yaks.tar.gz https://www.dropbox.com/s/g4tnzvjwlx3zcr2/yaksd.tar.gz &&     tar -xzvf /tmp/yaks.tar.gz -C /root/" shape="box"];
  "sha256:da7680775958afd9976d914b16d3d14a3d1cd448426d95b8eee6a1e1f3d3a123" [label="sha256:da7680775958afd9976d914b16d3d14a3d1cd448426d95b8eee6a1e1f3d3a123" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:040f02d3a90f2f7bc0ad21b699dee86beabdd118518eafa845c5096693f4c13a" [label=""];
  "sha256:040f02d3a90f2f7bc0ad21b699dee86beabdd118518eafa845c5096693f4c13a" -> "sha256:da7680775958afd9976d914b16d3d14a3d1cd448426d95b8eee6a1e1f3d3a123" [label=""];
}

