[app/sources/252781332.Dockerfile]
digraph {
  "sha256:8c06436b5b4df8ca12ad52ad005cf0105ee09d71daf8301cc96abed2dbded156" [label="docker-image://docker.io/library/node:9.6-alpine" shape="ellipse"];
  "sha256:2b0ee973a30b5add7813d02cc3c4265e431c3fabd87827f00967cdfc77bb5c65" [label="/bin/sh -c apk add --update bash && rm -rf /var/cache/apk/* && npm install -g sass-lint@${SASS_LINT_VERSION}" shape="box"];
  "sha256:a1c7daceff9e350646f8650e98d9d59f4a40f69079d1e8dee13c7e04758c54ed" [label="mkdir{path=/app}" shape="note"];
  "sha256:ec4793c0731b81f888f3c5943239e8a6d968c575e59bff01eec03dafa11172ab" [label="local://context" shape="ellipse"];
  "sha256:5c94d36b4875163a0627cb254244e65f0383114d1cda2069d6f5e45710808438" [label="copy{src=/sass-lint.sh, dest=/sass-lint.sh}" shape="note"];
  "sha256:7816673a195d1f3c532782005280c292fee6dbbe7170557d8a108027a8763884" [label="sha256:7816673a195d1f3c532782005280c292fee6dbbe7170557d8a108027a8763884" shape="plaintext"];
  "sha256:8c06436b5b4df8ca12ad52ad005cf0105ee09d71daf8301cc96abed2dbded156" -> "sha256:2b0ee973a30b5add7813d02cc3c4265e431c3fabd87827f00967cdfc77bb5c65" [label=""];
  "sha256:2b0ee973a30b5add7813d02cc3c4265e431c3fabd87827f00967cdfc77bb5c65" -> "sha256:a1c7daceff9e350646f8650e98d9d59f4a40f69079d1e8dee13c7e04758c54ed" [label=""];
  "sha256:a1c7daceff9e350646f8650e98d9d59f4a40f69079d1e8dee13c7e04758c54ed" -> "sha256:5c94d36b4875163a0627cb254244e65f0383114d1cda2069d6f5e45710808438" [label=""];
  "sha256:ec4793c0731b81f888f3c5943239e8a6d968c575e59bff01eec03dafa11172ab" -> "sha256:5c94d36b4875163a0627cb254244e65f0383114d1cda2069d6f5e45710808438" [label=""];
  "sha256:5c94d36b4875163a0627cb254244e65f0383114d1cda2069d6f5e45710808438" -> "sha256:7816673a195d1f3c532782005280c292fee6dbbe7170557d8a108027a8763884" [label=""];
}

