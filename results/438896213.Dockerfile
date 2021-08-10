[app/sources/438896213.Dockerfile]
digraph {
  "sha256:feb570cdc97b3f4601fc006e5df669e01ba38f0fd27298bdcc81f19387a9fc6c" [label="docker-image://docker.io/library/debian:sid-slim" shape="ellipse"];
  "sha256:73dfe69f753e8004ab5cb5ac10e6eece5a8754b6b60021eb1ad9f1a323ca7bf8" [label="/bin/sh -c apt-get update && apt-get install -y \talsa-utils \tlibasound2 \tlibasound2-plugins \tpulseaudio \tpulseaudio-utils \t--no-install-recommends \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:670c171268881ce4d87e9a3ce4512e72e9c09c8adcbb853d2d5c07152080786a" [label="/bin/sh -c useradd --create-home --home-dir $HOME pulseaudio \t&& usermod -aG audio,pulse,pulse-access pulseaudio \t&& chown -R pulseaudio:pulseaudio $HOME" shape="box"];
  "sha256:d18635d3b497f56abe18b229c96bc3637b47b5c3bf2af0f76db1cf4f0d80543c" [label="mkdir{path=/home/pulseaudio}" shape="note"];
  "sha256:b831d3a9e77b9e1f766326c9353939522e1133f43815e820b0a8746d8bdac2e2" [label="local://context" shape="ellipse"];
  "sha256:b9a8b6010b6fb5e91e0e49761064e1c6cbc26583f70189b1e2171ad283c446fd" [label="copy{src=/default.pa, dest=/etc/pulse/default.pa}" shape="note"];
  "sha256:5e9d118650197adbeea1d5d1a706392fc743336f4b66648079b1a8f7d3830ef8" [label="copy{src=/client.conf, dest=/etc/pulse/client.conf}" shape="note"];
  "sha256:d138b32f5f0d3bc7e31e3a8cc918d72dbe03d7bd8f089a98079edc5b920e8b9a" [label="copy{src=/daemon.conf, dest=/etc/pulse/daemon.conf}" shape="note"];
  "sha256:a4352d0b81ee8c1c34f2a44a0a1908a9f3d31f6ce2f17d07223e76c42867520b" [label="sha256:a4352d0b81ee8c1c34f2a44a0a1908a9f3d31f6ce2f17d07223e76c42867520b" shape="plaintext"];
  "sha256:feb570cdc97b3f4601fc006e5df669e01ba38f0fd27298bdcc81f19387a9fc6c" -> "sha256:73dfe69f753e8004ab5cb5ac10e6eece5a8754b6b60021eb1ad9f1a323ca7bf8" [label=""];
  "sha256:73dfe69f753e8004ab5cb5ac10e6eece5a8754b6b60021eb1ad9f1a323ca7bf8" -> "sha256:670c171268881ce4d87e9a3ce4512e72e9c09c8adcbb853d2d5c07152080786a" [label=""];
  "sha256:670c171268881ce4d87e9a3ce4512e72e9c09c8adcbb853d2d5c07152080786a" -> "sha256:d18635d3b497f56abe18b229c96bc3637b47b5c3bf2af0f76db1cf4f0d80543c" [label=""];
  "sha256:d18635d3b497f56abe18b229c96bc3637b47b5c3bf2af0f76db1cf4f0d80543c" -> "sha256:b9a8b6010b6fb5e91e0e49761064e1c6cbc26583f70189b1e2171ad283c446fd" [label=""];
  "sha256:b831d3a9e77b9e1f766326c9353939522e1133f43815e820b0a8746d8bdac2e2" -> "sha256:b9a8b6010b6fb5e91e0e49761064e1c6cbc26583f70189b1e2171ad283c446fd" [label=""];
  "sha256:b9a8b6010b6fb5e91e0e49761064e1c6cbc26583f70189b1e2171ad283c446fd" -> "sha256:5e9d118650197adbeea1d5d1a706392fc743336f4b66648079b1a8f7d3830ef8" [label=""];
  "sha256:b831d3a9e77b9e1f766326c9353939522e1133f43815e820b0a8746d8bdac2e2" -> "sha256:5e9d118650197adbeea1d5d1a706392fc743336f4b66648079b1a8f7d3830ef8" [label=""];
  "sha256:5e9d118650197adbeea1d5d1a706392fc743336f4b66648079b1a8f7d3830ef8" -> "sha256:d138b32f5f0d3bc7e31e3a8cc918d72dbe03d7bd8f089a98079edc5b920e8b9a" [label=""];
  "sha256:b831d3a9e77b9e1f766326c9353939522e1133f43815e820b0a8746d8bdac2e2" -> "sha256:d138b32f5f0d3bc7e31e3a8cc918d72dbe03d7bd8f089a98079edc5b920e8b9a" [label=""];
  "sha256:d138b32f5f0d3bc7e31e3a8cc918d72dbe03d7bd8f089a98079edc5b920e8b9a" -> "sha256:a4352d0b81ee8c1c34f2a44a0a1908a9f3d31f6ce2f17d07223e76c42867520b" [label=""];
}

