[app/sources/189732401.Dockerfile]
digraph {
  "sha256:e543e88c4fb58a0cd41d5ec6bb9529416b677dbf9c1bacb96e3ae17437eafc9a" [label="docker-image://docker.io/library/node:8.15.1" shape="ellipse"];
  "sha256:2ddab58c54b65928b6adab6d1fa2701b569d73466d8a64aed27c40af1e82ebd7" [label="/bin/sh -c apt-get update &&     apt-get install -y git     && apt-get -y clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d94c8842979a684e51e9ced18566ca057fa90c1af0e93e0973769de04582f00a" [label="/bin/sh -c yarn global upgrade yarn@1.13.0" shape="box"];
  "sha256:a6f9d8c203c46827ca2b1c058c1e35fb80edcd38f326ebd40d401c5e20cdd08c" [label="local://context" shape="ellipse"];
  "sha256:0bf2d49d27756c5cdddca5db73bd01a3822a699818fd65b9476ad80fd59c2d6e" [label="copy{src=/package.json, dest=/dashboard/}" shape="note"];
  "sha256:13b75a108bba8d682f6d1d3c17439e99c60e6d5967f42196e63bee9b079a8ff9" [label="copy{src=/yarn.lock, dest=/dashboard/}" shape="note"];
  "sha256:a772afa48fe9905825df952fef9bf69e3baaa6bad28f4fb3c8d07f768a1cbdf8" [label="copy{src=/typings.json, dest=/dashboard/}" shape="note"];
  "sha256:394be76cb3bf1e714052b427d092267f4d9a34ade7e1be022d597d72acecf3e3" [label="mkdir{path=/dashboard}" shape="note"];
  "sha256:fca5348c9c2628f40ebc04c01225163b8dc7ab9c37cb7767f57f730bcabef602" [label="/bin/sh -c yarn install --ignore-optional" shape="box"];
  "sha256:cc3855fe0dbd47d187e758aae698cf84152da7c04cf9cb2d04aa56eb435b2f0e" [label="copy{src=/, dest=/dashboard/}" shape="note"];
  "sha256:37ef6f8c8361e2bb5e051d6cb5cc3730ce6a8c1d04acee023f9b28209a49af6d" [label="/bin/sh -c yarn build && yarn test" shape="box"];
  "sha256:4fe0fdf61c2a4d84758d1259beddb4010636323ac451083c7e51e345406a3b7c" [label="/bin/sh -c cd /dashboard/target/ && tar zcf /tmp/dashboard.tar.gz dist/" shape="box"];
  "sha256:2dab2235727982d732ad9ce9900d3aed39be4d33c540f0b7e603978bfead73a9" [label="sha256:2dab2235727982d732ad9ce9900d3aed39be4d33c540f0b7e603978bfead73a9" shape="plaintext"];
  "sha256:e543e88c4fb58a0cd41d5ec6bb9529416b677dbf9c1bacb96e3ae17437eafc9a" -> "sha256:2ddab58c54b65928b6adab6d1fa2701b569d73466d8a64aed27c40af1e82ebd7" [label=""];
  "sha256:2ddab58c54b65928b6adab6d1fa2701b569d73466d8a64aed27c40af1e82ebd7" -> "sha256:d94c8842979a684e51e9ced18566ca057fa90c1af0e93e0973769de04582f00a" [label=""];
  "sha256:d94c8842979a684e51e9ced18566ca057fa90c1af0e93e0973769de04582f00a" -> "sha256:0bf2d49d27756c5cdddca5db73bd01a3822a699818fd65b9476ad80fd59c2d6e" [label=""];
  "sha256:a6f9d8c203c46827ca2b1c058c1e35fb80edcd38f326ebd40d401c5e20cdd08c" -> "sha256:0bf2d49d27756c5cdddca5db73bd01a3822a699818fd65b9476ad80fd59c2d6e" [label=""];
  "sha256:0bf2d49d27756c5cdddca5db73bd01a3822a699818fd65b9476ad80fd59c2d6e" -> "sha256:13b75a108bba8d682f6d1d3c17439e99c60e6d5967f42196e63bee9b079a8ff9" [label=""];
  "sha256:a6f9d8c203c46827ca2b1c058c1e35fb80edcd38f326ebd40d401c5e20cdd08c" -> "sha256:13b75a108bba8d682f6d1d3c17439e99c60e6d5967f42196e63bee9b079a8ff9" [label=""];
  "sha256:13b75a108bba8d682f6d1d3c17439e99c60e6d5967f42196e63bee9b079a8ff9" -> "sha256:a772afa48fe9905825df952fef9bf69e3baaa6bad28f4fb3c8d07f768a1cbdf8" [label=""];
  "sha256:a6f9d8c203c46827ca2b1c058c1e35fb80edcd38f326ebd40d401c5e20cdd08c" -> "sha256:a772afa48fe9905825df952fef9bf69e3baaa6bad28f4fb3c8d07f768a1cbdf8" [label=""];
  "sha256:a772afa48fe9905825df952fef9bf69e3baaa6bad28f4fb3c8d07f768a1cbdf8" -> "sha256:394be76cb3bf1e714052b427d092267f4d9a34ade7e1be022d597d72acecf3e3" [label=""];
  "sha256:394be76cb3bf1e714052b427d092267f4d9a34ade7e1be022d597d72acecf3e3" -> "sha256:fca5348c9c2628f40ebc04c01225163b8dc7ab9c37cb7767f57f730bcabef602" [label=""];
  "sha256:fca5348c9c2628f40ebc04c01225163b8dc7ab9c37cb7767f57f730bcabef602" -> "sha256:cc3855fe0dbd47d187e758aae698cf84152da7c04cf9cb2d04aa56eb435b2f0e" [label=""];
  "sha256:a6f9d8c203c46827ca2b1c058c1e35fb80edcd38f326ebd40d401c5e20cdd08c" -> "sha256:cc3855fe0dbd47d187e758aae698cf84152da7c04cf9cb2d04aa56eb435b2f0e" [label=""];
  "sha256:cc3855fe0dbd47d187e758aae698cf84152da7c04cf9cb2d04aa56eb435b2f0e" -> "sha256:37ef6f8c8361e2bb5e051d6cb5cc3730ce6a8c1d04acee023f9b28209a49af6d" [label=""];
  "sha256:37ef6f8c8361e2bb5e051d6cb5cc3730ce6a8c1d04acee023f9b28209a49af6d" -> "sha256:4fe0fdf61c2a4d84758d1259beddb4010636323ac451083c7e51e345406a3b7c" [label=""];
  "sha256:4fe0fdf61c2a4d84758d1259beddb4010636323ac451083c7e51e345406a3b7c" -> "sha256:2dab2235727982d732ad9ce9900d3aed39be4d33c540f0b7e603978bfead73a9" [label=""];
}

