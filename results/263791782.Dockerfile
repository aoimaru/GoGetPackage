[app/sources/263791782.Dockerfile]
digraph {
  "sha256:10c58451851732865bd0c49bfe1eb382ae687ef3f03ed00dba413941b0d1ca4f" [label="docker-image://docker.elastic.co/kibana/kibana-ubuntu-base:latest@sha256:64c3a9fbb07f257397b1e5b5574aa09a9211cff52470f63a4ad0d54494981b7f" shape="ellipse"];
  "sha256:c2adf91a2045ca779e7035f81f221e423dcb1e9e472d526bc78333e585be5add" [label="mkdir{path=/usr/share/kibana}" shape="note"];
  "sha256:84b94e842ca1b2c532bc77ff9d5ea903a0c9120158176c3f29012fd7fa88a007" [label="/bin/sh -c curl -Ls ${DOWNLOAD_URL}/kibana/kibana-${ELASTIC_VERSION}-linux-x86_64.tar.gz | tar --strip-components=1 -zxf - &&     ln -s /usr/share/kibana /opt/kibana" shape="box"];
  "sha256:3773bc24b9346fe123ff6eae760f2c0c9f7db77e2daa664f0a41c9ebefee7b9f" [label="local://context" shape="ellipse"];
  "sha256:fd4e52b393052aadf8608328269e88c167473e01db17fcd9c3cc74f9d511d128" [label="copy{src=/config/kibana.yml, dest=/usr/share/kibana/config/}" shape="note"];
  "sha256:d3d9db38ded08569d14c2727e3c217876bbc88cc2c2fef9932936a05b644944f" [label="copy{src=/bin/kibana-docker, dest=/usr/local/bin/}" shape="note"];
  "sha256:0c00a3773d19e27c623495303095006a68a1987fe7568634ea50ebb63e6164c0" [label="/bin/sh -c usermod --home /usr/share/kibana kibana" shape="box"];
  "sha256:b64068514115f4c1dc35447e68a44e4ffcf6e0d0c5bd41521d95029079499009" [label="sha256:b64068514115f4c1dc35447e68a44e4ffcf6e0d0c5bd41521d95029079499009" shape="plaintext"];
  "sha256:10c58451851732865bd0c49bfe1eb382ae687ef3f03ed00dba413941b0d1ca4f" -> "sha256:c2adf91a2045ca779e7035f81f221e423dcb1e9e472d526bc78333e585be5add" [label=""];
  "sha256:c2adf91a2045ca779e7035f81f221e423dcb1e9e472d526bc78333e585be5add" -> "sha256:84b94e842ca1b2c532bc77ff9d5ea903a0c9120158176c3f29012fd7fa88a007" [label=""];
  "sha256:84b94e842ca1b2c532bc77ff9d5ea903a0c9120158176c3f29012fd7fa88a007" -> "sha256:fd4e52b393052aadf8608328269e88c167473e01db17fcd9c3cc74f9d511d128" [label=""];
  "sha256:3773bc24b9346fe123ff6eae760f2c0c9f7db77e2daa664f0a41c9ebefee7b9f" -> "sha256:fd4e52b393052aadf8608328269e88c167473e01db17fcd9c3cc74f9d511d128" [label=""];
  "sha256:fd4e52b393052aadf8608328269e88c167473e01db17fcd9c3cc74f9d511d128" -> "sha256:d3d9db38ded08569d14c2727e3c217876bbc88cc2c2fef9932936a05b644944f" [label=""];
  "sha256:3773bc24b9346fe123ff6eae760f2c0c9f7db77e2daa664f0a41c9ebefee7b9f" -> "sha256:d3d9db38ded08569d14c2727e3c217876bbc88cc2c2fef9932936a05b644944f" [label=""];
  "sha256:d3d9db38ded08569d14c2727e3c217876bbc88cc2c2fef9932936a05b644944f" -> "sha256:0c00a3773d19e27c623495303095006a68a1987fe7568634ea50ebb63e6164c0" [label=""];
  "sha256:0c00a3773d19e27c623495303095006a68a1987fe7568634ea50ebb63e6164c0" -> "sha256:b64068514115f4c1dc35447e68a44e4ffcf6e0d0c5bd41521d95029079499009" [label=""];
}

