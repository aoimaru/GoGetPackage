[app/sources/407763726.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:e287d01a7f6aff20fb9ee5794cf9675ce15a3d54d3705e8d8d375f00fa803ea0" [label="/bin/sh -c dpkg-divert --local --rename --add /sbin/initctl" shape="box"];
  "sha256:85495e2204b9b0ae4845adcc872fc5d93d1228aad23c5765911fe863d3c88ebb" [label="/bin/sh -c ln -s /bin/true /sbin/initctl" shape="box"];
  "sha256:e8a848e4c9a7f54fd67106e16b2c9e932206716d29d694643f018c9d25f44c5a" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-software-properties" shape="box"];
  "sha256:94bcb82f5051830a6fd9a6b3535bfbbab957b33311e967adf8fd5175f5dfc468" [label="/bin/sh -c add-apt-repository \"deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe\"" shape="box"];
  "sha256:5dda6e169bf846dd8184f94cb8aeab10f4f8874e266424e3ecd455efe52976b1" [label="/bin/sh -c add-apt-repository -y ppa:dotcloud/docker-golang/ubuntu" shape="box"];
  "sha256:80a4179fb8af669034fe2480cc97bfed2ae846d0aa7f789a6826467fd6f9f271" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:155d2ef083f54c4736d429f6ee4e007036375ca5841f61e3c37cbd38962ec772" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y -q s3cmd curl" shape="box"];
  "sha256:0c2456e7d10699e4b8c1291fe9136fd23adaba98278bf20b8ded27cea656d1ab" [label="/bin/sh -c curl -s -o /go.tar.gz https://go.googlecode.com/files/go1.1.1.linux-amd64.tar.gz" shape="box"];
  "sha256:706184f50ff963393d303d12a0de7c27f7308ae7156bc5acee944afe6d9d2898" [label="/bin/sh -c tar -C /usr/local -xzf /go.tar.gz" shape="box"];
  "sha256:54328c0690a615f1962b89cffc77828d5ef71e5710e66f11d9655f15f61bb006" [label="/bin/sh -c echo \"export PATH=/usr/local/go/bin:$PATH\" > /.bashrc" shape="box"];
  "sha256:9b297498b3fca312d8a84cd70cd92ead263346bb1f6fe552bc236581790c482a" [label="/bin/sh -c echo \"export PATH=/usr/local/go/bin:$PATH\" > /.bash_profile" shape="box"];
  "sha256:d37404c41f5882a18c0d6d1af380e8804a4550d3236e15c9098313c76e06df1b" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y -q git build-essential" shape="box"];
  "sha256:c765456f0e8d65c4baf1c58d280d061c2dfd8c64e816539e4d3d9b119d95b047" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y -q golang-stable debhelper autotools-dev devscripts" shape="box"];
  "sha256:1fb235487cae5edbb932c4416b7703543692f9cff8483cdbffc04f7280870aaa" [label="local://context" shape="ellipse"];
  "sha256:e568a5998ee14572725fd66204b6b8e920f5a689d1d53f8f12238b79aef591cd" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:2bc54996dba0f7de7ca2f5accc7606f32fc0161a3328df25c2e3cc79e1e51eff" [label="/bin/sh -c cp /src/dockerbuilder /usr/local/bin/ && chmod +x /usr/local/bin/dockerbuilder" shape="box"];
  "sha256:97a44859ba9f98ebb7581b3a041a34ee1761a83acff7b8b45d60ee239d8bd3ac" [label="sha256:97a44859ba9f98ebb7581b3a041a34ee1761a83acff7b8b45d60ee239d8bd3ac" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:e287d01a7f6aff20fb9ee5794cf9675ce15a3d54d3705e8d8d375f00fa803ea0" [label=""];
  "sha256:e287d01a7f6aff20fb9ee5794cf9675ce15a3d54d3705e8d8d375f00fa803ea0" -> "sha256:85495e2204b9b0ae4845adcc872fc5d93d1228aad23c5765911fe863d3c88ebb" [label=""];
  "sha256:85495e2204b9b0ae4845adcc872fc5d93d1228aad23c5765911fe863d3c88ebb" -> "sha256:e8a848e4c9a7f54fd67106e16b2c9e932206716d29d694643f018c9d25f44c5a" [label=""];
  "sha256:e8a848e4c9a7f54fd67106e16b2c9e932206716d29d694643f018c9d25f44c5a" -> "sha256:94bcb82f5051830a6fd9a6b3535bfbbab957b33311e967adf8fd5175f5dfc468" [label=""];
  "sha256:94bcb82f5051830a6fd9a6b3535bfbbab957b33311e967adf8fd5175f5dfc468" -> "sha256:5dda6e169bf846dd8184f94cb8aeab10f4f8874e266424e3ecd455efe52976b1" [label=""];
  "sha256:5dda6e169bf846dd8184f94cb8aeab10f4f8874e266424e3ecd455efe52976b1" -> "sha256:80a4179fb8af669034fe2480cc97bfed2ae846d0aa7f789a6826467fd6f9f271" [label=""];
  "sha256:80a4179fb8af669034fe2480cc97bfed2ae846d0aa7f789a6826467fd6f9f271" -> "sha256:155d2ef083f54c4736d429f6ee4e007036375ca5841f61e3c37cbd38962ec772" [label=""];
  "sha256:155d2ef083f54c4736d429f6ee4e007036375ca5841f61e3c37cbd38962ec772" -> "sha256:0c2456e7d10699e4b8c1291fe9136fd23adaba98278bf20b8ded27cea656d1ab" [label=""];
  "sha256:0c2456e7d10699e4b8c1291fe9136fd23adaba98278bf20b8ded27cea656d1ab" -> "sha256:706184f50ff963393d303d12a0de7c27f7308ae7156bc5acee944afe6d9d2898" [label=""];
  "sha256:706184f50ff963393d303d12a0de7c27f7308ae7156bc5acee944afe6d9d2898" -> "sha256:54328c0690a615f1962b89cffc77828d5ef71e5710e66f11d9655f15f61bb006" [label=""];
  "sha256:54328c0690a615f1962b89cffc77828d5ef71e5710e66f11d9655f15f61bb006" -> "sha256:9b297498b3fca312d8a84cd70cd92ead263346bb1f6fe552bc236581790c482a" [label=""];
  "sha256:9b297498b3fca312d8a84cd70cd92ead263346bb1f6fe552bc236581790c482a" -> "sha256:d37404c41f5882a18c0d6d1af380e8804a4550d3236e15c9098313c76e06df1b" [label=""];
  "sha256:d37404c41f5882a18c0d6d1af380e8804a4550d3236e15c9098313c76e06df1b" -> "sha256:c765456f0e8d65c4baf1c58d280d061c2dfd8c64e816539e4d3d9b119d95b047" [label=""];
  "sha256:c765456f0e8d65c4baf1c58d280d061c2dfd8c64e816539e4d3d9b119d95b047" -> "sha256:e568a5998ee14572725fd66204b6b8e920f5a689d1d53f8f12238b79aef591cd" [label=""];
  "sha256:1fb235487cae5edbb932c4416b7703543692f9cff8483cdbffc04f7280870aaa" -> "sha256:e568a5998ee14572725fd66204b6b8e920f5a689d1d53f8f12238b79aef591cd" [label=""];
  "sha256:e568a5998ee14572725fd66204b6b8e920f5a689d1d53f8f12238b79aef591cd" -> "sha256:2bc54996dba0f7de7ca2f5accc7606f32fc0161a3328df25c2e3cc79e1e51eff" [label=""];
  "sha256:2bc54996dba0f7de7ca2f5accc7606f32fc0161a3328df25c2e3cc79e1e51eff" -> "sha256:97a44859ba9f98ebb7581b3a041a34ee1761a83acff7b8b45d60ee239d8bd3ac" [label=""];
}

