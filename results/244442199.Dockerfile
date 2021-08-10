[app/sources/244442199.Dockerfile]
digraph {
  "sha256:801d7b05da3324a8fbeb7856122d39469ef99a2eb41bdf2fa2925baddda00908" [label="docker-image://docker.io/library/golang:1.6-alpine" shape="ellipse"];
  "sha256:92e11f4621810f29c83f22497ecae343b84a75768462fe8551b9025c68cae843" [label="/bin/sh -c set -ex     && apk add --no-cache make git" shape="box"];
  "sha256:9d99b29f393b342ea52fa1d4c2d3d74709820ed4bd7596026bda40cf97804f30" [label="mkdir{path=/go/src/github.com/docker/distribution}" shape="note"];
  "sha256:a244c581d173189a25f742d623f4006a9b14a4bff2190be994b4e503c65bbfd4" [label="local://context" shape="ellipse"];
  "sha256:0f1f61f7533d57f896dd31ab9e350b7c9bb70a3ceb78f33dbbe52f10f5adb8cd" [label="copy{src=/, dest=/go/src/github.com/docker/distribution}" shape="note"];
  "sha256:ca51a90fedd3bc8253dc1da6f0c4ab6de4e215cfaae8441562f40d8bb1eb15dd" [label="copy{src=/cmd/registry/config-dev.yml, dest=/etc/docker/registry/config.yml}" shape="note"];
  "sha256:c3ce0314d9d04639545a3b885fa6828618144e6b6bbc43697c40ef84c038f70b" [label="/bin/sh -c make PREFIX=/go clean binaries" shape="box"];
  "sha256:746bdd5ed2a4f571362307a1cca7e42dd7a6bdad38be38d2d6eb7df446cd1b34" [label="sha256:746bdd5ed2a4f571362307a1cca7e42dd7a6bdad38be38d2d6eb7df446cd1b34" shape="plaintext"];
  "sha256:801d7b05da3324a8fbeb7856122d39469ef99a2eb41bdf2fa2925baddda00908" -> "sha256:92e11f4621810f29c83f22497ecae343b84a75768462fe8551b9025c68cae843" [label=""];
  "sha256:92e11f4621810f29c83f22497ecae343b84a75768462fe8551b9025c68cae843" -> "sha256:9d99b29f393b342ea52fa1d4c2d3d74709820ed4bd7596026bda40cf97804f30" [label=""];
  "sha256:9d99b29f393b342ea52fa1d4c2d3d74709820ed4bd7596026bda40cf97804f30" -> "sha256:0f1f61f7533d57f896dd31ab9e350b7c9bb70a3ceb78f33dbbe52f10f5adb8cd" [label=""];
  "sha256:a244c581d173189a25f742d623f4006a9b14a4bff2190be994b4e503c65bbfd4" -> "sha256:0f1f61f7533d57f896dd31ab9e350b7c9bb70a3ceb78f33dbbe52f10f5adb8cd" [label=""];
  "sha256:0f1f61f7533d57f896dd31ab9e350b7c9bb70a3ceb78f33dbbe52f10f5adb8cd" -> "sha256:ca51a90fedd3bc8253dc1da6f0c4ab6de4e215cfaae8441562f40d8bb1eb15dd" [label=""];
  "sha256:a244c581d173189a25f742d623f4006a9b14a4bff2190be994b4e503c65bbfd4" -> "sha256:ca51a90fedd3bc8253dc1da6f0c4ab6de4e215cfaae8441562f40d8bb1eb15dd" [label=""];
  "sha256:ca51a90fedd3bc8253dc1da6f0c4ab6de4e215cfaae8441562f40d8bb1eb15dd" -> "sha256:c3ce0314d9d04639545a3b885fa6828618144e6b6bbc43697c40ef84c038f70b" [label=""];
  "sha256:c3ce0314d9d04639545a3b885fa6828618144e6b6bbc43697c40ef84c038f70b" -> "sha256:746bdd5ed2a4f571362307a1cca7e42dd7a6bdad38be38d2d6eb7df446cd1b34" [label=""];
}

