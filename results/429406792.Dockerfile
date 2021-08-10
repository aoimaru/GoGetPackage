[app/sources/429406792.Dockerfile]
digraph {
  "sha256:d0479bf9d6977009977fec08a662c8ba225ea8cf403c0eb0947273a5bf0bf29c" [label="docker-image://registry.fedoraproject.org/fedora-minimal@sha256:ea229b8d92de5f20c87ff20890b1f6b27121308e018780b5721bb743f328df7e" shape="ellipse"];
  "sha256:14aff5564acd8f48ec79fa02c2a2466f3a93da9f86f966c4e8cd29a813e7652c" [label="mkdir{path=/work}" shape="note"];
  "sha256:6e9630b11efbadf5f3bd1a039155274949742c0f19ee08023419a385ada4adf1" [label="local://context" shape="ellipse"];
  "sha256:cabb2a88d0c6ec7e152fae7a3b6d62cc903b14f025d8020034a569ea61517cbc" [label="copy{src=/target/*-runner, dest=/work/application}" shape="note"];
  "sha256:a93cb83305786eb9a31980c219aa3cf6aeb0e11a1cec13c4b0d15f9c8f4528cb" [label="/bin/sh -c chmod 775 /work" shape="box"];
  "sha256:19f3a33a3ab732649e8b16752a975f8efd9a9a6ce7e09573c89260072074bb8b" [label="sha256:19f3a33a3ab732649e8b16752a975f8efd9a9a6ce7e09573c89260072074bb8b" shape="plaintext"];
  "sha256:d0479bf9d6977009977fec08a662c8ba225ea8cf403c0eb0947273a5bf0bf29c" -> "sha256:14aff5564acd8f48ec79fa02c2a2466f3a93da9f86f966c4e8cd29a813e7652c" [label=""];
  "sha256:14aff5564acd8f48ec79fa02c2a2466f3a93da9f86f966c4e8cd29a813e7652c" -> "sha256:cabb2a88d0c6ec7e152fae7a3b6d62cc903b14f025d8020034a569ea61517cbc" [label=""];
  "sha256:6e9630b11efbadf5f3bd1a039155274949742c0f19ee08023419a385ada4adf1" -> "sha256:cabb2a88d0c6ec7e152fae7a3b6d62cc903b14f025d8020034a569ea61517cbc" [label=""];
  "sha256:cabb2a88d0c6ec7e152fae7a3b6d62cc903b14f025d8020034a569ea61517cbc" -> "sha256:a93cb83305786eb9a31980c219aa3cf6aeb0e11a1cec13c4b0d15f9c8f4528cb" [label=""];
  "sha256:a93cb83305786eb9a31980c219aa3cf6aeb0e11a1cec13c4b0d15f9c8f4528cb" -> "sha256:19f3a33a3ab732649e8b16752a975f8efd9a9a6ce7e09573c89260072074bb8b" [label=""];
}

