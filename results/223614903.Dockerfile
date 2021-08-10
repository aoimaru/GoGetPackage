[app/sources/223614903.Dockerfile]
digraph {
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" [label="docker-image://gcr.io/oss-fuzz-base/base-builder@sha256:bf1e92fe80dccfaf45d0968c52bc68412dd7b0b3a792c6e623608ad9a44cfd92" shape="ellipse"];
  "sha256:cb7c99f8cb7349cdcddab3abf779713faea19fa950f20fd56a16bc3fc2c29cd4" [label="/bin/sh -c apt-get update && apt-get -y install  \tbuild-essential \topenjdk-8-jdk   \tmake                ninja-build         curl                autoconf            libtool             cmake               wget                golang              python" shape="box"];
  "sha256:22829b9b11106275863d360b0209951937c88a8db46750b1e130949042032a62" [label="/bin/sh -c echo \"deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8\" | tee /etc/apt/sources.list.d/bazel.list" shape="box"];
  "sha256:5b53cb006b11125f39e56716e111cb296f57b2f03a55d727ed9267757aae732d" [label="/bin/sh -c curl https://bazel.build/bazel-release.pub.gpg | apt-key add -" shape="box"];
  "sha256:7e2463d7e7933559ce219058890da4ae7517f2799b34b93bcdfb034315f66f42" [label="/bin/sh -c apt-get update && apt-get install -y bazel" shape="box"];
  "sha256:a3902f7f2e59b9e534e3644d15d151bde9c3b58a2dd3c19172af7b56043ea04f" [label="/bin/sh -c git clone https://github.com/envoyproxy/envoy.git" shape="box"];
  "sha256:655b06a357ccd84bcbc9a0bdb5c60a3a7d338d7086f5cd607687c7f5739d2d8a" [label="mkdir{path=/src/envoy}" shape="note"];
  "sha256:fdc3c6fe67b47a28249f50c1fdca4768400a9fda4dbdd2b8371de4519c7a0343" [label="local://context" shape="ellipse"];
  "sha256:6b337991c731f0b86023e61ce875162b732e31c0441a6205e3e93e80e7c70914" [label="copy{src=/build.sh, dest=/src/}" shape="note"];
  "sha256:d22149ce6d8f9b13a1e322e3d7a1c172c97792e8a655b43a0a8680dfc1889eaf" [label="sha256:d22149ce6d8f9b13a1e322e3d7a1c172c97792e8a655b43a0a8680dfc1889eaf" shape="plaintext"];
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" -> "sha256:cb7c99f8cb7349cdcddab3abf779713faea19fa950f20fd56a16bc3fc2c29cd4" [label=""];
  "sha256:cb7c99f8cb7349cdcddab3abf779713faea19fa950f20fd56a16bc3fc2c29cd4" -> "sha256:22829b9b11106275863d360b0209951937c88a8db46750b1e130949042032a62" [label=""];
  "sha256:22829b9b11106275863d360b0209951937c88a8db46750b1e130949042032a62" -> "sha256:5b53cb006b11125f39e56716e111cb296f57b2f03a55d727ed9267757aae732d" [label=""];
  "sha256:5b53cb006b11125f39e56716e111cb296f57b2f03a55d727ed9267757aae732d" -> "sha256:7e2463d7e7933559ce219058890da4ae7517f2799b34b93bcdfb034315f66f42" [label=""];
  "sha256:7e2463d7e7933559ce219058890da4ae7517f2799b34b93bcdfb034315f66f42" -> "sha256:a3902f7f2e59b9e534e3644d15d151bde9c3b58a2dd3c19172af7b56043ea04f" [label=""];
  "sha256:a3902f7f2e59b9e534e3644d15d151bde9c3b58a2dd3c19172af7b56043ea04f" -> "sha256:655b06a357ccd84bcbc9a0bdb5c60a3a7d338d7086f5cd607687c7f5739d2d8a" [label=""];
  "sha256:655b06a357ccd84bcbc9a0bdb5c60a3a7d338d7086f5cd607687c7f5739d2d8a" -> "sha256:6b337991c731f0b86023e61ce875162b732e31c0441a6205e3e93e80e7c70914" [label=""];
  "sha256:fdc3c6fe67b47a28249f50c1fdca4768400a9fda4dbdd2b8371de4519c7a0343" -> "sha256:6b337991c731f0b86023e61ce875162b732e31c0441a6205e3e93e80e7c70914" [label=""];
  "sha256:6b337991c731f0b86023e61ce875162b732e31c0441a6205e3e93e80e7c70914" -> "sha256:d22149ce6d8f9b13a1e322e3d7a1c172c97792e8a655b43a0a8680dfc1889eaf" [label=""];
}

