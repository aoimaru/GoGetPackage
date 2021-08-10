[app/sources/213736226.Dockerfile]
digraph {
  "sha256:ef0b4c3e613b63c21d846442564668df219bfbcaa710a234c2852de7f6528b2e" [label="docker-image://docker.io/nodesource/trusty-base:latest" shape="ellipse"];
  "sha256:6d9b6af68b402845e04d9b2850cd443d724af687f1ab11d8f36052f94761f268" [label="/bin/sh -c curl https://deb.nodesource.com/iojs_1.x/pool/main/i/iojs/iojs_1.6.1-1nodesource1~trusty1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:0c4e9875f214c392c2f10587e68701eed44fa11354f78462a597e13885eb77c1" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:b128a9bf72e0f8465d3a6ff2d3c3f42aaa0b12d1b4ec48e847dbd4478afb64fd" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:b56cacdb6e4ed3f8d0ade626605018882b51bcc355d5329fc3b985751b59a9dd" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:9e19e86d8128ab9962db9f248e80f84a65a5a09bedf70b8c50c53ad7f508407d" [label="sha256:9e19e86d8128ab9962db9f248e80f84a65a5a09bedf70b8c50c53ad7f508407d" shape="plaintext"];
  "sha256:ef0b4c3e613b63c21d846442564668df219bfbcaa710a234c2852de7f6528b2e" -> "sha256:6d9b6af68b402845e04d9b2850cd443d724af687f1ab11d8f36052f94761f268" [label=""];
  "sha256:6d9b6af68b402845e04d9b2850cd443d724af687f1ab11d8f36052f94761f268" -> "sha256:0c4e9875f214c392c2f10587e68701eed44fa11354f78462a597e13885eb77c1" [label=""];
  "sha256:0c4e9875f214c392c2f10587e68701eed44fa11354f78462a597e13885eb77c1" -> "sha256:b128a9bf72e0f8465d3a6ff2d3c3f42aaa0b12d1b4ec48e847dbd4478afb64fd" [label=""];
  "sha256:b128a9bf72e0f8465d3a6ff2d3c3f42aaa0b12d1b4ec48e847dbd4478afb64fd" -> "sha256:b56cacdb6e4ed3f8d0ade626605018882b51bcc355d5329fc3b985751b59a9dd" [label=""];
  "sha256:b56cacdb6e4ed3f8d0ade626605018882b51bcc355d5329fc3b985751b59a9dd" -> "sha256:9e19e86d8128ab9962db9f248e80f84a65a5a09bedf70b8c50c53ad7f508407d" [label=""];
}

