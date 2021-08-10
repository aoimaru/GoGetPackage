[app/sources/302881650.Dockerfile]
digraph {
  "sha256:cdd4dbbe75d58b1bef52e72c9776f90b015ee1c2ee5ef29ec1771cf3cefaa3ba" [label="local://context" shape="ellipse"];
  "sha256:c4109fa5e25fe9e69273b16f341c214548d04bbb9122d7a337abb80e163911ae" [label="docker-image://docker.io/library/nginx:1.15-alpine" shape="ellipse"];
  "sha256:dde596068268448c7ae79480180d186a24c62ac3d2fafdd8d8c8fa565bb2be3c" [label="/bin/sh -c set -x     && addgroup -g 1000 app     && adduser -u 1000 -D -G app app" shape="box"];
  "sha256:80baa0d7388e346ebe0d7e8d55863bed41f842499fd70fff0805a635413d2873" [label="/bin/sh -c apk upgrade --no-cache libxslt" shape="box"];
  "sha256:4a77ff23c8c2e6622853df115b52c06f59776249e0fe8f7d514b3d688f1e2d47" [label="copy{src=/src/http/nginx/docker-nginx-*, dest=/usr/local/bin/}" shape="note"];
  "sha256:826ddd65cda593c3ff7fc5a4c0915b5b6fd129363bcba904a4b59607d9470488" [label="copy{src=/src/http/nginx/conf/main, dest=/etc/nginx/}" shape="note"];
  "sha256:bd21a08d7dd1f40bb63df95969482cea860cdba1e830b6bb8dce125a39f86e38" [label="copy{src=/src/http/nginx/conf, dest=/etc/nginx/}" shape="note"];
  "sha256:168e4ddca74e225f7da85bfefad147539b6faa1a7557029d6d4d62033fdc8b62" [label="sha256:168e4ddca74e225f7da85bfefad147539b6faa1a7557029d6d4d62033fdc8b62" shape="plaintext"];
  "sha256:c4109fa5e25fe9e69273b16f341c214548d04bbb9122d7a337abb80e163911ae" -> "sha256:dde596068268448c7ae79480180d186a24c62ac3d2fafdd8d8c8fa565bb2be3c" [label=""];
  "sha256:dde596068268448c7ae79480180d186a24c62ac3d2fafdd8d8c8fa565bb2be3c" -> "sha256:80baa0d7388e346ebe0d7e8d55863bed41f842499fd70fff0805a635413d2873" [label=""];
  "sha256:80baa0d7388e346ebe0d7e8d55863bed41f842499fd70fff0805a635413d2873" -> "sha256:4a77ff23c8c2e6622853df115b52c06f59776249e0fe8f7d514b3d688f1e2d47" [label=""];
  "sha256:cdd4dbbe75d58b1bef52e72c9776f90b015ee1c2ee5ef29ec1771cf3cefaa3ba" -> "sha256:4a77ff23c8c2e6622853df115b52c06f59776249e0fe8f7d514b3d688f1e2d47" [label=""];
  "sha256:4a77ff23c8c2e6622853df115b52c06f59776249e0fe8f7d514b3d688f1e2d47" -> "sha256:826ddd65cda593c3ff7fc5a4c0915b5b6fd129363bcba904a4b59607d9470488" [label=""];
  "sha256:cdd4dbbe75d58b1bef52e72c9776f90b015ee1c2ee5ef29ec1771cf3cefaa3ba" -> "sha256:826ddd65cda593c3ff7fc5a4c0915b5b6fd129363bcba904a4b59607d9470488" [label=""];
  "sha256:826ddd65cda593c3ff7fc5a4c0915b5b6fd129363bcba904a4b59607d9470488" -> "sha256:bd21a08d7dd1f40bb63df95969482cea860cdba1e830b6bb8dce125a39f86e38" [label=""];
  "sha256:cdd4dbbe75d58b1bef52e72c9776f90b015ee1c2ee5ef29ec1771cf3cefaa3ba" -> "sha256:bd21a08d7dd1f40bb63df95969482cea860cdba1e830b6bb8dce125a39f86e38" [label=""];
  "sha256:bd21a08d7dd1f40bb63df95969482cea860cdba1e830b6bb8dce125a39f86e38" -> "sha256:168e4ddca74e225f7da85bfefad147539b6faa1a7557029d6d4d62033fdc8b62" [label=""];
}

