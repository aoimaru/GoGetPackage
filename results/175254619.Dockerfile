[app/sources/175254619.Dockerfile]
digraph {
  "sha256:71a1a7aa0138ac0a412a10d6bbbffb180ed06ec645d0b81118696111a3b0a0aa" [label="docker-image://docker.io/library/amazoncorretto:11" shape="ellipse"];
  "sha256:2761fac393f9ff50c74dc257012f2e50e26892b2199820053f58ba92797f08fb" [label="/bin/sh -c mkdir -p /root/onos" shape="box"];
  "sha256:f2b2289b536da274204804abd699c1c9c3e0509a1068d47c23e7cac35b12f830" [label="mkdir{path=/root/onos}" shape="note"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:c4385c78f21b154403ab1559eab39e906ecd9e61125169c4a12306e422f7bd7b" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:6ed5a75f6187b8d38de109b9e70bbdf63c6e229aaca85d12679ea3883f460efa" [label="/bin/sh -c apt-get install -y ${BUILD_DEPS}" shape="box"];
  "sha256:fb535d789ad502f99eb35e13140bcc7c655f411f8476bc3a50a9d7a24217fa20" [label="/bin/sh -c curl -L -o bazel.sh https://github.com/bazelbuild/bazel/releases/download/${BAZEL_VER}/bazel-${BAZEL_VER}-installer-linux-x86_64.sh" shape="box"];
  "sha256:05a8c98a580bf53be4e7dd37ea5a5207f0e41c345450aca3e86e7b262937f055" [label="/bin/sh -c chmod +x bazel.sh && ./bazel.sh --user" shape="box"];
  "sha256:22ae4e7cbe72fc168addc624e893d850195f7cfd1edde2616fbecd073e85ef3b" [label="local://context" shape="ellipse"];
  "sha256:b2cb79dc02d79f085a0e86d81f5e4af0fa5886726b69cbb5372803866fa64ed3" [label="copy{src=/, dest=/src/onos}" shape="note"];
  "sha256:24b4059dcf7b8c6650be1991212561c6afdadbb91255eb054183222b5f82271b" [label="mkdir{path=/src/onos}" shape="note"];
  "sha256:03134ef54067a5e8cf89c4aeac59e4b9b6379ebded33c2b0cc19a2352ea8cf69" [label="/bin/sh -c ~/bin/bazel build onos ${BAZEL_BUILD_ARGS}" shape="box"];
  "sha256:5450ab3180b5aa6ba57a278cc6d2b1a5991a792cde6588114f3e14b5ef02ace4" [label="/bin/sh -c mkdir /src/tar" shape="box"];
  "sha256:45cc50f2b899f174f8e01c5ebfa841bab91609b0d456f46057e090ceaba2d829" [label="/bin/sh -c tar -xf bazel-bin/onos.tar.gz -C /src/tar --strip-components=1" shape="box"];
  "sha256:ea52ab179b6abc927929b044afeb699cb1877119668ed715ca848700768786b9" [label="copy{src=/src/tar, dest=/root/onos/}" shape="note"];
  "sha256:37b6ca693e435dc1966de8a3b2bc70b33fc8bc242194bce79c0d5d0ebacaa076" [label="/bin/sh -c sed -ibak '/log4j.rootLogger=/s/$/, stdout/' $(ls -d apache-karaf-*)/etc/org.ops4j.pax.logging.cfg" shape="box"];
  "sha256:9ee0f436f8a9515c296ca9a828d2c9480e3fc99911cf4af6d6a8ad928825d7ef" [label="sha256:9ee0f436f8a9515c296ca9a828d2c9480e3fc99911cf4af6d6a8ad928825d7ef" shape="plaintext"];
  "sha256:71a1a7aa0138ac0a412a10d6bbbffb180ed06ec645d0b81118696111a3b0a0aa" -> "sha256:2761fac393f9ff50c74dc257012f2e50e26892b2199820053f58ba92797f08fb" [label=""];
  "sha256:2761fac393f9ff50c74dc257012f2e50e26892b2199820053f58ba92797f08fb" -> "sha256:f2b2289b536da274204804abd699c1c9c3e0509a1068d47c23e7cac35b12f830" [label=""];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:c4385c78f21b154403ab1559eab39e906ecd9e61125169c4a12306e422f7bd7b" [label=""];
  "sha256:c4385c78f21b154403ab1559eab39e906ecd9e61125169c4a12306e422f7bd7b" -> "sha256:6ed5a75f6187b8d38de109b9e70bbdf63c6e229aaca85d12679ea3883f460efa" [label=""];
  "sha256:6ed5a75f6187b8d38de109b9e70bbdf63c6e229aaca85d12679ea3883f460efa" -> "sha256:fb535d789ad502f99eb35e13140bcc7c655f411f8476bc3a50a9d7a24217fa20" [label=""];
  "sha256:fb535d789ad502f99eb35e13140bcc7c655f411f8476bc3a50a9d7a24217fa20" -> "sha256:05a8c98a580bf53be4e7dd37ea5a5207f0e41c345450aca3e86e7b262937f055" [label=""];
  "sha256:05a8c98a580bf53be4e7dd37ea5a5207f0e41c345450aca3e86e7b262937f055" -> "sha256:b2cb79dc02d79f085a0e86d81f5e4af0fa5886726b69cbb5372803866fa64ed3" [label=""];
  "sha256:22ae4e7cbe72fc168addc624e893d850195f7cfd1edde2616fbecd073e85ef3b" -> "sha256:b2cb79dc02d79f085a0e86d81f5e4af0fa5886726b69cbb5372803866fa64ed3" [label=""];
  "sha256:b2cb79dc02d79f085a0e86d81f5e4af0fa5886726b69cbb5372803866fa64ed3" -> "sha256:24b4059dcf7b8c6650be1991212561c6afdadbb91255eb054183222b5f82271b" [label=""];
  "sha256:24b4059dcf7b8c6650be1991212561c6afdadbb91255eb054183222b5f82271b" -> "sha256:03134ef54067a5e8cf89c4aeac59e4b9b6379ebded33c2b0cc19a2352ea8cf69" [label=""];
  "sha256:03134ef54067a5e8cf89c4aeac59e4b9b6379ebded33c2b0cc19a2352ea8cf69" -> "sha256:5450ab3180b5aa6ba57a278cc6d2b1a5991a792cde6588114f3e14b5ef02ace4" [label=""];
  "sha256:5450ab3180b5aa6ba57a278cc6d2b1a5991a792cde6588114f3e14b5ef02ace4" -> "sha256:45cc50f2b899f174f8e01c5ebfa841bab91609b0d456f46057e090ceaba2d829" [label=""];
  "sha256:f2b2289b536da274204804abd699c1c9c3e0509a1068d47c23e7cac35b12f830" -> "sha256:ea52ab179b6abc927929b044afeb699cb1877119668ed715ca848700768786b9" [label=""];
  "sha256:45cc50f2b899f174f8e01c5ebfa841bab91609b0d456f46057e090ceaba2d829" -> "sha256:ea52ab179b6abc927929b044afeb699cb1877119668ed715ca848700768786b9" [label=""];
  "sha256:ea52ab179b6abc927929b044afeb699cb1877119668ed715ca848700768786b9" -> "sha256:37b6ca693e435dc1966de8a3b2bc70b33fc8bc242194bce79c0d5d0ebacaa076" [label=""];
  "sha256:37b6ca693e435dc1966de8a3b2bc70b33fc8bc242194bce79c0d5d0ebacaa076" -> "sha256:9ee0f436f8a9515c296ca9a828d2c9480e3fc99911cf4af6d6a8ad928825d7ef" [label=""];
}

