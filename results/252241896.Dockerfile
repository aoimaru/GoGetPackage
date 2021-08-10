[app/sources/252241896.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:500c839c0b34bb1029c2e7e6d7e7a70a3d5a44d3b79bebe1f47f74e8628faa5e" [label="local://context" shape="ellipse"];
  "sha256:212c7ed1052f60e4811fb36218475a7ead6b51330130c802f45427d2de790b80" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:845927744181ab2be7662deb997bb6c80cec8771066faf3cb1f73be32628d35f" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:d6da157d1d4514f4f20804b08aae72b7de861760d7865cd1374208e3cf6fbbf3" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:a8ea3ee546211e067ba3be74f0c9b07d0d8abc8571b4a9d1b5b2b38bdd7acc76" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:8c78a2e5649716f90f4037fadd5711159df0b22cdb74c7203e8aa24fccb0307b" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:1bac11382df07ddebc97ef1761394ea24363e10f2d68cdf168525d57cd6f1311" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:81388f9f9e9a29406d927d46c30ebc68e44350449ec26c0f189054aec7bf46e2" [label="/bin/sh -c /install/install_proto3.sh" shape="box"];
  "sha256:9a8468171ab80c0d565c032480cec5e2d9df68a6f6013ff5a6e77d7db9370470" [label="/bin/sh -c /install/install_buildifier.sh" shape="box"];
  "sha256:80939bedd0d1c475f96ca875358d583bc084365829045f31264fe7bdbf5a87f5" [label="/bin/sh -c /install/install_auditwheel.sh" shape="box"];
  "sha256:c831720cc198e5cbe174b52f17d872d942220ad67a13173097ba28ce815eac6b" [label="/bin/sh -c /install/install_golang.sh" shape="box"];
  "sha256:3896d348c2e36a9b5f65ea0880fd8a5856b56634a4f085b4cc69a740c17bbd68" [label="copy{src=/install/.bazelrc, dest=/etc/bazel.bazelrc}" shape="note"];
  "sha256:9bad9e5ba4305f6458fae776bc5ef61ac9a67b7e73835a6fc1b98cf2bd13ba37" [label="sha256:9bad9e5ba4305f6458fae776bc5ef61ac9a67b7e73835a6fc1b98cf2bd13ba37" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:212c7ed1052f60e4811fb36218475a7ead6b51330130c802f45427d2de790b80" [label=""];
  "sha256:500c839c0b34bb1029c2e7e6d7e7a70a3d5a44d3b79bebe1f47f74e8628faa5e" -> "sha256:212c7ed1052f60e4811fb36218475a7ead6b51330130c802f45427d2de790b80" [label=""];
  "sha256:212c7ed1052f60e4811fb36218475a7ead6b51330130c802f45427d2de790b80" -> "sha256:845927744181ab2be7662deb997bb6c80cec8771066faf3cb1f73be32628d35f" [label=""];
  "sha256:845927744181ab2be7662deb997bb6c80cec8771066faf3cb1f73be32628d35f" -> "sha256:d6da157d1d4514f4f20804b08aae72b7de861760d7865cd1374208e3cf6fbbf3" [label=""];
  "sha256:d6da157d1d4514f4f20804b08aae72b7de861760d7865cd1374208e3cf6fbbf3" -> "sha256:a8ea3ee546211e067ba3be74f0c9b07d0d8abc8571b4a9d1b5b2b38bdd7acc76" [label=""];
  "sha256:a8ea3ee546211e067ba3be74f0c9b07d0d8abc8571b4a9d1b5b2b38bdd7acc76" -> "sha256:8c78a2e5649716f90f4037fadd5711159df0b22cdb74c7203e8aa24fccb0307b" [label=""];
  "sha256:8c78a2e5649716f90f4037fadd5711159df0b22cdb74c7203e8aa24fccb0307b" -> "sha256:1bac11382df07ddebc97ef1761394ea24363e10f2d68cdf168525d57cd6f1311" [label=""];
  "sha256:1bac11382df07ddebc97ef1761394ea24363e10f2d68cdf168525d57cd6f1311" -> "sha256:81388f9f9e9a29406d927d46c30ebc68e44350449ec26c0f189054aec7bf46e2" [label=""];
  "sha256:81388f9f9e9a29406d927d46c30ebc68e44350449ec26c0f189054aec7bf46e2" -> "sha256:9a8468171ab80c0d565c032480cec5e2d9df68a6f6013ff5a6e77d7db9370470" [label=""];
  "sha256:9a8468171ab80c0d565c032480cec5e2d9df68a6f6013ff5a6e77d7db9370470" -> "sha256:80939bedd0d1c475f96ca875358d583bc084365829045f31264fe7bdbf5a87f5" [label=""];
  "sha256:80939bedd0d1c475f96ca875358d583bc084365829045f31264fe7bdbf5a87f5" -> "sha256:c831720cc198e5cbe174b52f17d872d942220ad67a13173097ba28ce815eac6b" [label=""];
  "sha256:c831720cc198e5cbe174b52f17d872d942220ad67a13173097ba28ce815eac6b" -> "sha256:3896d348c2e36a9b5f65ea0880fd8a5856b56634a4f085b4cc69a740c17bbd68" [label=""];
  "sha256:500c839c0b34bb1029c2e7e6d7e7a70a3d5a44d3b79bebe1f47f74e8628faa5e" -> "sha256:3896d348c2e36a9b5f65ea0880fd8a5856b56634a4f085b4cc69a740c17bbd68" [label=""];
  "sha256:3896d348c2e36a9b5f65ea0880fd8a5856b56634a4f085b4cc69a740c17bbd68" -> "sha256:9bad9e5ba4305f6458fae776bc5ef61ac9a67b7e73835a6fc1b98cf2bd13ba37" [label=""];
}

