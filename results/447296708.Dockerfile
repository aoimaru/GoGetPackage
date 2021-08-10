[app/sources/447296708.Dockerfile]
digraph {
  "sha256:c89066b523c24f04da9eb0139d38737d6e59983295e43c58e29504d2c80eb637" [label="docker-image://docker.io/library/java:6-jdk" shape="ellipse"];
  "sha256:2fedc1d3fe333fcfdadd9df3acff52025858b00000353b028d988d6b4562481a" [label="/bin/sh -c apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f2c3441609c241e22a51623bd2a08fc1aee34f9efd2d04b5b22eb3c8c4cecdf0" [label="/bin/sh -c curl -fsSL https://archive.apache.org/dist/maven/maven-$MAVEN_MAJOR_VERSION/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share   && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn" shape="box"];
  "sha256:17c7d74f3f695b2e7ed0017705a22b06a26b08cf968e0705e669b5564a236dc8" [label="/bin/sh -c mkdir /src" shape="box"];
  "sha256:b128a64d0d3b950e86ce108c8720d090340a12f52a1ca7cebeeba563b391ff50" [label="mkdir{path=/src}" shape="note"];
  "sha256:da357df0ae8237dee0ca4524592b2084a99d7f0b73da29bd9bfc735bb63897ed" [label="sha256:da357df0ae8237dee0ca4524592b2084a99d7f0b73da29bd9bfc735bb63897ed" shape="plaintext"];
  "sha256:c89066b523c24f04da9eb0139d38737d6e59983295e43c58e29504d2c80eb637" -> "sha256:2fedc1d3fe333fcfdadd9df3acff52025858b00000353b028d988d6b4562481a" [label=""];
  "sha256:2fedc1d3fe333fcfdadd9df3acff52025858b00000353b028d988d6b4562481a" -> "sha256:f2c3441609c241e22a51623bd2a08fc1aee34f9efd2d04b5b22eb3c8c4cecdf0" [label=""];
  "sha256:f2c3441609c241e22a51623bd2a08fc1aee34f9efd2d04b5b22eb3c8c4cecdf0" -> "sha256:17c7d74f3f695b2e7ed0017705a22b06a26b08cf968e0705e669b5564a236dc8" [label=""];
  "sha256:17c7d74f3f695b2e7ed0017705a22b06a26b08cf968e0705e669b5564a236dc8" -> "sha256:b128a64d0d3b950e86ce108c8720d090340a12f52a1ca7cebeeba563b391ff50" [label=""];
  "sha256:b128a64d0d3b950e86ce108c8720d090340a12f52a1ca7cebeeba563b391ff50" -> "sha256:da357df0ae8237dee0ca4524592b2084a99d7f0b73da29bd9bfc735bb63897ed" [label=""];
}

