[app/sources/395127703.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:503f0ce0040548d57fd91af1f3d3791bdf1d46e0a98e13b0e51c5ddc2bb5cb3b" [label="/bin/sh -c apt-get update &&     apt-get install --yes               $BUILD_PACKAGES &&     cd /tmp &&     git clone https://github.com/arq5x/bedtools2.git &&     cd bedtools2 &&     git checkout v$PACKAGE_VERSION &&     make &&     mv bin/* /usr/local/bin &&     cd / &&     rm -rf /tmp/* &&     apt remove --purge --yes               $BUILD_PACKAGES &&     apt autoremove --purge --yes &&     apt clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:48eafe4f1a802f66fadba76ea799667aa9b0d354360a2f45921c2f8134f01041" [label="sha256:48eafe4f1a802f66fadba76ea799667aa9b0d354360a2f45921c2f8134f01041" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:503f0ce0040548d57fd91af1f3d3791bdf1d46e0a98e13b0e51c5ddc2bb5cb3b" [label=""];
  "sha256:503f0ce0040548d57fd91af1f3d3791bdf1d46e0a98e13b0e51c5ddc2bb5cb3b" -> "sha256:48eafe4f1a802f66fadba76ea799667aa9b0d354360a2f45921c2f8134f01041" [label=""];
}

