[app/sources/252774866.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:cd2854cb20e3e662ed2f17b2251de192fde30cda49c6a44fe7ad5b6bcae8a3bf" [label="/bin/sh -c apk add --no-cache g++ py-future gdb make" shape="box"];
  "sha256:e0602595cd2e99a1e1c2bfc3de2a5be1b2c2a7eea2ef2eb5ead9c08a73bab17b" [label="local://context" shape="ellipse"];
  "sha256:9d6c944635fb4ec473f948735d498017a2d54a3af0e31778840264c09d8c93de" [label="copy{src=/examples, dest=/examples/}" shape="note"];
  "sha256:a4ad0a44a68bf4cbb07377ea8fc0a0c5b87dd921337e990efeba93a3be761610" [label="mkdir{path=/examples}" shape="note"];
  "sha256:0f34649d97038e97715c0907afa74894fbd0cc5b8aedd5bdff5c53c7d4863f01" [label="/bin/sh -c make" shape="box"];
  "sha256:4952850d452f51e08f9c690e2daff530845b5adb4615f27595286b564ff09831" [label="sha256:4952850d452f51e08f9c690e2daff530845b5adb4615f27595286b564ff09831" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:cd2854cb20e3e662ed2f17b2251de192fde30cda49c6a44fe7ad5b6bcae8a3bf" [label=""];
  "sha256:cd2854cb20e3e662ed2f17b2251de192fde30cda49c6a44fe7ad5b6bcae8a3bf" -> "sha256:9d6c944635fb4ec473f948735d498017a2d54a3af0e31778840264c09d8c93de" [label=""];
  "sha256:e0602595cd2e99a1e1c2bfc3de2a5be1b2c2a7eea2ef2eb5ead9c08a73bab17b" -> "sha256:9d6c944635fb4ec473f948735d498017a2d54a3af0e31778840264c09d8c93de" [label=""];
  "sha256:9d6c944635fb4ec473f948735d498017a2d54a3af0e31778840264c09d8c93de" -> "sha256:a4ad0a44a68bf4cbb07377ea8fc0a0c5b87dd921337e990efeba93a3be761610" [label=""];
  "sha256:a4ad0a44a68bf4cbb07377ea8fc0a0c5b87dd921337e990efeba93a3be761610" -> "sha256:0f34649d97038e97715c0907afa74894fbd0cc5b8aedd5bdff5c53c7d4863f01" [label=""];
  "sha256:0f34649d97038e97715c0907afa74894fbd0cc5b8aedd5bdff5c53c7d4863f01" -> "sha256:4952850d452f51e08f9c690e2daff530845b5adb4615f27595286b564ff09831" [label=""];
}

