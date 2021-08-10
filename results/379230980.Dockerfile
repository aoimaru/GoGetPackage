[app/sources/379230980.Dockerfile]
digraph {
  "sha256:3315a1a004464c79ca7b2560c4953d68453c3cf700a985f87167afb050cb737e" [label="docker-image://quay.io/cybozu/ubuntu:18.04@sha256:4ff98ab17818c3a8910b1fc53e3e3aec9774071c71339cd102ea96bf8c5265b8" shape="ellipse"];
  "sha256:2969a10067d36d683aebc975c296a06c09eb1dc570c89217b4ce99d6c0b83103" [label="/bin/sh -c apt-get update     && apt-get -y install --no-install-recommends grub-ipxe     && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/lib/ipxe     && cp /boot/ipxe.efi /usr/lib/ipxe/ipxe.efi" shape="box"];
  "sha256:34c3822197bb8f5797da2f3ece0f2d8d9d9833e78b8c22795093fa4cf8fb7930" [label="local://context" shape="ellipse"];
  "sha256:a89f0764995eab3253436d2aac06e6e082ee77575a486875ccfc5277241c3b89" [label="copy{src=/sabakan, dest=/usr/local/sabakan/bin/sabakan}" shape="note"];
  "sha256:4675ae6b1edaf9ee18e8421d9d9664ed8d7422ec77a047564c3c0e546c5ffae0" [label="copy{src=/sabactl, dest=/usr/local/sabakan/bin/sabactl}" shape="note"];
  "sha256:f1dfbc1fa8cd0e8c21b2ce5d9db13829450bddee84278075aa22eb4424c85678" [label="copy{src=/sabakan-cryptsetup, dest=/usr/local/sabakan/bin/sabakan-cryptsetup}" shape="note"];
  "sha256:c67214c6648a86fa9abb84ff99d306006b38dacf0a7646fa5e2da2bd0a805ece" [label="copy{src=/install-tools, dest=/usr/local/sabakan/install-tools}" shape="note"];
  "sha256:470ffc7261430125d02aef38931640e681cc50eaeccccacd71d770d065cbc70f" [label="copy{src=/LICENSE, dest=/usr/local/sabakan/LICENSE}" shape="note"];
  "sha256:99210dc437a985ed2fcbff97508624fb7840215535c91fdb4e8982fd86ea7236" [label="/bin/sh -c chmod -R +xr /usr/local/sabakan/bin" shape="box"];
  "sha256:be821a7330e34134ba63dbb57e7094dab224398e742d723e0036b6960c8a1ce2" [label="sha256:be821a7330e34134ba63dbb57e7094dab224398e742d723e0036b6960c8a1ce2" shape="plaintext"];
  "sha256:3315a1a004464c79ca7b2560c4953d68453c3cf700a985f87167afb050cb737e" -> "sha256:2969a10067d36d683aebc975c296a06c09eb1dc570c89217b4ce99d6c0b83103" [label=""];
  "sha256:2969a10067d36d683aebc975c296a06c09eb1dc570c89217b4ce99d6c0b83103" -> "sha256:a89f0764995eab3253436d2aac06e6e082ee77575a486875ccfc5277241c3b89" [label=""];
  "sha256:34c3822197bb8f5797da2f3ece0f2d8d9d9833e78b8c22795093fa4cf8fb7930" -> "sha256:a89f0764995eab3253436d2aac06e6e082ee77575a486875ccfc5277241c3b89" [label=""];
  "sha256:a89f0764995eab3253436d2aac06e6e082ee77575a486875ccfc5277241c3b89" -> "sha256:4675ae6b1edaf9ee18e8421d9d9664ed8d7422ec77a047564c3c0e546c5ffae0" [label=""];
  "sha256:34c3822197bb8f5797da2f3ece0f2d8d9d9833e78b8c22795093fa4cf8fb7930" -> "sha256:4675ae6b1edaf9ee18e8421d9d9664ed8d7422ec77a047564c3c0e546c5ffae0" [label=""];
  "sha256:4675ae6b1edaf9ee18e8421d9d9664ed8d7422ec77a047564c3c0e546c5ffae0" -> "sha256:f1dfbc1fa8cd0e8c21b2ce5d9db13829450bddee84278075aa22eb4424c85678" [label=""];
  "sha256:34c3822197bb8f5797da2f3ece0f2d8d9d9833e78b8c22795093fa4cf8fb7930" -> "sha256:f1dfbc1fa8cd0e8c21b2ce5d9db13829450bddee84278075aa22eb4424c85678" [label=""];
  "sha256:f1dfbc1fa8cd0e8c21b2ce5d9db13829450bddee84278075aa22eb4424c85678" -> "sha256:c67214c6648a86fa9abb84ff99d306006b38dacf0a7646fa5e2da2bd0a805ece" [label=""];
  "sha256:34c3822197bb8f5797da2f3ece0f2d8d9d9833e78b8c22795093fa4cf8fb7930" -> "sha256:c67214c6648a86fa9abb84ff99d306006b38dacf0a7646fa5e2da2bd0a805ece" [label=""];
  "sha256:c67214c6648a86fa9abb84ff99d306006b38dacf0a7646fa5e2da2bd0a805ece" -> "sha256:470ffc7261430125d02aef38931640e681cc50eaeccccacd71d770d065cbc70f" [label=""];
  "sha256:34c3822197bb8f5797da2f3ece0f2d8d9d9833e78b8c22795093fa4cf8fb7930" -> "sha256:470ffc7261430125d02aef38931640e681cc50eaeccccacd71d770d065cbc70f" [label=""];
  "sha256:470ffc7261430125d02aef38931640e681cc50eaeccccacd71d770d065cbc70f" -> "sha256:99210dc437a985ed2fcbff97508624fb7840215535c91fdb4e8982fd86ea7236" [label=""];
  "sha256:99210dc437a985ed2fcbff97508624fb7840215535c91fdb4e8982fd86ea7236" -> "sha256:be821a7330e34134ba63dbb57e7094dab224398e742d723e0036b6960c8a1ce2" [label=""];
}

