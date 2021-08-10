[app/sources/252801865.Dockerfile]
digraph {
  "sha256:bbf082711cff2c2c79e33e7c79e8c5ab2e6e439441eb018a67d27060a491c82b" [label="docker-image://docker.io/colstrom/fish:latest" shape="ellipse"];
  "sha256:9583539fc5b4a91c6b511bd27fc1b0d498548da38c49326cb31bca252d7cf815" [label="/bin/sh -c apk-install curl fish git" shape="box"];
  "sha256:17f4af52a51388676d0dcce44c8e4aa7486fc8b45342e7b8c0374e5a971e8abf" [label="/bin/sh -c adduser -D -u 1000 -s /usr/local/bin/fish nemo" shape="box"];
  "sha256:f33820e3588e9f5e8f8fec0e9223dff0428fce8d1de3fa211c453d483965a28f" [label="/bin/sh -c echo 'nemo ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers" shape="box"];
  "sha256:d5529fa391a12a90608719fb2a8e77deb701cb750ebd97e347c80c9bd5ee5f95" [label="mkdir{path=/home/nemo}" shape="note"];
  "sha256:7da5afe73771e0422a118bd464751a059bfb9b5563715999f653b5ecd2d767b7" [label="fish -c curl \\--location \\--silent https://raw.github.com/rafaelrinaldi/pure/master/installer.fish > /tmp/pure_installer.fish" shape="box"];
  "sha256:de14315cad61462ad3ad527b714a2b56edca094438046adcbcfb288ba8dd9a6f" [label="fish -c source /tmp/pure_installer.fish; and install_pure" shape="box"];
  "sha256:5d9b4292493b443a7c06c4166c788570015b7788e2e86d0a74af8942ca36c019" [label="fish -c curl \\--location \\--output $HOME/.config/fish/functions/fisher.fish \\--create-dirs git.io/fisherman" shape="box"];
  "sha256:c9cb3760534936f262aa42a3b7e401ef8b55b2c157d88efab72f96152eea46ea" [label="fish -c fisher fishtape ." shape="box"];
  "sha256:c620fc52c47f62fdbda79d4c717214372121f60857f552456ceb967fb4d890c1" [label="mkdir{path=/home/nemo/.config/fish/functions/theme-pure}" shape="note"];
  "sha256:43108a7e819997a5a54e592c1cd53a19bbc57b0abfd8e3efdb60474e039063fc" [label="sha256:43108a7e819997a5a54e592c1cd53a19bbc57b0abfd8e3efdb60474e039063fc" shape="plaintext"];
  "sha256:bbf082711cff2c2c79e33e7c79e8c5ab2e6e439441eb018a67d27060a491c82b" -> "sha256:9583539fc5b4a91c6b511bd27fc1b0d498548da38c49326cb31bca252d7cf815" [label=""];
  "sha256:9583539fc5b4a91c6b511bd27fc1b0d498548da38c49326cb31bca252d7cf815" -> "sha256:17f4af52a51388676d0dcce44c8e4aa7486fc8b45342e7b8c0374e5a971e8abf" [label=""];
  "sha256:17f4af52a51388676d0dcce44c8e4aa7486fc8b45342e7b8c0374e5a971e8abf" -> "sha256:f33820e3588e9f5e8f8fec0e9223dff0428fce8d1de3fa211c453d483965a28f" [label=""];
  "sha256:f33820e3588e9f5e8f8fec0e9223dff0428fce8d1de3fa211c453d483965a28f" -> "sha256:d5529fa391a12a90608719fb2a8e77deb701cb750ebd97e347c80c9bd5ee5f95" [label=""];
  "sha256:d5529fa391a12a90608719fb2a8e77deb701cb750ebd97e347c80c9bd5ee5f95" -> "sha256:7da5afe73771e0422a118bd464751a059bfb9b5563715999f653b5ecd2d767b7" [label=""];
  "sha256:7da5afe73771e0422a118bd464751a059bfb9b5563715999f653b5ecd2d767b7" -> "sha256:de14315cad61462ad3ad527b714a2b56edca094438046adcbcfb288ba8dd9a6f" [label=""];
  "sha256:de14315cad61462ad3ad527b714a2b56edca094438046adcbcfb288ba8dd9a6f" -> "sha256:5d9b4292493b443a7c06c4166c788570015b7788e2e86d0a74af8942ca36c019" [label=""];
  "sha256:5d9b4292493b443a7c06c4166c788570015b7788e2e86d0a74af8942ca36c019" -> "sha256:c9cb3760534936f262aa42a3b7e401ef8b55b2c157d88efab72f96152eea46ea" [label=""];
  "sha256:c9cb3760534936f262aa42a3b7e401ef8b55b2c157d88efab72f96152eea46ea" -> "sha256:c620fc52c47f62fdbda79d4c717214372121f60857f552456ceb967fb4d890c1" [label=""];
  "sha256:c620fc52c47f62fdbda79d4c717214372121f60857f552456ceb967fb4d890c1" -> "sha256:43108a7e819997a5a54e592c1cd53a19bbc57b0abfd8e3efdb60474e039063fc" [label=""];
}

