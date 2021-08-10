[app/sources/393797046.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:3ed30d7503435bcb4ebbe60f13524d594fd9562b396f780a9a8290acd9ed6447" [label="mkdir{path=/opt/node-exporter}" shape="note"];
  "sha256:4c5edbc1dd2da2f339524b6afe616086842c45f9c2be044dc2d04f6668b411f5" [label="/bin/sh -c set -ex; \t\tapk add --no-cache --virtual .fetch-deps \t\tca-certificates \t\tlibressl \t; \t\tapkArch=\"$(apk --print-arch)\"; \tcase \"$apkArch\" in \t\taarch64) promArch='arm64'   ;; \t\tarmhf)   promArch='armv6'   ;; \t\tx86)     promArch='386'     ;; \t\tx86_64)  promArch='amd64'   ;; \t\t*) echo >&2 \"error: unsupported arch: $apkArch\"; exit 1 ;; \tesac; \t\twget -O /tmp/node-exporter.tar.gz \"https://github.com/prometheus/node_exporter/releases/download/v${NODE_EXPORTER_VERSION}/node_exporter-${NODE_EXPORTER_VERSION}.linux-$promArch.tar.gz\"; \ttar \t\t--extract \t\t--file /tmp/node-exporter.tar.gz \t\t--strip-components 1 \t\t--verbose \t; \trm /tmp/node-exporter.tar.gz; \t\tnode_exporter --version; \t\tapk del .fetch-deps" shape="box"];
  "sha256:5f776e028b2344ebb562ab7a6116cde203429e16776a1bfb5f0ff1af3b0f17f0" [label="sha256:5f776e028b2344ebb562ab7a6116cde203429e16776a1bfb5f0ff1af3b0f17f0" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:3ed30d7503435bcb4ebbe60f13524d594fd9562b396f780a9a8290acd9ed6447" [label=""];
  "sha256:3ed30d7503435bcb4ebbe60f13524d594fd9562b396f780a9a8290acd9ed6447" -> "sha256:4c5edbc1dd2da2f339524b6afe616086842c45f9c2be044dc2d04f6668b411f5" [label=""];
  "sha256:4c5edbc1dd2da2f339524b6afe616086842c45f9c2be044dc2d04f6668b411f5" -> "sha256:5f776e028b2344ebb562ab7a6116cde203429e16776a1bfb5f0ff1af3b0f17f0" [label=""];
}

