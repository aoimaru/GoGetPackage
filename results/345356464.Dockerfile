[app/sources/345356464.Dockerfile]
digraph {
  "sha256:9a8a332d57d0a61ab7c231695b271d4d74dc269ac9446b567c7819de9c4dbf1a" [label="docker-image://docker.io/balenalib/armv7hf-alpine:3.9-run" shape="ellipse"];
  "sha256:0667ad57d3d858b2f5267a7e03adbb95af27a45c2191e40289a650e71fe989e4" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:f1ac376f838d0b581d3bf55cf28b306dc1adc8fd0ceefec4083c46cfada3a307" [label="sha256:f1ac376f838d0b581d3bf55cf28b306dc1adc8fd0ceefec4083c46cfada3a307" shape="plaintext"];
  "sha256:9a8a332d57d0a61ab7c231695b271d4d74dc269ac9446b567c7819de9c4dbf1a" -> "sha256:0667ad57d3d858b2f5267a7e03adbb95af27a45c2191e40289a650e71fe989e4" [label=""];
  "sha256:0667ad57d3d858b2f5267a7e03adbb95af27a45c2191e40289a650e71fe989e4" -> "sha256:f1ac376f838d0b581d3bf55cf28b306dc1adc8fd0ceefec4083c46cfada3a307" [label=""];
}

