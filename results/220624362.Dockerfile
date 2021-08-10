[app/sources/220624362.Dockerfile]
digraph {
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:c5ec93e0c0cfe6663f2c673732b564b33f65403be7c4cf56437fa6a4d845b01e" [label="local://context" shape="ellipse"];
  "sha256:a9ca1d9f9fbe4f5b3886748331456a4b183863ba871f325749bf486374aa16ac" [label="copy{src=/local-package/*, dest=/tmp/}" shape="note"];
  "sha256:e484e63ca6bd00f7aa764cf16639ce1ea4bbbc499e8cb8970ff818b530dd030d" [label="/bin/sh -c curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo \"${NEO4J_SHA256} ${NEO4J_TARBALL}\" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}" shape="box"];
  "sha256:7882b9be7160773d155ed8424643a3770d8c0073a9506621760957b4099c9f79" [label="mkdir{path=/var/lib/neo4j}" shape="note"];
  "sha256:c41a3de6f8f0458634536ada874bfb5a8681a32940ea2861c749e45324cd6091" [label="/bin/sh -c mv data /data     && ln --symbolic /data" shape="box"];
  "sha256:a8f89849f567a495c7adf36194d1fe70051464add992add7ab91b8864d069044" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:0633c0fa2adf64bab100d995f24977c0d074b420392dad3b47864ed52e7dbdff" [label="sha256:0633c0fa2adf64bab100d995f24977c0d074b420392dad3b47864ed52e7dbdff" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:a9ca1d9f9fbe4f5b3886748331456a4b183863ba871f325749bf486374aa16ac" [label=""];
  "sha256:c5ec93e0c0cfe6663f2c673732b564b33f65403be7c4cf56437fa6a4d845b01e" -> "sha256:a9ca1d9f9fbe4f5b3886748331456a4b183863ba871f325749bf486374aa16ac" [label=""];
  "sha256:a9ca1d9f9fbe4f5b3886748331456a4b183863ba871f325749bf486374aa16ac" -> "sha256:e484e63ca6bd00f7aa764cf16639ce1ea4bbbc499e8cb8970ff818b530dd030d" [label=""];
  "sha256:e484e63ca6bd00f7aa764cf16639ce1ea4bbbc499e8cb8970ff818b530dd030d" -> "sha256:7882b9be7160773d155ed8424643a3770d8c0073a9506621760957b4099c9f79" [label=""];
  "sha256:7882b9be7160773d155ed8424643a3770d8c0073a9506621760957b4099c9f79" -> "sha256:c41a3de6f8f0458634536ada874bfb5a8681a32940ea2861c749e45324cd6091" [label=""];
  "sha256:c41a3de6f8f0458634536ada874bfb5a8681a32940ea2861c749e45324cd6091" -> "sha256:a8f89849f567a495c7adf36194d1fe70051464add992add7ab91b8864d069044" [label=""];
  "sha256:c5ec93e0c0cfe6663f2c673732b564b33f65403be7c4cf56437fa6a4d845b01e" -> "sha256:a8f89849f567a495c7adf36194d1fe70051464add992add7ab91b8864d069044" [label=""];
  "sha256:a8f89849f567a495c7adf36194d1fe70051464add992add7ab91b8864d069044" -> "sha256:0633c0fa2adf64bab100d995f24977c0d074b420392dad3b47864ed52e7dbdff" [label=""];
}

