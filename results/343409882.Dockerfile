[app/sources/343409882.Dockerfile]
digraph {
  "sha256:b8a419a70ea0f047af7f6610ede00e65e9add9cf894ef11e432a40075514d7aa" [label="docker-image://docker.io/library/openjdk:8u131-jre-alpine" shape="ellipse"];
  "sha256:2f8345ac9ad125ec2a12b3807d9677b653c5bfe6fbd7b30cda3797bcf1cf9cec" [label="/bin/sh -c apk add --no-cache bash curl libc6-compat tar &&     addgroup -g 750 -S logstash &&     adduser -u 750 -D -S -G logstash logstash" shape="box"];
  "sha256:0c37fd1783171a8b41bd7a89373437471205edc88865f15da8c921fef2b3e878" [label="mkdir{path=/usr/share/logstash}" shape="note"];
  "sha256:007b3b6d92afc02ab72c179d295175bf14ab07c038fc35404d992547b5422431" [label="/bin/sh -c curl -fsSL https://artifacts.elastic.co/downloads/logstash/logstash-${VERSION}.tar.gz | tar zx --strip-components=1" shape="box"];
  "sha256:ed64d851aba002af211cefe7b2d90aa8f028ff1b5ba2296da82fb19394a04b70" [label="/bin/sh -c /usr/share/logstash/bin/logstash-plugin install logstash-filter-csv                                                     logstash-input-cloudwatch_logs                                                     logstash-input-s3" shape="box"];
  "sha256:29a248dee32097ab186765427a29c88ea4811a4d677cdda7622d54e1ddc0e0e0" [label="/bin/sh -c chown -R logstash:logstash ${HOME_DIR} ${HOME_DIR}/*" shape="box"];
  "sha256:407f8c65364354189823f4513379908f1e05cb016f051ec42529efe8ac5c28a0" [label="sha256:407f8c65364354189823f4513379908f1e05cb016f051ec42529efe8ac5c28a0" shape="plaintext"];
  "sha256:b8a419a70ea0f047af7f6610ede00e65e9add9cf894ef11e432a40075514d7aa" -> "sha256:2f8345ac9ad125ec2a12b3807d9677b653c5bfe6fbd7b30cda3797bcf1cf9cec" [label=""];
  "sha256:2f8345ac9ad125ec2a12b3807d9677b653c5bfe6fbd7b30cda3797bcf1cf9cec" -> "sha256:0c37fd1783171a8b41bd7a89373437471205edc88865f15da8c921fef2b3e878" [label=""];
  "sha256:0c37fd1783171a8b41bd7a89373437471205edc88865f15da8c921fef2b3e878" -> "sha256:007b3b6d92afc02ab72c179d295175bf14ab07c038fc35404d992547b5422431" [label=""];
  "sha256:007b3b6d92afc02ab72c179d295175bf14ab07c038fc35404d992547b5422431" -> "sha256:ed64d851aba002af211cefe7b2d90aa8f028ff1b5ba2296da82fb19394a04b70" [label=""];
  "sha256:ed64d851aba002af211cefe7b2d90aa8f028ff1b5ba2296da82fb19394a04b70" -> "sha256:29a248dee32097ab186765427a29c88ea4811a4d677cdda7622d54e1ddc0e0e0" [label=""];
  "sha256:29a248dee32097ab186765427a29c88ea4811a4d677cdda7622d54e1ddc0e0e0" -> "sha256:407f8c65364354189823f4513379908f1e05cb016f051ec42529efe8ac5c28a0" [label=""];
}

