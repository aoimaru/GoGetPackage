[app/sources/220624276.Dockerfile]
digraph {
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:cc194e6b98dce89b3c270016a9f89ae3ba664c37c86e41f03c5666e64ef30d7b" [label="/bin/sh -c apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f99eec00195760dba1b8d72cd5d18d1162c21acaa9943eb9ffba4a41a72f7dc1" [label="local://context" shape="ellipse"];
  "sha256:ea8b29d2138bcc2d2d8d469679e7900ca7353b0f802733995e2dcda86c279ef5" [label="copy{src=/local-package/*, dest=/tmp/}" shape="note"];
  "sha256:ce8d51b272fa32534ef832dd3aa924f525c4f1ce81c9aa01b2b61b15402e2423" [label="/bin/sh -c curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo \"${NEO4J_SHA256} ${NEO4J_TARBALL}\" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}" shape="box"];
  "sha256:501064e4058f5c7c8db7aac8f69fd949036dd9bc447596358bf8895c32342940" [label="mkdir{path=/var/lib/neo4j}" shape="note"];
  "sha256:f3129580b218b3d762691f064305f4f129187e38d0ea3302895496371eb8e1be" [label="/bin/sh -c mv data /data     && ln --symbolic /data" shape="box"];
  "sha256:e0b372d8fbb3bbe79664bbe17ee51ec2e1f702a8c95e502772c9ff03369ec350" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:17c5e6baff3c655127006817ca61488c18b0e893e087baf79efba67ad21ca081" [label="sha256:17c5e6baff3c655127006817ca61488c18b0e893e087baf79efba67ad21ca081" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:cc194e6b98dce89b3c270016a9f89ae3ba664c37c86e41f03c5666e64ef30d7b" [label=""];
  "sha256:cc194e6b98dce89b3c270016a9f89ae3ba664c37c86e41f03c5666e64ef30d7b" -> "sha256:ea8b29d2138bcc2d2d8d469679e7900ca7353b0f802733995e2dcda86c279ef5" [label=""];
  "sha256:f99eec00195760dba1b8d72cd5d18d1162c21acaa9943eb9ffba4a41a72f7dc1" -> "sha256:ea8b29d2138bcc2d2d8d469679e7900ca7353b0f802733995e2dcda86c279ef5" [label=""];
  "sha256:ea8b29d2138bcc2d2d8d469679e7900ca7353b0f802733995e2dcda86c279ef5" -> "sha256:ce8d51b272fa32534ef832dd3aa924f525c4f1ce81c9aa01b2b61b15402e2423" [label=""];
  "sha256:ce8d51b272fa32534ef832dd3aa924f525c4f1ce81c9aa01b2b61b15402e2423" -> "sha256:501064e4058f5c7c8db7aac8f69fd949036dd9bc447596358bf8895c32342940" [label=""];
  "sha256:501064e4058f5c7c8db7aac8f69fd949036dd9bc447596358bf8895c32342940" -> "sha256:f3129580b218b3d762691f064305f4f129187e38d0ea3302895496371eb8e1be" [label=""];
  "sha256:f3129580b218b3d762691f064305f4f129187e38d0ea3302895496371eb8e1be" -> "sha256:e0b372d8fbb3bbe79664bbe17ee51ec2e1f702a8c95e502772c9ff03369ec350" [label=""];
  "sha256:f99eec00195760dba1b8d72cd5d18d1162c21acaa9943eb9ffba4a41a72f7dc1" -> "sha256:e0b372d8fbb3bbe79664bbe17ee51ec2e1f702a8c95e502772c9ff03369ec350" [label=""];
  "sha256:e0b372d8fbb3bbe79664bbe17ee51ec2e1f702a8c95e502772c9ff03369ec350" -> "sha256:17c5e6baff3c655127006817ca61488c18b0e893e087baf79efba67ad21ca081" [label=""];
}

