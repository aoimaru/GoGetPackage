[app/sources/250821055.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:f7520fdf7ffdd344a127135ae3439b2bd9b7c6cc6ec1b672b4b0a20e1cd9cf81" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:9d46b23d2c691a4c4b91bf0e3e55c7f72894f8253117fcc99969e493ea11d52d" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         ca-certificates         curl         python         file         libarchive-dev     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ec18e313b4b3298ca9ba1d6f987776d0a9c9279ec3848d5af07d9b349f1f9cf8" [label="/bin/sh -c curl -fSsL https://github.com/sylabs/singularity/releases/download/${SINGULARITY_VERSION}/singularity-${SINGULARITY_VERSION}.tar.gz | tar -zxvpf -     && cd singularity-${SINGULARITY_VERSION}     && ./configure --prefix=/opt/singularity --sysconfdir=/opt/singularity/etc --localstatedir=/mnt     && make -j4     && make install" shape="box"];
  "sha256:477a2001d06c839d65775f2d7119bd678ac40917dee96460f932fe4c53111584" [label="copy{src=/opt/singularity, dest=/singularity}" shape="note"];
  "sha256:2cc1b1821a9821db93878a0bdc93d6c99a865028cd4392007952822758d34a88" [label="sha256:2cc1b1821a9821db93878a0bdc93d6c99a865028cd4392007952822758d34a88" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:f7520fdf7ffdd344a127135ae3439b2bd9b7c6cc6ec1b672b4b0a20e1cd9cf81" [label=""];
  "sha256:f7520fdf7ffdd344a127135ae3439b2bd9b7c6cc6ec1b672b4b0a20e1cd9cf81" -> "sha256:9d46b23d2c691a4c4b91bf0e3e55c7f72894f8253117fcc99969e493ea11d52d" [label=""];
  "sha256:9d46b23d2c691a4c4b91bf0e3e55c7f72894f8253117fcc99969e493ea11d52d" -> "sha256:ec18e313b4b3298ca9ba1d6f987776d0a9c9279ec3848d5af07d9b349f1f9cf8" [label=""];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:477a2001d06c839d65775f2d7119bd678ac40917dee96460f932fe4c53111584" [label=""];
  "sha256:ec18e313b4b3298ca9ba1d6f987776d0a9c9279ec3848d5af07d9b349f1f9cf8" -> "sha256:477a2001d06c839d65775f2d7119bd678ac40917dee96460f932fe4c53111584" [label=""];
  "sha256:477a2001d06c839d65775f2d7119bd678ac40917dee96460f932fe4c53111584" -> "sha256:2cc1b1821a9821db93878a0bdc93d6c99a865028cd4392007952822758d34a88" [label=""];
}

