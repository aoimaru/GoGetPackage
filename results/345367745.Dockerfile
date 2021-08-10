[app/sources/345367745.Dockerfile]
digraph {
  "sha256:2f0c883d2c529648186e449fe35be02df92b47daa2b712bf7a419f124bd3b366" [label="docker-image://docker.io/balenalib/artik10-ubuntu:bionic-run@sha256:bb28a68d42c462672c7e774faef32108188ff549438c81a7e23033284ba4d05e" shape="ellipse"];
  "sha256:a87dbe81dc79ab74ff6164eec7c93bfe3245a592601e6f64ef0e93292015b94c" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ebfc1a75d42feab805a0e4dc7a282c8fe001c917e1c39299f84eff52a4f19719" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:12c7efd9c3618c7f2a8e28c59ab0db79d77e30f4e8ede12b5948220fdd31f210" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:7c28f90df3c741852788f1ae451743ca7f88e637a6c16c272d78cad7f987db57" [label="mkdir{path=/go}" shape="note"];
  "sha256:25914ce1606fa60b536799efe5c4b17d99e7f4b4385a94e3fb4490e1db1bf1f0" [label="sha256:25914ce1606fa60b536799efe5c4b17d99e7f4b4385a94e3fb4490e1db1bf1f0" shape="plaintext"];
  "sha256:2f0c883d2c529648186e449fe35be02df92b47daa2b712bf7a419f124bd3b366" -> "sha256:a87dbe81dc79ab74ff6164eec7c93bfe3245a592601e6f64ef0e93292015b94c" [label=""];
  "sha256:a87dbe81dc79ab74ff6164eec7c93bfe3245a592601e6f64ef0e93292015b94c" -> "sha256:ebfc1a75d42feab805a0e4dc7a282c8fe001c917e1c39299f84eff52a4f19719" [label=""];
  "sha256:ebfc1a75d42feab805a0e4dc7a282c8fe001c917e1c39299f84eff52a4f19719" -> "sha256:12c7efd9c3618c7f2a8e28c59ab0db79d77e30f4e8ede12b5948220fdd31f210" [label=""];
  "sha256:12c7efd9c3618c7f2a8e28c59ab0db79d77e30f4e8ede12b5948220fdd31f210" -> "sha256:7c28f90df3c741852788f1ae451743ca7f88e637a6c16c272d78cad7f987db57" [label=""];
  "sha256:7c28f90df3c741852788f1ae451743ca7f88e637a6c16c272d78cad7f987db57" -> "sha256:25914ce1606fa60b536799efe5c4b17d99e7f4b4385a94e3fb4490e1db1bf1f0" [label=""];
}

