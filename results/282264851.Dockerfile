[app/sources/282264851.Dockerfile]
digraph {
  "sha256:815a9383e041a0589e09b0b0d27032d009c9c0cfc4a2463a64d1c48d6665222c" [label="docker-image://docker.io/webdevops/bootstrap:ubuntu-12.04@sha256:8410ff8a15d33a8c146d794a541c9fa985e85b920aa0742ad3830a9df02c41cb" shape="ellipse"];
  "sha256:c5454f3e81866c0edccb28943beca16f36b53ee85508e9682a4dac63899aeac3" [label="local://context" shape="ellipse"];
  "sha256:3d13200a73ff77908feec6e04181e9d31e2f5d33c5bef4487448b5611d879dc2" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:ab58884fa34379c6fe957b0a67cfaacf2649d1f4f661d240e2234c5b4b07d809" [label="/bin/sh -c set -x     && chmod +x /opt/docker/bin/*     && apt-install         supervisor         wget         curl         vim         net-tools         tzdata     && chmod +s /sbin/gosu     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:1021f0743805649403db6cb315712738bafe416b3bd233db74acbae50cd461c4" [label="sha256:1021f0743805649403db6cb315712738bafe416b3bd233db74acbae50cd461c4" shape="plaintext"];
  "sha256:815a9383e041a0589e09b0b0d27032d009c9c0cfc4a2463a64d1c48d6665222c" -> "sha256:3d13200a73ff77908feec6e04181e9d31e2f5d33c5bef4487448b5611d879dc2" [label=""];
  "sha256:c5454f3e81866c0edccb28943beca16f36b53ee85508e9682a4dac63899aeac3" -> "sha256:3d13200a73ff77908feec6e04181e9d31e2f5d33c5bef4487448b5611d879dc2" [label=""];
  "sha256:3d13200a73ff77908feec6e04181e9d31e2f5d33c5bef4487448b5611d879dc2" -> "sha256:ab58884fa34379c6fe957b0a67cfaacf2649d1f4f661d240e2234c5b4b07d809" [label=""];
  "sha256:ab58884fa34379c6fe957b0a67cfaacf2649d1f4f661d240e2234c5b4b07d809" -> "sha256:1021f0743805649403db6cb315712738bafe416b3bd233db74acbae50cd461c4" [label=""];
}

