[app/sources/221239953.Dockerfile]
digraph {
  "sha256:84e2858e623128aaca9366b254b7ca9d45684ef57e82098c1bd4a4eac14d3483" [label="docker-image://docker.io/library/python:2.7.11" shape="ellipse"];
  "sha256:4bcf0ea024c9004fbb0f82f73a5e29ded0e1c7e9860dc7f009b4b2bbcbcf7e31" [label="/bin/sh -c apt-get update && apt-get install -y wget" shape="box"];
  "sha256:035925fe8052448a365fa3821788a9e35479b12cc1228e7a9797d4e2e0d94eb5" [label="/bin/sh -c wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz     && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz" shape="box"];
  "sha256:03d2ecb930607a709209ccab687c2a90504c847e319b358d3b5fec441f08ea53" [label="mkdir{path=/app}" shape="note"];
  "sha256:d0719a91fed29a46e74c0c329c459d1bcd2a4172eeaed111773b6719915839f4" [label="local://context" shape="ellipse"];
  "sha256:7bc5f6ffa1bfd2220ed99945636e563ca44501dd63417ead7d335ca360b0c75f" [label="copy{src=/requirements.txt, dest=/app/}" shape="note"];
  "sha256:a184d9e0313210347e29cde29ba5f95e60be46e0ea74f26ce97cde2840caa857" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:a5cae4115856639a5e2aff592847f7d61df323898f05c82fc4bdca63d36db1ad" [label="sha256:a5cae4115856639a5e2aff592847f7d61df323898f05c82fc4bdca63d36db1ad" shape="plaintext"];
  "sha256:84e2858e623128aaca9366b254b7ca9d45684ef57e82098c1bd4a4eac14d3483" -> "sha256:4bcf0ea024c9004fbb0f82f73a5e29ded0e1c7e9860dc7f009b4b2bbcbcf7e31" [label=""];
  "sha256:4bcf0ea024c9004fbb0f82f73a5e29ded0e1c7e9860dc7f009b4b2bbcbcf7e31" -> "sha256:035925fe8052448a365fa3821788a9e35479b12cc1228e7a9797d4e2e0d94eb5" [label=""];
  "sha256:035925fe8052448a365fa3821788a9e35479b12cc1228e7a9797d4e2e0d94eb5" -> "sha256:03d2ecb930607a709209ccab687c2a90504c847e319b358d3b5fec441f08ea53" [label=""];
  "sha256:03d2ecb930607a709209ccab687c2a90504c847e319b358d3b5fec441f08ea53" -> "sha256:7bc5f6ffa1bfd2220ed99945636e563ca44501dd63417ead7d335ca360b0c75f" [label=""];
  "sha256:d0719a91fed29a46e74c0c329c459d1bcd2a4172eeaed111773b6719915839f4" -> "sha256:7bc5f6ffa1bfd2220ed99945636e563ca44501dd63417ead7d335ca360b0c75f" [label=""];
  "sha256:7bc5f6ffa1bfd2220ed99945636e563ca44501dd63417ead7d335ca360b0c75f" -> "sha256:a184d9e0313210347e29cde29ba5f95e60be46e0ea74f26ce97cde2840caa857" [label=""];
  "sha256:a184d9e0313210347e29cde29ba5f95e60be46e0ea74f26ce97cde2840caa857" -> "sha256:a5cae4115856639a5e2aff592847f7d61df323898f05c82fc4bdca63d36db1ad" [label=""];
}

