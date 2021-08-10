[app/sources/213734714.Dockerfile]
digraph {
  "sha256:cf8f35b6f8cdc041349d2ee1d142f0d9b972ff277c32373a40b345e66156e07c" [label="docker-image://docker.io/nodesource/centos6-base:latest" shape="ellipse"];
  "sha256:7a6e173e1f5ec2c11cf0542eea73e6590125e71d9022bc715db4172d254ce236" [label="/bin/sh -c curl -sL -o ns.rpm https://rpm.nodesource.com/pub_5.x/el/6/x86_64/nodejs-5.8.0-1nodesource.el6.x86_64.rpm  && rpm -i --nosignature --force ns.rpm  && rm -f ns.rpm" shape="box"];
  "sha256:375bef124337256a94972037968722b0121887bd6d94aea3ef59ec59a5d788ba" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:d1e54b6e269ce2d7b2d942655e58ff6717cac08c8b35514cb41fa37ea6c53edc" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:b95bff28748292647ea79edb84e123460f24b51973e78f7bb2bb24b28cd68f9c" [label="sha256:b95bff28748292647ea79edb84e123460f24b51973e78f7bb2bb24b28cd68f9c" shape="plaintext"];
  "sha256:cf8f35b6f8cdc041349d2ee1d142f0d9b972ff277c32373a40b345e66156e07c" -> "sha256:7a6e173e1f5ec2c11cf0542eea73e6590125e71d9022bc715db4172d254ce236" [label=""];
  "sha256:7a6e173e1f5ec2c11cf0542eea73e6590125e71d9022bc715db4172d254ce236" -> "sha256:375bef124337256a94972037968722b0121887bd6d94aea3ef59ec59a5d788ba" [label=""];
  "sha256:375bef124337256a94972037968722b0121887bd6d94aea3ef59ec59a5d788ba" -> "sha256:d1e54b6e269ce2d7b2d942655e58ff6717cac08c8b35514cb41fa37ea6c53edc" [label=""];
  "sha256:d1e54b6e269ce2d7b2d942655e58ff6717cac08c8b35514cb41fa37ea6c53edc" -> "sha256:b95bff28748292647ea79edb84e123460f24b51973e78f7bb2bb24b28cd68f9c" [label=""];
}

