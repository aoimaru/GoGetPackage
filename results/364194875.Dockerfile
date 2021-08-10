[app/sources/364194875.Dockerfile]
digraph {
  "sha256:73e822cf569a993f92aac112f88c21c3f4c1cbe3b1b20134e4792ac8f42808bc" [label="docker-image://docker.io/webdevops/base:ubuntu-17.10@sha256:6eada4a79a6326ffde2854717e908c5eeb2ddd1ecc0d6b3df31eb9f343f3be2f" shape="ellipse"];
  "sha256:c5bbe8e49c5b84a19cd7fad47927aba545c15923e4a335f2c446acbfabba1384" [label="local://context" shape="ellipse"];
  "sha256:4cc14d87a7c68e9720aaeb01092e52cc5be6c3eb620b786e04067f5f69da4ff5" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:176af0ea566100894053ca254bce6c3a2f379e39387c1d1619ae87f6ceea8639" [label="/bin/sh -c set -x     && apt-install         zip         unzip         bzip2         moreutils         dnsutils         openssh-client         rsync         git         patch     && mkdir -p /var/lib/syslog-ng/     && /usr/local/bin/generate-locales     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:42be9a3d824555d223d1032676a13946ead12925c453509cf1d21ee2ee914dba" [label="sha256:42be9a3d824555d223d1032676a13946ead12925c453509cf1d21ee2ee914dba" shape="plaintext"];
  "sha256:73e822cf569a993f92aac112f88c21c3f4c1cbe3b1b20134e4792ac8f42808bc" -> "sha256:4cc14d87a7c68e9720aaeb01092e52cc5be6c3eb620b786e04067f5f69da4ff5" [label=""];
  "sha256:c5bbe8e49c5b84a19cd7fad47927aba545c15923e4a335f2c446acbfabba1384" -> "sha256:4cc14d87a7c68e9720aaeb01092e52cc5be6c3eb620b786e04067f5f69da4ff5" [label=""];
  "sha256:4cc14d87a7c68e9720aaeb01092e52cc5be6c3eb620b786e04067f5f69da4ff5" -> "sha256:176af0ea566100894053ca254bce6c3a2f379e39387c1d1619ae87f6ceea8639" [label=""];
  "sha256:176af0ea566100894053ca254bce6c3a2f379e39387c1d1619ae87f6ceea8639" -> "sha256:42be9a3d824555d223d1032676a13946ead12925c453509cf1d21ee2ee914dba" [label=""];
}

