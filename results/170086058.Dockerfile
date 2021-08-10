[app/sources/170086058.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:76dd09022af4d2a0d388db1d1474c5d9747e41c6808f29fcb838ff82ebb43ec7" [label="mkdir{path=/opt}" shape="note"];
  "sha256:66bf42af2c81434fc11f85673e95f7af6ca74326f19fcd5555bc525ddad3c562" [label="/bin/sh -c mkdir -p gatling" shape="box"];
  "sha256:09db5ee8cfe068e8af791947f47a75399536f3531e7db4495b40ab4b9c55edb8" [label="/bin/sh -c apk add --update wget bash &&   mkdir -p /tmp/downloads &&   wget -q -O /tmp/downloads/gatling-$GATLING_VERSION.zip   https://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts/$GATLING_VERSION/gatling-charts-highcharts-$GATLING_VERSION-bundle.zip &&   mkdir -p /tmp/archive && cd /tmp/archive &&   unzip /tmp/downloads/gatling-$GATLING_VERSION.zip &&   mv /tmp/archive/gatling-charts-highcharts-$GATLING_VERSION/* /opt/gatling/ &&   rm -rf /tmp/*" shape="box"];
  "sha256:64851e75e46335d881d81197532ed3d5dae7b29d3adc3d2a9355a2205593e42c" [label="mkdir{path=/opt/gatling}" shape="note"];
  "sha256:aa1549f2dd8f06b39132778a1731c1213069d67f8be164857e607a95317e841d" [label="sha256:aa1549f2dd8f06b39132778a1731c1213069d67f8be164857e607a95317e841d" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:76dd09022af4d2a0d388db1d1474c5d9747e41c6808f29fcb838ff82ebb43ec7" [label=""];
  "sha256:76dd09022af4d2a0d388db1d1474c5d9747e41c6808f29fcb838ff82ebb43ec7" -> "sha256:66bf42af2c81434fc11f85673e95f7af6ca74326f19fcd5555bc525ddad3c562" [label=""];
  "sha256:66bf42af2c81434fc11f85673e95f7af6ca74326f19fcd5555bc525ddad3c562" -> "sha256:09db5ee8cfe068e8af791947f47a75399536f3531e7db4495b40ab4b9c55edb8" [label=""];
  "sha256:09db5ee8cfe068e8af791947f47a75399536f3531e7db4495b40ab4b9c55edb8" -> "sha256:64851e75e46335d881d81197532ed3d5dae7b29d3adc3d2a9355a2205593e42c" [label=""];
  "sha256:64851e75e46335d881d81197532ed3d5dae7b29d3adc3d2a9355a2205593e42c" -> "sha256:aa1549f2dd8f06b39132778a1731c1213069d67f8be164857e607a95317e841d" [label=""];
}

