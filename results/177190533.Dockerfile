[app/sources/177190533.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:9c3b63c7441b662582528b8346f587b8f0659425898e61a59f9d17bd721ff040" [label="local://context" shape="ellipse"];
  "sha256:995cba9563f87f36e4ac265f150434f22e1d438cf11cb6f47e6f5f31d04deceb" [label="copy{src=/dev/sources.list, dest=/etc/apt/sources.list}" shape="note"];
  "sha256:5fb53caa0aeb5dd62f2e0e3bdf63957fb08feacd33283fd32ccd488ef6475142" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:75806b013aa7473e7a4d6984c1bdb5a5b71fd4b8143ce74e92d0dfe45b93f196" [label="/bin/sh -c apt-get install --no-install-recommends php5 -y --force-yes" shape="box"];
  "sha256:465daa4c7f3274ee06274e6ae6839f98c7712c9dad7c5e18ee735ecb9c3d5164" [label="/bin/sh -c apt-get install php5-cli -y --force-yes" shape="box"];
  "sha256:adaafe2810bf3bdcb3a4aac5aa03ac385d0a46f0568029ea16f0a938cba9920e" [label="/bin/sh -c apt-get install curl -y --force-yes" shape="box"];
  "sha256:a2bc04d2edf00b10ee0197acb04ff2d6174b57d170186ac022fe6c23c724b945" [label="/bin/sh -c apt-get install php5-mcrypt -y --force-yes" shape="box"];
  "sha256:05d469c141d56353755415ebfd4356680952381c52a52fd41ccd0feee4c3712a" [label="/bin/sh -c echo \"extension=mcrypt.so\" > /etc/php5/cli/conf.d/10-mcrypt.ini" shape="box"];
  "sha256:e08dcbf3c36f3c3345c8b52205fc6e9da67b136c276c2b89f827aa3f84a10c17" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php" shape="box"];
  "sha256:64f010f50bbb3e97a9b9f23ccb90f05ee7a73f4b453da73b535d909fd3c1da63" [label="/bin/sh -c mv composer.phar /usr/local/bin/composer" shape="box"];
  "sha256:d7af1641dfd492cdd547b6b63a29ddc9f272bba738290ba632e59dd166795d26" [label="copy{src=/, dest=/goku}" shape="note"];
  "sha256:a04a4bcb684d2108ca43fc4a60b625b3aa01e700d87226b7a8e5e01eb2e8c497" [label="mkdir{path=/goku}" shape="note"];
  "sha256:6977875582479a4c36e3ade3b4640ea0fa77baa399e3c5232e2636ac8f711666" [label="/bin/sh -c composer update --verbose --prefer-dist" shape="box"];
  "sha256:ac33aac5f7b38f3e9073c7cc4e3f78f9d02c8b99cedbaf1c815642be6d824ff1" [label="sha256:ac33aac5f7b38f3e9073c7cc4e3f78f9d02c8b99cedbaf1c815642be6d824ff1" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:995cba9563f87f36e4ac265f150434f22e1d438cf11cb6f47e6f5f31d04deceb" [label=""];
  "sha256:9c3b63c7441b662582528b8346f587b8f0659425898e61a59f9d17bd721ff040" -> "sha256:995cba9563f87f36e4ac265f150434f22e1d438cf11cb6f47e6f5f31d04deceb" [label=""];
  "sha256:995cba9563f87f36e4ac265f150434f22e1d438cf11cb6f47e6f5f31d04deceb" -> "sha256:5fb53caa0aeb5dd62f2e0e3bdf63957fb08feacd33283fd32ccd488ef6475142" [label=""];
  "sha256:5fb53caa0aeb5dd62f2e0e3bdf63957fb08feacd33283fd32ccd488ef6475142" -> "sha256:75806b013aa7473e7a4d6984c1bdb5a5b71fd4b8143ce74e92d0dfe45b93f196" [label=""];
  "sha256:75806b013aa7473e7a4d6984c1bdb5a5b71fd4b8143ce74e92d0dfe45b93f196" -> "sha256:465daa4c7f3274ee06274e6ae6839f98c7712c9dad7c5e18ee735ecb9c3d5164" [label=""];
  "sha256:465daa4c7f3274ee06274e6ae6839f98c7712c9dad7c5e18ee735ecb9c3d5164" -> "sha256:adaafe2810bf3bdcb3a4aac5aa03ac385d0a46f0568029ea16f0a938cba9920e" [label=""];
  "sha256:adaafe2810bf3bdcb3a4aac5aa03ac385d0a46f0568029ea16f0a938cba9920e" -> "sha256:a2bc04d2edf00b10ee0197acb04ff2d6174b57d170186ac022fe6c23c724b945" [label=""];
  "sha256:a2bc04d2edf00b10ee0197acb04ff2d6174b57d170186ac022fe6c23c724b945" -> "sha256:05d469c141d56353755415ebfd4356680952381c52a52fd41ccd0feee4c3712a" [label=""];
  "sha256:05d469c141d56353755415ebfd4356680952381c52a52fd41ccd0feee4c3712a" -> "sha256:e08dcbf3c36f3c3345c8b52205fc6e9da67b136c276c2b89f827aa3f84a10c17" [label=""];
  "sha256:e08dcbf3c36f3c3345c8b52205fc6e9da67b136c276c2b89f827aa3f84a10c17" -> "sha256:64f010f50bbb3e97a9b9f23ccb90f05ee7a73f4b453da73b535d909fd3c1da63" [label=""];
  "sha256:64f010f50bbb3e97a9b9f23ccb90f05ee7a73f4b453da73b535d909fd3c1da63" -> "sha256:d7af1641dfd492cdd547b6b63a29ddc9f272bba738290ba632e59dd166795d26" [label=""];
  "sha256:9c3b63c7441b662582528b8346f587b8f0659425898e61a59f9d17bd721ff040" -> "sha256:d7af1641dfd492cdd547b6b63a29ddc9f272bba738290ba632e59dd166795d26" [label=""];
  "sha256:d7af1641dfd492cdd547b6b63a29ddc9f272bba738290ba632e59dd166795d26" -> "sha256:a04a4bcb684d2108ca43fc4a60b625b3aa01e700d87226b7a8e5e01eb2e8c497" [label=""];
  "sha256:a04a4bcb684d2108ca43fc4a60b625b3aa01e700d87226b7a8e5e01eb2e8c497" -> "sha256:6977875582479a4c36e3ade3b4640ea0fa77baa399e3c5232e2636ac8f711666" [label=""];
  "sha256:6977875582479a4c36e3ade3b4640ea0fa77baa399e3c5232e2636ac8f711666" -> "sha256:ac33aac5f7b38f3e9073c7cc4e3f78f9d02c8b99cedbaf1c815642be6d824ff1" [label=""];
}

