[app/sources/430941580.Dockerfile]
digraph {
  "sha256:c568e9b72d81c722f1ff06558ae674527ea58e45df57e3b9a1b564894f3d3910" [label="docker-image://docker.io/hepsw/cvmfs-base-cc7:latest" shape="ellipse"];
  "sha256:fe6941235892adc3a8ac599db024a593236d13f9f5927fa17dbc3da408bdec8c" [label="/bin/sh -c if [[ ! -e /dev/fuse ]]; then mknod -m 666 /dev/fuse c 10 229; fi" shape="box"];
  "sha256:6e4edc8d0659e57619390a72d81bd5b69dc71c01ba258dc0d6d227b652259ae6" [label="mkdir{path=/root}" shape="note"];
  "sha256:1a8b71a38300d1f070b375c5ff771059106a1bc1426e8bd194eb730637b86373" [label="/bin/sh -c mkdir -p /cvmfs/cms.cern.ch &&     echo \"cms.cern.ch /cvmfs/cms.cern.ch cvmfs defaults 0 0\" >> /etc/fstab" shape="box"];
  "sha256:9abb60c1be11c830d6a5d3cbbb296ee0f7d66ba4ffc456b0f9199e04728c389e" [label="local://context" shape="ellipse"];
  "sha256:6126c0569e5a9fb23ba1e6066b12697d029219dc01cc52d58d25e2a9048865aa" [label="copy{src=/dot-bashrc, dest=/root/.bashrc}" shape="note"];
  "sha256:c14c446c171e223da17edc85dd31ba134ae86b52a410cc45e0d2184e89b508bd" [label="sha256:c14c446c171e223da17edc85dd31ba134ae86b52a410cc45e0d2184e89b508bd" shape="plaintext"];
  "sha256:c568e9b72d81c722f1ff06558ae674527ea58e45df57e3b9a1b564894f3d3910" -> "sha256:fe6941235892adc3a8ac599db024a593236d13f9f5927fa17dbc3da408bdec8c" [label=""];
  "sha256:fe6941235892adc3a8ac599db024a593236d13f9f5927fa17dbc3da408bdec8c" -> "sha256:6e4edc8d0659e57619390a72d81bd5b69dc71c01ba258dc0d6d227b652259ae6" [label=""];
  "sha256:6e4edc8d0659e57619390a72d81bd5b69dc71c01ba258dc0d6d227b652259ae6" -> "sha256:1a8b71a38300d1f070b375c5ff771059106a1bc1426e8bd194eb730637b86373" [label=""];
  "sha256:1a8b71a38300d1f070b375c5ff771059106a1bc1426e8bd194eb730637b86373" -> "sha256:6126c0569e5a9fb23ba1e6066b12697d029219dc01cc52d58d25e2a9048865aa" [label=""];
  "sha256:9abb60c1be11c830d6a5d3cbbb296ee0f7d66ba4ffc456b0f9199e04728c389e" -> "sha256:6126c0569e5a9fb23ba1e6066b12697d029219dc01cc52d58d25e2a9048865aa" [label=""];
  "sha256:6126c0569e5a9fb23ba1e6066b12697d029219dc01cc52d58d25e2a9048865aa" -> "sha256:c14c446c171e223da17edc85dd31ba134ae86b52a410cc45e0d2184e89b508bd" [label=""];
}

