[app/sources/343395358.Dockerfile]
digraph {
  "sha256:987be877e2183a86cef73b00fb876037d6987947230d1071ebb4fbbe34e3d1d8" [label="docker-image://docker.io/library/buildpack-deps:jessie-curl" shape="ellipse"];
  "sha256:c5d14f40be0c6dd301463fae4ff3dd61f3ecd67a3ac39dc2a9855fcf2d1ea0e7" [label="/bin/sh -c apt-get update \t&& apt-get install -y unzip libelf1 \t&& apt-get clean \t&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \t&& curl -SL \"https://github.com/facebook/flow/releases/download/v0.24.0/flow-linux64-v0.24.0.zip\" -o \"flow-linux64-v0.24.0.zip\" \t&& unzip \"flow-linux64-v0.24.0.zip\" -d /usr/local \t&& rm \"flow-linux64-v0.24.0.zip\"" shape="box"];
  "sha256:f855f455bc6abf3941990e3b702ab7c3a9dcac639cd0262ac7df51b9d3d52a8e" [label="mkdir{path=/app}" shape="note"];
  "sha256:04965a44d1a561be6418db305ac91e340383b75ce4ff435f3b915739c7850505" [label="sha256:04965a44d1a561be6418db305ac91e340383b75ce4ff435f3b915739c7850505" shape="plaintext"];
  "sha256:987be877e2183a86cef73b00fb876037d6987947230d1071ebb4fbbe34e3d1d8" -> "sha256:c5d14f40be0c6dd301463fae4ff3dd61f3ecd67a3ac39dc2a9855fcf2d1ea0e7" [label=""];
  "sha256:c5d14f40be0c6dd301463fae4ff3dd61f3ecd67a3ac39dc2a9855fcf2d1ea0e7" -> "sha256:f855f455bc6abf3941990e3b702ab7c3a9dcac639cd0262ac7df51b9d3d52a8e" [label=""];
  "sha256:f855f455bc6abf3941990e3b702ab7c3a9dcac639cd0262ac7df51b9d3d52a8e" -> "sha256:04965a44d1a561be6418db305ac91e340383b75ce4ff435f3b915739c7850505" [label=""];
}

