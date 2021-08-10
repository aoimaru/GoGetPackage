[app/sources/230049078.Dockerfile]
digraph {
  "sha256:b0975f6370cec7551f54d2be010adeae977d29e35943234780c38ca2c9e27f20" [label="docker-image://docker.io/library/golang:1.7.6" shape="ellipse"];
  "sha256:5465cfdce75ffc9ec102e6941c90c61d145b875f8e5d9c710e9dd444c2fd595f" [label="/bin/sh -c set -x &&     apt-get update &&     apt-get install -y --no-install-recommends          netcat python-pip virtualenv &&     apt-get clean" shape="box"];
  "sha256:965c86bc9465dc8aae0b8429a2ea286e2040ddc803295138e845cf8e8cb95468" [label="/bin/sh -c mkdir -p $FILEBEAT_PATH/build/coverage" shape="box"];
  "sha256:b023d0883d66cb2a460d1e1b91dd97258a601dc259b013bc4f439fc144590777" [label="mkdir{path=/go/src/github.com/elastic/beats/filebeat}" shape="note"];
  "sha256:a2003d3bbcbea5ad7628c59b560f3bb252c0f2d1620abbcac4d1b25cb9c4dbab" [label="sha256:a2003d3bbcbea5ad7628c59b560f3bb252c0f2d1620abbcac4d1b25cb9c4dbab" shape="plaintext"];
  "sha256:b0975f6370cec7551f54d2be010adeae977d29e35943234780c38ca2c9e27f20" -> "sha256:5465cfdce75ffc9ec102e6941c90c61d145b875f8e5d9c710e9dd444c2fd595f" [label=""];
  "sha256:5465cfdce75ffc9ec102e6941c90c61d145b875f8e5d9c710e9dd444c2fd595f" -> "sha256:965c86bc9465dc8aae0b8429a2ea286e2040ddc803295138e845cf8e8cb95468" [label=""];
  "sha256:965c86bc9465dc8aae0b8429a2ea286e2040ddc803295138e845cf8e8cb95468" -> "sha256:b023d0883d66cb2a460d1e1b91dd97258a601dc259b013bc4f439fc144590777" [label=""];
  "sha256:b023d0883d66cb2a460d1e1b91dd97258a601dc259b013bc4f439fc144590777" -> "sha256:a2003d3bbcbea5ad7628c59b560f3bb252c0f2d1620abbcac4d1b25cb9c4dbab" [label=""];
}

