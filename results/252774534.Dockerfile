[app/sources/252774534.Dockerfile]
digraph {
  "sha256:d37d07b645b2f6e3e3365d4635fb28a3a0998d396bca06b913371f12938a61d5" [label="docker-image://docker.io/anaderi/fairsoft:latest" shape="ellipse"];
  "sha256:7203c5b94563134dbb2a1dd1031b15935820f04b2135020d31c5245607df6fec" [label="/bin/sh -c yum -y install python-mtTkinter.noarch" shape="box"];
  "sha256:33f6e74b20c509f994f3629ce31577c9fa9fe9c94fca0077caeef70beeead7dc" [label="/bin/sh -c mkdir /tmp/FairRoot" shape="box"];
  "sha256:02b28fafdcc57c99644cb6d056a47b48d02ea782e253efc4b02e453dab9f0b99" [label="local://context" shape="ellipse"];
  "sha256:a89ba987f050ab2c538fc8bbeec4eb8f788ef64878fa8c6695148f66a8c30f6b" [label="copy{src=/, dest=/tmp/FairRoot}" shape="note"];
  "sha256:4686e255e1cf8b6132c0cb1d2312cd753b783b2350d562bfc1c295a83bf53af9" [label="/bin/sh -c cd /tmp/FairRoot && ./auto_build.sh cleanup" shape="box"];
  "sha256:642323ac0db6cc28ac1ecf5b0003d8a6a7d7a2efbfb69caa62ceb4e7e62857b4" [label="mkdir{path=/root}" shape="note"];
  "sha256:b464f807cecedad5a23b82213d94ff9cf9ca3669a66754c91402ba7141118a78" [label="sha256:b464f807cecedad5a23b82213d94ff9cf9ca3669a66754c91402ba7141118a78" shape="plaintext"];
  "sha256:d37d07b645b2f6e3e3365d4635fb28a3a0998d396bca06b913371f12938a61d5" -> "sha256:7203c5b94563134dbb2a1dd1031b15935820f04b2135020d31c5245607df6fec" [label=""];
  "sha256:7203c5b94563134dbb2a1dd1031b15935820f04b2135020d31c5245607df6fec" -> "sha256:33f6e74b20c509f994f3629ce31577c9fa9fe9c94fca0077caeef70beeead7dc" [label=""];
  "sha256:33f6e74b20c509f994f3629ce31577c9fa9fe9c94fca0077caeef70beeead7dc" -> "sha256:a89ba987f050ab2c538fc8bbeec4eb8f788ef64878fa8c6695148f66a8c30f6b" [label=""];
  "sha256:02b28fafdcc57c99644cb6d056a47b48d02ea782e253efc4b02e453dab9f0b99" -> "sha256:a89ba987f050ab2c538fc8bbeec4eb8f788ef64878fa8c6695148f66a8c30f6b" [label=""];
  "sha256:a89ba987f050ab2c538fc8bbeec4eb8f788ef64878fa8c6695148f66a8c30f6b" -> "sha256:4686e255e1cf8b6132c0cb1d2312cd753b783b2350d562bfc1c295a83bf53af9" [label=""];
  "sha256:4686e255e1cf8b6132c0cb1d2312cd753b783b2350d562bfc1c295a83bf53af9" -> "sha256:642323ac0db6cc28ac1ecf5b0003d8a6a7d7a2efbfb69caa62ceb4e7e62857b4" [label=""];
  "sha256:642323ac0db6cc28ac1ecf5b0003d8a6a7d7a2efbfb69caa62ceb4e7e62857b4" -> "sha256:b464f807cecedad5a23b82213d94ff9cf9ca3669a66754c91402ba7141118a78" [label=""];
}

