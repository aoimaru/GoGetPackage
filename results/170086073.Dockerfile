[app/sources/170086073.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:76dd09022af4d2a0d388db1d1474c5d9747e41c6808f29fcb838ff82ebb43ec7" [label="mkdir{path=/opt}" shape="note"];
  "sha256:01f67c5e9f7f650cf87b9d6ae38b3e9451f7b387d046ae22941e60aca07157da" [label="/bin/sh -c mkdir -p gatling" shape="box"];
  "sha256:98b08b5503367e49be2bc7618d91b3c8b10812904094c2df0bb66dde081ff5c3" [label="/bin/sh -c apk add --update wget bash &&   mkdir -p /tmp/downloads &&   wget -q -O /tmp/downloads/gatling-$GATLING_VERSION.zip   https://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts-bundle/$GATLING_VERSION/gatling-charts-highcharts-bundle-$GATLING_VERSION-bundle.zip &&   mkdir -p /tmp/archive && cd /tmp/archive &&   unzip /tmp/downloads/gatling-$GATLING_VERSION.zip &&   mv /tmp/archive/gatling-charts-highcharts-bundle-$GATLING_VERSION/* /opt/gatling/ &&   rm -rf /tmp/*" shape="box"];
  "sha256:ee6dc9bc8987aadcf128743b8b4be79da1364469e5c7d1218c10834bd1fa276f" [label="mkdir{path=/opt/gatling}" shape="note"];
  "sha256:f5a63b30154daa3d6354012eeffcb1bb464e0cb04a0c9e6630e2e99723332c7b" [label="sha256:f5a63b30154daa3d6354012eeffcb1bb464e0cb04a0c9e6630e2e99723332c7b" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:76dd09022af4d2a0d388db1d1474c5d9747e41c6808f29fcb838ff82ebb43ec7" [label=""];
  "sha256:76dd09022af4d2a0d388db1d1474c5d9747e41c6808f29fcb838ff82ebb43ec7" -> "sha256:01f67c5e9f7f650cf87b9d6ae38b3e9451f7b387d046ae22941e60aca07157da" [label=""];
  "sha256:01f67c5e9f7f650cf87b9d6ae38b3e9451f7b387d046ae22941e60aca07157da" -> "sha256:98b08b5503367e49be2bc7618d91b3c8b10812904094c2df0bb66dde081ff5c3" [label=""];
  "sha256:98b08b5503367e49be2bc7618d91b3c8b10812904094c2df0bb66dde081ff5c3" -> "sha256:ee6dc9bc8987aadcf128743b8b4be79da1364469e5c7d1218c10834bd1fa276f" [label=""];
  "sha256:ee6dc9bc8987aadcf128743b8b4be79da1364469e5c7d1218c10834bd1fa276f" -> "sha256:f5a63b30154daa3d6354012eeffcb1bb464e0cb04a0c9e6630e2e99723332c7b" [label=""];
}

