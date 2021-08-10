[app/sources/171475117.Dockerfile]
digraph {
  "sha256:4503297120868293011e2cba089ccdb9f9067e45f92083d0461de3cdc0925c3e" [label="docker-image://docker.io/library/se_base:latest" shape="ellipse"];
  "sha256:ef39b736836717b2ad80387a825b64db9641aa4c463bef1bca94734514c0f78e" [label="local://context" shape="ellipse"];
  "sha256:f3eb5f8995419b9c319793acf37d501c977e4c4f775afb52d0598ab8a7b5c74c" [label="copy{src=/se9000-Linux-x86_64-ni.tar.gz, dest=/tmp}" shape="note"];
  "sha256:c1742e315c5fc78b546f1eb44b232009daf9e1bfe2080a6e00335d8c3ecae1fc" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:6efa5c097e708b2074a948e5d1e2854ff1b6bd27af97f64bdec71f44d80bf41c" [label="/bin/sh -c ./se9000_install.sh -install -silent" shape="box"];
  "sha256:a61c8b82ec0d694a8f96d8e5904786a34e2b670a5a95b6913985e56be5757385" [label="sha256:a61c8b82ec0d694a8f96d8e5904786a34e2b670a5a95b6913985e56be5757385" shape="plaintext"];
  "sha256:4503297120868293011e2cba089ccdb9f9067e45f92083d0461de3cdc0925c3e" -> "sha256:f3eb5f8995419b9c319793acf37d501c977e4c4f775afb52d0598ab8a7b5c74c" [label=""];
  "sha256:ef39b736836717b2ad80387a825b64db9641aa4c463bef1bca94734514c0f78e" -> "sha256:f3eb5f8995419b9c319793acf37d501c977e4c4f775afb52d0598ab8a7b5c74c" [label=""];
  "sha256:f3eb5f8995419b9c319793acf37d501c977e4c4f775afb52d0598ab8a7b5c74c" -> "sha256:c1742e315c5fc78b546f1eb44b232009daf9e1bfe2080a6e00335d8c3ecae1fc" [label=""];
  "sha256:c1742e315c5fc78b546f1eb44b232009daf9e1bfe2080a6e00335d8c3ecae1fc" -> "sha256:6efa5c097e708b2074a948e5d1e2854ff1b6bd27af97f64bdec71f44d80bf41c" [label=""];
  "sha256:6efa5c097e708b2074a948e5d1e2854ff1b6bd27af97f64bdec71f44d80bf41c" -> "sha256:a61c8b82ec0d694a8f96d8e5904786a34e2b670a5a95b6913985e56be5757385" [label=""];
}

