[app/sources/280649231.Dockerfile]
digraph {
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" [label="docker-image://docker.io/library/alpine:3.2" shape="ellipse"];
  "sha256:36323b42e81af0781e0a24a8dedc5b2c68673af012304fe8c1065bbd4f364818" [label="/bin/sh -c apk --update add curl netcat-openbsd iproute2 && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:49149bbb54a06ea934cc25645c6e100887d5abe2cf9c31781a9f615cbf1cc158" [label="sha256:49149bbb54a06ea934cc25645c6e100887d5abe2cf9c31781a9f615cbf1cc158" shape="plaintext"];
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" -> "sha256:36323b42e81af0781e0a24a8dedc5b2c68673af012304fe8c1065bbd4f364818" [label=""];
  "sha256:36323b42e81af0781e0a24a8dedc5b2c68673af012304fe8c1065bbd4f364818" -> "sha256:49149bbb54a06ea934cc25645c6e100887d5abe2cf9c31781a9f615cbf1cc158" [label=""];
}

