[app/sources/240469348.Dockerfile]
digraph {
  "sha256:fa705a589d6167ebac4707121028260a8ebf5d672810c1232e92fd6b8978c503" [label="docker-image://docker.io/bigtruedata/scala:2.10.3-alpine" shape="ellipse"];
  "sha256:a419fcd119399d17366a8ceeea98cbb714f6a9e1a5fe751ad061315218743795" [label="/bin/sh -c apk add --no-cache --virtual=.dependencies tar wget" shape="box"];
  "sha256:9be085236e3f3d6c90de57ddc7f9233cbaca4e5f0eea5248e335c9eccd0e2c45" [label="/bin/sh -c wget -O- \"https://github.com/sbt/sbt/releases/download/v1.0.2/sbt-1.0.2.tgz\"     |  tar xzf - -C /usr/local --strip-components=1     && sbt exit" shape="box"];
  "sha256:eddf18083f84f0cefc0aa03be9883c4d35393783d15222568e296c5e6f36a374" [label="/bin/sh -c apk del --no-cache .dependencies" shape="box"];
  "sha256:40ae054834f8819c9ff89fc50ca15c4bcf650b367a10eb4764f27f8ab05f031d" [label="mkdir{path=/app}" shape="note"];
  "sha256:4278965a28241d579746b5dd5efc08ed8b92e33eeda00f8f8e3cacfb0ca17ba1" [label="sha256:4278965a28241d579746b5dd5efc08ed8b92e33eeda00f8f8e3cacfb0ca17ba1" shape="plaintext"];
  "sha256:fa705a589d6167ebac4707121028260a8ebf5d672810c1232e92fd6b8978c503" -> "sha256:a419fcd119399d17366a8ceeea98cbb714f6a9e1a5fe751ad061315218743795" [label=""];
  "sha256:a419fcd119399d17366a8ceeea98cbb714f6a9e1a5fe751ad061315218743795" -> "sha256:9be085236e3f3d6c90de57ddc7f9233cbaca4e5f0eea5248e335c9eccd0e2c45" [label=""];
  "sha256:9be085236e3f3d6c90de57ddc7f9233cbaca4e5f0eea5248e335c9eccd0e2c45" -> "sha256:eddf18083f84f0cefc0aa03be9883c4d35393783d15222568e296c5e6f36a374" [label=""];
  "sha256:eddf18083f84f0cefc0aa03be9883c4d35393783d15222568e296c5e6f36a374" -> "sha256:40ae054834f8819c9ff89fc50ca15c4bcf650b367a10eb4764f27f8ab05f031d" [label=""];
  "sha256:40ae054834f8819c9ff89fc50ca15c4bcf650b367a10eb4764f27f8ab05f031d" -> "sha256:4278965a28241d579746b5dd5efc08ed8b92e33eeda00f8f8e3cacfb0ca17ba1" [label=""];
}

