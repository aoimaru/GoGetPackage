[app/sub_sources/128489309.Dockerfile]
digraph {
  "sha256:2b581387a274b1c30543dc01e7bfc9a440e08af1286b09556e022d6a4425aed0" [label="docker-image://docker.io/library/alpine@sha256:eb3e4e175ba6d212ba1d6e04fc0782916c08e1c9d7b45892e9796141b1d379ae" shape="ellipse"];
  "sha256:a5ab34716856e015e2ca3f6bfd28a5ba0c28b9836e979973e3317c3c3ae65b33" [label="local://context" shape="ellipse"];
  "sha256:cc1dd9c4d7d0724c0a9894b324a82ff02b5eca7d651d89ecfcf3ae967f8b657e" [label="copy{src=/cmd/registry/config-dev.yml, dest=/etc/docker/registry/config.yml}" shape="note"];
  "sha256:9d90e2ea233d614b0cb38bb51b56acd604e78c67e51b7230fae26fc3b72e0c80" [label="docker-image://docker.io/library/golang:1.11-alpine@sha256:09e47edb668c2cac8c0bbce113f2f72c97b1555d70546dff569c8b9b27fcebd3" shape="ellipse"];
  "sha256:7d7e3f4f9719a3bfa5367644d874d52458ca2f2a0160237768bf5ffdb3aef892" [label="/bin/sh -c set -ex     && apk add --no-cache make git file" shape="box"];
  "sha256:e0a66fd718be2c0c186f18abc2b380cc5a330945f2c646798545849c40e0645d" [label="mkdir{path=/go/src/github.com/docker/distribution}" shape="note"];
  "sha256:701926eff9cbc8cca61d35b2375c87388aa12fc20592eb6d03ce304babcd49c5" [label="copy{src=/, dest=/go/src/github.com/docker/distribution}" shape="note"];
  "sha256:59a8abee9dd350ae0266ab4b2670d73899a67ed98122c231d8e3b761621084dd" [label="/bin/sh -c CGO_ENABLED=0 make PREFIX=/go clean binaries && file ./bin/registry | grep \"statically linked\"" shape="box"];
  "sha256:eaa20520a3d753063562f5731d281913bce6eead256e100df77da8e1353d1c1e" [label="copy{src=/go/src/github.com/docker/distribution/bin/registry, dest=/bin/registry}" shape="note"];
  "sha256:93f09e30b1a065f06d3244036cfe9e9f98dd6f786212002a387e82d3ca9e7ea6" [label="sha256:93f09e30b1a065f06d3244036cfe9e9f98dd6f786212002a387e82d3ca9e7ea6" shape="plaintext"];
  "sha256:2b581387a274b1c30543dc01e7bfc9a440e08af1286b09556e022d6a4425aed0" -> "sha256:cc1dd9c4d7d0724c0a9894b324a82ff02b5eca7d651d89ecfcf3ae967f8b657e" [label=""];
  "sha256:a5ab34716856e015e2ca3f6bfd28a5ba0c28b9836e979973e3317c3c3ae65b33" -> "sha256:cc1dd9c4d7d0724c0a9894b324a82ff02b5eca7d651d89ecfcf3ae967f8b657e" [label=""];
  "sha256:9d90e2ea233d614b0cb38bb51b56acd604e78c67e51b7230fae26fc3b72e0c80" -> "sha256:7d7e3f4f9719a3bfa5367644d874d52458ca2f2a0160237768bf5ffdb3aef892" [label=""];
  "sha256:7d7e3f4f9719a3bfa5367644d874d52458ca2f2a0160237768bf5ffdb3aef892" -> "sha256:e0a66fd718be2c0c186f18abc2b380cc5a330945f2c646798545849c40e0645d" [label=""];
  "sha256:e0a66fd718be2c0c186f18abc2b380cc5a330945f2c646798545849c40e0645d" -> "sha256:701926eff9cbc8cca61d35b2375c87388aa12fc20592eb6d03ce304babcd49c5" [label=""];
  "sha256:a5ab34716856e015e2ca3f6bfd28a5ba0c28b9836e979973e3317c3c3ae65b33" -> "sha256:701926eff9cbc8cca61d35b2375c87388aa12fc20592eb6d03ce304babcd49c5" [label=""];
  "sha256:701926eff9cbc8cca61d35b2375c87388aa12fc20592eb6d03ce304babcd49c5" -> "sha256:59a8abee9dd350ae0266ab4b2670d73899a67ed98122c231d8e3b761621084dd" [label=""];
  "sha256:cc1dd9c4d7d0724c0a9894b324a82ff02b5eca7d651d89ecfcf3ae967f8b657e" -> "sha256:eaa20520a3d753063562f5731d281913bce6eead256e100df77da8e1353d1c1e" [label=""];
  "sha256:59a8abee9dd350ae0266ab4b2670d73899a67ed98122c231d8e3b761621084dd" -> "sha256:eaa20520a3d753063562f5731d281913bce6eead256e100df77da8e1353d1c1e" [label=""];
  "sha256:eaa20520a3d753063562f5731d281913bce6eead256e100df77da8e1353d1c1e" -> "sha256:93f09e30b1a065f06d3244036cfe9e9f98dd6f786212002a387e82d3ca9e7ea6" [label=""];
}

