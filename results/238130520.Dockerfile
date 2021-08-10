[app/sources/238130520.Dockerfile]
digraph {
  "sha256:9c3d832424c4ee2b326f594163fa766aa88ed23c8b35566a9b98f7f4065ac2d5" [label="docker-image://docker.io/library/golang:1.9.3" shape="ellipse"];
  "sha256:8a83297472fe928d2fb4e88a7ad72919a53cdaad7597dfebd03295c889fae595" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         rsync     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:301e8a91c316878ef669bca79893f19990e01f0f65e701a4a28a095331dd06ff" [label="https://storage.googleapis.com/kubernetes-release/release/v1.10.2/bin/linux/amd64/kubectl" shape="ellipse"];
  "sha256:f86a1080ddb1b49b2c32fa5caa3b5e723453981e25f58d8391779cd93566529c" [label="copy{src=/kubectl, dest=/usr/bin/kubectl}" shape="note"];
  "sha256:cf13104ea542f30de469db47718214a3f4784092ca111a7ea24d464d338053bd" [label="/bin/sh -c chmod +x /usr/bin/kubectl" shape="box"];
  "sha256:a5c250317ab478e6afcf386a1cdbdfd3e0be2fcbf1ecad055656db851685918c" [label="/bin/sh -c git clone --depth 50 --branch $KUBE_VERSION     https://github.com/kubernetes/kubernetes.git /go/src/k8s.io/kubernetes" shape="box"];
  "sha256:4e789162877088d6f7a965cf43d509bae55497d3432e88baeec8f87058f1f70a" [label="mkdir{path=/go/src/k8s.io/kubernetes}" shape="note"];
  "sha256:b838a7d33723c348d0d4846f4fa9accbea125e90df564fb722ceb6123f914527" [label="/bin/sh -c make ginkgo" shape="box"];
  "sha256:f94c54dfe84377379a6c8b0fd2b28dde938354a3633bded7045a58b31a3d278b" [label="/bin/sh -c make WHAT='test/e2e/e2e.test'" shape="box"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:ff229b0c57b2f7ccf0699f6a804677c233854392ee0adf026c6d21e951aed9d3" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:50eba579c5fcb091b87e6c362d5b3183597825a09b9c6bf36c82e31f06c74a2d" [label="copy{src=/go/src/k8s.io/kubernetes/_output/bin/e2e.test, dest=/e2e.test}" shape="note"];
  "sha256:c82b273f7724b1a039283aed2d196a7f3ea5f8e6b170a63fdf1baa6add660901" [label="copy{src=/go/src/k8s.io/kubernetes/_output/bin/ginkgo, dest=/usr/bin/ginkgo}" shape="note"];
  "sha256:d91f7b435ed2fb1ffd1ceb7d677e13209fc5c3add87c002424e13e0db73b6463" [label="copy{src=/usr/bin/kubectl, dest=/usr/bin/kubectl}" shape="note"];
  "sha256:ba3157b6f7491fc6a6adbeb2aef27fde18bf4bfd2a1d0b3a63e452cf0917b33d" [label="sha256:ba3157b6f7491fc6a6adbeb2aef27fde18bf4bfd2a1d0b3a63e452cf0917b33d" shape="plaintext"];
  "sha256:9c3d832424c4ee2b326f594163fa766aa88ed23c8b35566a9b98f7f4065ac2d5" -> "sha256:8a83297472fe928d2fb4e88a7ad72919a53cdaad7597dfebd03295c889fae595" [label=""];
  "sha256:8a83297472fe928d2fb4e88a7ad72919a53cdaad7597dfebd03295c889fae595" -> "sha256:f86a1080ddb1b49b2c32fa5caa3b5e723453981e25f58d8391779cd93566529c" [label=""];
  "sha256:301e8a91c316878ef669bca79893f19990e01f0f65e701a4a28a095331dd06ff" -> "sha256:f86a1080ddb1b49b2c32fa5caa3b5e723453981e25f58d8391779cd93566529c" [label=""];
  "sha256:f86a1080ddb1b49b2c32fa5caa3b5e723453981e25f58d8391779cd93566529c" -> "sha256:cf13104ea542f30de469db47718214a3f4784092ca111a7ea24d464d338053bd" [label=""];
  "sha256:cf13104ea542f30de469db47718214a3f4784092ca111a7ea24d464d338053bd" -> "sha256:a5c250317ab478e6afcf386a1cdbdfd3e0be2fcbf1ecad055656db851685918c" [label=""];
  "sha256:a5c250317ab478e6afcf386a1cdbdfd3e0be2fcbf1ecad055656db851685918c" -> "sha256:4e789162877088d6f7a965cf43d509bae55497d3432e88baeec8f87058f1f70a" [label=""];
  "sha256:4e789162877088d6f7a965cf43d509bae55497d3432e88baeec8f87058f1f70a" -> "sha256:b838a7d33723c348d0d4846f4fa9accbea125e90df564fb722ceb6123f914527" [label=""];
  "sha256:b838a7d33723c348d0d4846f4fa9accbea125e90df564fb722ceb6123f914527" -> "sha256:f94c54dfe84377379a6c8b0fd2b28dde938354a3633bded7045a58b31a3d278b" [label=""];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:ff229b0c57b2f7ccf0699f6a804677c233854392ee0adf026c6d21e951aed9d3" [label=""];
  "sha256:ff229b0c57b2f7ccf0699f6a804677c233854392ee0adf026c6d21e951aed9d3" -> "sha256:50eba579c5fcb091b87e6c362d5b3183597825a09b9c6bf36c82e31f06c74a2d" [label=""];
  "sha256:f94c54dfe84377379a6c8b0fd2b28dde938354a3633bded7045a58b31a3d278b" -> "sha256:50eba579c5fcb091b87e6c362d5b3183597825a09b9c6bf36c82e31f06c74a2d" [label=""];
  "sha256:50eba579c5fcb091b87e6c362d5b3183597825a09b9c6bf36c82e31f06c74a2d" -> "sha256:c82b273f7724b1a039283aed2d196a7f3ea5f8e6b170a63fdf1baa6add660901" [label=""];
  "sha256:f94c54dfe84377379a6c8b0fd2b28dde938354a3633bded7045a58b31a3d278b" -> "sha256:c82b273f7724b1a039283aed2d196a7f3ea5f8e6b170a63fdf1baa6add660901" [label=""];
  "sha256:c82b273f7724b1a039283aed2d196a7f3ea5f8e6b170a63fdf1baa6add660901" -> "sha256:d91f7b435ed2fb1ffd1ceb7d677e13209fc5c3add87c002424e13e0db73b6463" [label=""];
  "sha256:f94c54dfe84377379a6c8b0fd2b28dde938354a3633bded7045a58b31a3d278b" -> "sha256:d91f7b435ed2fb1ffd1ceb7d677e13209fc5c3add87c002424e13e0db73b6463" [label=""];
  "sha256:d91f7b435ed2fb1ffd1ceb7d677e13209fc5c3add87c002424e13e0db73b6463" -> "sha256:ba3157b6f7491fc6a6adbeb2aef27fde18bf4bfd2a1d0b3a63e452cf0917b33d" [label=""];
}

