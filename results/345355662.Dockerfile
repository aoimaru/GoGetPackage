[app/sources/345355662.Dockerfile]
digraph {
  "sha256:3df3601707b852e5f2118561c4288b9fb92ed0768ebaa36b69f6828b945d5fe7" [label="docker-image://docker.io/balenalib/armv7hf-alpine:3.7-run" shape="ellipse"];
  "sha256:1f6da756bff6bee6fe31eb910a599f6f7a32b49bd913a06b74a24840072f8e5b" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:47248a0a7f29376f94aac8c99d9bbee1ca43f3d7f0495f03d582e69e2fb7217f" [label="sha256:47248a0a7f29376f94aac8c99d9bbee1ca43f3d7f0495f03d582e69e2fb7217f" shape="plaintext"];
  "sha256:3df3601707b852e5f2118561c4288b9fb92ed0768ebaa36b69f6828b945d5fe7" -> "sha256:1f6da756bff6bee6fe31eb910a599f6f7a32b49bd913a06b74a24840072f8e5b" [label=""];
  "sha256:1f6da756bff6bee6fe31eb910a599f6f7a32b49bd913a06b74a24840072f8e5b" -> "sha256:47248a0a7f29376f94aac8c99d9bbee1ca43f3d7f0495f03d582e69e2fb7217f" [label=""];
}

