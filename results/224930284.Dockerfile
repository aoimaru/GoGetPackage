[app/sources/224930284.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:e4520d7fdb446c985befac455b7c668bc53de63eddef8cbf7c1a82c99b10843c" [label="/bin/sh -c apk update && apk upgrade   && apk add ca-certificates php5 php5-phar php5-json php5-openssl php5-curl   && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:db8472f4a3ac42169b3992162723c2639b5e820b1987978bb8a2943d11ebf6fa" [label="sha256:db8472f4a3ac42169b3992162723c2639b5e820b1987978bb8a2943d11ebf6fa" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:e4520d7fdb446c985befac455b7c668bc53de63eddef8cbf7c1a82c99b10843c" [label=""];
  "sha256:e4520d7fdb446c985befac455b7c668bc53de63eddef8cbf7c1a82c99b10843c" -> "sha256:db8472f4a3ac42169b3992162723c2639b5e820b1987978bb8a2943d11ebf6fa" [label=""];
}

