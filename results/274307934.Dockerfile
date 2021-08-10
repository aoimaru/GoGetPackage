[app/sources/274307934.Dockerfile]
digraph {
  "sha256:cd6821d47eaac0121761f94c6e88cea89a65715ef8eea6d36d9c624cdb168d1f" [label="docker-image://docker.io/library/nginx:1.13-alpine" shape="ellipse"];
  "sha256:8674703085cc06f4a551114c7c4f325b904925fe692af0c8d50209d28df84b99" [label="local://context" shape="ellipse"];
  "sha256:cf7550fd3c5edecde4bdde703d6d8756b9a22ef1fdd6b75c6456c8bbb26092cb" [label="copy{src=/nginx.conf, dest=/etc/nginx/}" shape="note"];
  "sha256:18281d9f4a2797a80aeea86e2a693a557d424da3b59d1847fdb789806ec88ece" [label="/bin/sh -c echo \"upstream php-upstream { server ${PHP_UPSTREAM_CONTAINER}:${PHP_UPSTREAM_PORT}; }\" > /etc/nginx/conf.d/upstream.conf     && rm /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:76e9a82a74b41bf28a916f1167f02a5b53831507ef273a0d2cdd9042e0c1e89d" [label="sha256:76e9a82a74b41bf28a916f1167f02a5b53831507ef273a0d2cdd9042e0c1e89d" shape="plaintext"];
  "sha256:cd6821d47eaac0121761f94c6e88cea89a65715ef8eea6d36d9c624cdb168d1f" -> "sha256:cf7550fd3c5edecde4bdde703d6d8756b9a22ef1fdd6b75c6456c8bbb26092cb" [label=""];
  "sha256:8674703085cc06f4a551114c7c4f325b904925fe692af0c8d50209d28df84b99" -> "sha256:cf7550fd3c5edecde4bdde703d6d8756b9a22ef1fdd6b75c6456c8bbb26092cb" [label=""];
  "sha256:cf7550fd3c5edecde4bdde703d6d8756b9a22ef1fdd6b75c6456c8bbb26092cb" -> "sha256:18281d9f4a2797a80aeea86e2a693a557d424da3b59d1847fdb789806ec88ece" [label=""];
  "sha256:18281d9f4a2797a80aeea86e2a693a557d424da3b59d1847fdb789806ec88ece" -> "sha256:76e9a82a74b41bf28a916f1167f02a5b53831507ef273a0d2cdd9042e0c1e89d" [label=""];
}

