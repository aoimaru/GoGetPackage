[app/sources/252773264.Dockerfile]
digraph {
  "sha256:c6ba543d2dc686c2b5695e2f311730baa8d053b17e202e484315e1460f584447" [label="local://context" shape="ellipse"];
  "sha256:27209793cf62ee5161580e80a8bb65b4db2ce41c6d67801c48d0ed5c01cdd022" [label="docker-image://docker.io/library/nginx:1.14-alpine" shape="ellipse"];
  "sha256:79d3f4e03e5ea3a8a7ffbaa2c0bcf29983af2223f56080676fa632da82662546" [label="copy{src=/, dest=/usr/share/nginx/html/}" shape="note"];
  "sha256:c9177cdf8a1bcdca351e6b87202e3215fe2264ea28d7ae85dc8be0b32c785785" [label="copy{src=/env/dev/*.png, dest=/usr/share/nginx/html/resources/img/}" shape="note"];
  "sha256:f9f6d06c1b183cf34ed1a10f93220a6711c01a3bc2a03cdc0daa1828b2df08e6" [label="/bin/sh -c sed -i 's/${env}/dev/' /usr/share/nginx/html/index.html" shape="box"];
  "sha256:b6692f116b68e09c41a405c0219c4ae7263d82eecbf63399d790aec4d393d47b" [label="sha256:b6692f116b68e09c41a405c0219c4ae7263d82eecbf63399d790aec4d393d47b" shape="plaintext"];
  "sha256:27209793cf62ee5161580e80a8bb65b4db2ce41c6d67801c48d0ed5c01cdd022" -> "sha256:79d3f4e03e5ea3a8a7ffbaa2c0bcf29983af2223f56080676fa632da82662546" [label=""];
  "sha256:c6ba543d2dc686c2b5695e2f311730baa8d053b17e202e484315e1460f584447" -> "sha256:79d3f4e03e5ea3a8a7ffbaa2c0bcf29983af2223f56080676fa632da82662546" [label=""];
  "sha256:79d3f4e03e5ea3a8a7ffbaa2c0bcf29983af2223f56080676fa632da82662546" -> "sha256:c9177cdf8a1bcdca351e6b87202e3215fe2264ea28d7ae85dc8be0b32c785785" [label=""];
  "sha256:c6ba543d2dc686c2b5695e2f311730baa8d053b17e202e484315e1460f584447" -> "sha256:c9177cdf8a1bcdca351e6b87202e3215fe2264ea28d7ae85dc8be0b32c785785" [label=""];
  "sha256:c9177cdf8a1bcdca351e6b87202e3215fe2264ea28d7ae85dc8be0b32c785785" -> "sha256:f9f6d06c1b183cf34ed1a10f93220a6711c01a3bc2a03cdc0daa1828b2df08e6" [label=""];
  "sha256:f9f6d06c1b183cf34ed1a10f93220a6711c01a3bc2a03cdc0daa1828b2df08e6" -> "sha256:b6692f116b68e09c41a405c0219c4ae7263d82eecbf63399d790aec4d393d47b" [label=""];
}

