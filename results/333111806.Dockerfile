[app/sources/333111806.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:989d070face1099bd102d9b5fcf7c7881eec65829182086e5e0340d607de0a2a" [label="/bin/sh -c yum update -y && yum install -y     curl     file     gdb     git     iotop     linux-perf     mysql     net-tools     perf     perl     procps-ng     psmisc     strace     sysstat     tree     tcpdump     unzip     vim     wget     which     && yum clean all     && rm -rf /var/cache/yum/*" shape="box"];
  "sha256:922409804e54c2f4506eb5c17f737df587526da61791db42907bb5a7034a2bba" [label="/bin/sh -c wget -q http://download.pingcap.org/tidb-latest-linux-amd64.tar.gz     && tar xzf tidb-latest-linux-amd64.tar.gz     && mv tidb-latest-linux-amd64/bin/* /usr/local/bin/     && rm -rf tidb-latest-linux-amd64.tar.gz tidb-latest-linux-amd64" shape="box"];
  "sha256:2fefdeb25fb16bef47293e23deebabbf29261916a395aca53f393bf6020d7c97" [label="/bin/sh -c wget https://github.com/brendangregg/FlameGraph/archive/master.zip     && unzip master.zip     && mv FlameGraph-master /opt/FlameGraph     && rm master.zip" shape="box"];
  "sha256:d0d9c329dda5b0b80e42ddb218dca582678fc79960c208ffb4534a9356b86080" [label="local://context" shape="ellipse"];
  "sha256:2b02f2ab3c9fdc367c7fafdbb03b1cdc29577cb12352d78d0093ce85bdbd28d4" [label="copy{src=/run_flamegraph.sh, dest=/run_flamegraph.sh}" shape="note"];
  "sha256:d09e408b80481664c66dc050c30d027fda12132048b1a4617a5da8c24c22a20c" [label="/bin/sh -c curl -fsSL \"$GOLANG_DOWNLOAD_URL\" -o golang.tar.gz \t&& echo \"$GOLANG_DOWNLOAD_SHA256  golang.tar.gz\" | sha256sum -c - \t&& tar -C /usr/local -xzf golang.tar.gz \t&& rm golang.tar.gz" shape="box"];
  "sha256:7f5a0c3c3fe9dcc6d7dd0cd9ecfb27876a515b4212bb0fb39b31936f979aa2b9" [label="sha256:7f5a0c3c3fe9dcc6d7dd0cd9ecfb27876a515b4212bb0fb39b31936f979aa2b9" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:989d070face1099bd102d9b5fcf7c7881eec65829182086e5e0340d607de0a2a" [label=""];
  "sha256:989d070face1099bd102d9b5fcf7c7881eec65829182086e5e0340d607de0a2a" -> "sha256:922409804e54c2f4506eb5c17f737df587526da61791db42907bb5a7034a2bba" [label=""];
  "sha256:922409804e54c2f4506eb5c17f737df587526da61791db42907bb5a7034a2bba" -> "sha256:2fefdeb25fb16bef47293e23deebabbf29261916a395aca53f393bf6020d7c97" [label=""];
  "sha256:2fefdeb25fb16bef47293e23deebabbf29261916a395aca53f393bf6020d7c97" -> "sha256:2b02f2ab3c9fdc367c7fafdbb03b1cdc29577cb12352d78d0093ce85bdbd28d4" [label=""];
  "sha256:d0d9c329dda5b0b80e42ddb218dca582678fc79960c208ffb4534a9356b86080" -> "sha256:2b02f2ab3c9fdc367c7fafdbb03b1cdc29577cb12352d78d0093ce85bdbd28d4" [label=""];
  "sha256:2b02f2ab3c9fdc367c7fafdbb03b1cdc29577cb12352d78d0093ce85bdbd28d4" -> "sha256:d09e408b80481664c66dc050c30d027fda12132048b1a4617a5da8c24c22a20c" [label=""];
  "sha256:d09e408b80481664c66dc050c30d027fda12132048b1a4617a5da8c24c22a20c" -> "sha256:7f5a0c3c3fe9dcc6d7dd0cd9ecfb27876a515b4212bb0fb39b31936f979aa2b9" [label=""];
}

