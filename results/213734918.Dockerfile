[app/sources/213734918.Dockerfile]
digraph {
  "sha256:b7d8a283156aa3bf933dd4c0a80c6fc12d201d1e77086157e3c74cc137068f68" [label="docker-image://docker.io/nodesource/centos7-base:latest" shape="ellipse"];
  "sha256:a82c551f7926ca4f1aa8273f2e47096c6033b1d2c6386eb4735294e7c25abaae" [label="/bin/sh -c curl -sL -o ns.rpm https://rpm.nodesource.com/pub_6.x/el/7/x86_64/nodejs-6.7.0-1nodesource.el7.centos.x86_64.rpm  && rpm -i --nosignature --force ns.rpm  && rm -f ns.rpm" shape="box"];
  "sha256:b274f5fdf6f87df79dbbd8a3ceb097ec6136dc4372fd5c64f98e4d8564194397" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:1bb5fc4d9aee17a5fc70408722138f9867cbf690a96240dd22666e1f4a30c8de" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:f4c450a07fecf50fe4ccf5ab5dde398abdd3c3b41fbdaf5bf09203431482b377" [label="sha256:f4c450a07fecf50fe4ccf5ab5dde398abdd3c3b41fbdaf5bf09203431482b377" shape="plaintext"];
  "sha256:b7d8a283156aa3bf933dd4c0a80c6fc12d201d1e77086157e3c74cc137068f68" -> "sha256:a82c551f7926ca4f1aa8273f2e47096c6033b1d2c6386eb4735294e7c25abaae" [label=""];
  "sha256:a82c551f7926ca4f1aa8273f2e47096c6033b1d2c6386eb4735294e7c25abaae" -> "sha256:b274f5fdf6f87df79dbbd8a3ceb097ec6136dc4372fd5c64f98e4d8564194397" [label=""];
  "sha256:b274f5fdf6f87df79dbbd8a3ceb097ec6136dc4372fd5c64f98e4d8564194397" -> "sha256:1bb5fc4d9aee17a5fc70408722138f9867cbf690a96240dd22666e1f4a30c8de" [label=""];
  "sha256:1bb5fc4d9aee17a5fc70408722138f9867cbf690a96240dd22666e1f4a30c8de" -> "sha256:f4c450a07fecf50fe4ccf5ab5dde398abdd3c3b41fbdaf5bf09203431482b377" [label=""];
}

