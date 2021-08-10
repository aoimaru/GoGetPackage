[app/sources/345355904.Dockerfile]
digraph {
  "sha256:f180d1197658d20fa9ebbe0bedb8065a04da275cb13b39010bc3924576c94a7a" [label="docker-image://docker.io/balenalib/armv7hf-alpine:3.6-run" shape="ellipse"];
  "sha256:185580e5a6697ae261d2a3ef709f60d64c9bdff3514c2b867fc9cd44e4fc548d" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:ba9dd9b7c6201b63a1e01cf48b02450253919ce50c29178d865e7b9b55cab8ba" [label="sha256:ba9dd9b7c6201b63a1e01cf48b02450253919ce50c29178d865e7b9b55cab8ba" shape="plaintext"];
  "sha256:f180d1197658d20fa9ebbe0bedb8065a04da275cb13b39010bc3924576c94a7a" -> "sha256:185580e5a6697ae261d2a3ef709f60d64c9bdff3514c2b867fc9cd44e4fc548d" [label=""];
  "sha256:185580e5a6697ae261d2a3ef709f60d64c9bdff3514c2b867fc9cd44e4fc548d" -> "sha256:ba9dd9b7c6201b63a1e01cf48b02450253919ce50c29178d865e7b9b55cab8ba" [label=""];
}

