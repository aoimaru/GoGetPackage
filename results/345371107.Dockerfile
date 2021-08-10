[app/sources/345371107.Dockerfile]
digraph {
  "sha256:936cbd8d24fdc963fefec5167b6e36d921ab1824ef4c4d81287feb5704da8625" [label="docker-image://docker.io/balenalib/beaglebone-pocket-debian:buster-run" shape="ellipse"];
  "sha256:134ddac44405be4fb2d49fb294cbe26e0536c936d7ad46bd1b54c0006486f2df" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:52f1da4ceb00bdbd66502b16a2a9ed08b042b454e8918f8d046a17274acb1bfb" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:4785c2747fb463ddc8d8421fa29941b6d88e96699a36c95b1c42a52bf8749719" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:f1cce582c1fe01a75f4d114cda5149119ddce9af6091e4e28e82841640161465" [label="mkdir{path=/go}" shape="note"];
  "sha256:8df1ecaec00bff826cb878ffe725eccb367bb072a055b5d33e9bc1ec4014a4c8" [label="sha256:8df1ecaec00bff826cb878ffe725eccb367bb072a055b5d33e9bc1ec4014a4c8" shape="plaintext"];
  "sha256:936cbd8d24fdc963fefec5167b6e36d921ab1824ef4c4d81287feb5704da8625" -> "sha256:134ddac44405be4fb2d49fb294cbe26e0536c936d7ad46bd1b54c0006486f2df" [label=""];
  "sha256:134ddac44405be4fb2d49fb294cbe26e0536c936d7ad46bd1b54c0006486f2df" -> "sha256:52f1da4ceb00bdbd66502b16a2a9ed08b042b454e8918f8d046a17274acb1bfb" [label=""];
  "sha256:52f1da4ceb00bdbd66502b16a2a9ed08b042b454e8918f8d046a17274acb1bfb" -> "sha256:4785c2747fb463ddc8d8421fa29941b6d88e96699a36c95b1c42a52bf8749719" [label=""];
  "sha256:4785c2747fb463ddc8d8421fa29941b6d88e96699a36c95b1c42a52bf8749719" -> "sha256:f1cce582c1fe01a75f4d114cda5149119ddce9af6091e4e28e82841640161465" [label=""];
  "sha256:f1cce582c1fe01a75f4d114cda5149119ddce9af6091e4e28e82841640161465" -> "sha256:8df1ecaec00bff826cb878ffe725eccb367bb072a055b5d33e9bc1ec4014a4c8" [label=""];
}

