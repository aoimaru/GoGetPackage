[app/sources/345361964.Dockerfile]
digraph {
  "sha256:9a255248693453bbf9bf18a9aadf13c936979d57d2ffb7df028cf60e1fded937" [label="docker-image://docker.io/balenalib/armv7hf-alpine:3.9-build" shape="ellipse"];
  "sha256:dbe827886b32a08490d101f955468ff179738ca4ae8f17fb2af303f09c93c277" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:bea39642ecb8256ea59b01d3a5f2d569574453bb9f01a4e4e7aaec494415b709" [label="sha256:bea39642ecb8256ea59b01d3a5f2d569574453bb9f01a4e4e7aaec494415b709" shape="plaintext"];
  "sha256:9a255248693453bbf9bf18a9aadf13c936979d57d2ffb7df028cf60e1fded937" -> "sha256:dbe827886b32a08490d101f955468ff179738ca4ae8f17fb2af303f09c93c277" [label=""];
  "sha256:dbe827886b32a08490d101f955468ff179738ca4ae8f17fb2af303f09c93c277" -> "sha256:bea39642ecb8256ea59b01d3a5f2d569574453bb9f01a4e4e7aaec494415b709" [label=""];
}

