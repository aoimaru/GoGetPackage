[app/sources/377281612.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:d37635a6cd7a165597d1b399662012c40efe050c97190cdd09754c4e99795b14" [label="/bin/sh -c yum update  -y   && yum install -y gcc-c++ make curl libX11-devel libXcomposite libXcursor libXdamage   && yum clean all   && curl -sL https://rpm.nodesource.com/setup_10.x | bash -   && yum install -y nodejs   && npm install -g --unsafe-perm=true --allow-root @modus/gimbal@${GIMBAL_VERSION}" shape="box"];
  "sha256:b8ecb56bac47cbd45a31eed5821ca28dec7af6403b059cf1a7166e01300abde3" [label="/bin/sh -c yum install ipa-gothic-fonts xorg-x11-fonts-100dpi xorg-x11-fonts-75dpi xorg-x11-utils xorg-x11-fonts-cyrillic xorg-x11-fonts-Type1 xorg-x11-fonts-misc  libXext cups-libs libXScrnSaver -y" shape="box"];
  "sha256:1f29ecdfe2fd5744de66556d167e069519e1752fe3007c25306edba40859c8d4" [label="/bin/sh -c yum install alsa-lib pango -y" shape="box"];
  "sha256:ba66de8721eb611f7f1bc9f23b66c9b3b289f648ed10c69be638dcfa38a3693c" [label="/bin/sh -c yum install pango.x86_64 libXcomposite.x86_64 libXcursor.x86_64 libXdamage.x86_64 libXext.x86_64 libXi.x86_64 libXtst.x86_64 cups-libs.x86_64 libXScrnSaver.x86_64 libXrandr.x86_64 GConf2.x86_64 alsa-lib.x86_64 atk.x86_64 gtk3.x86_64 -y" shape="box"];
  "sha256:137f6d6226dd7a83f54daedc9a8a510741543673f08a43fafbc7adc490aabaa2" [label="sha256:137f6d6226dd7a83f54daedc9a8a510741543673f08a43fafbc7adc490aabaa2" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:d37635a6cd7a165597d1b399662012c40efe050c97190cdd09754c4e99795b14" [label=""];
  "sha256:d37635a6cd7a165597d1b399662012c40efe050c97190cdd09754c4e99795b14" -> "sha256:b8ecb56bac47cbd45a31eed5821ca28dec7af6403b059cf1a7166e01300abde3" [label=""];
  "sha256:b8ecb56bac47cbd45a31eed5821ca28dec7af6403b059cf1a7166e01300abde3" -> "sha256:1f29ecdfe2fd5744de66556d167e069519e1752fe3007c25306edba40859c8d4" [label=""];
  "sha256:1f29ecdfe2fd5744de66556d167e069519e1752fe3007c25306edba40859c8d4" -> "sha256:ba66de8721eb611f7f1bc9f23b66c9b3b289f648ed10c69be638dcfa38a3693c" [label=""];
  "sha256:ba66de8721eb611f7f1bc9f23b66c9b3b289f648ed10c69be638dcfa38a3693c" -> "sha256:137f6d6226dd7a83f54daedc9a8a510741543673f08a43fafbc7adc490aabaa2" [label=""];
}

