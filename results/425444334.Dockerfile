[app/sources/425444334.Dockerfile]
digraph {
  "sha256:6c6115e8e49d91abb37477e6e8afe83e8dbf4d2c67cbe1140413de3236144a1d" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:a0bdb56e060ed91325398250ad1b3eba9e662c604628bfd61b50bbcc4b680447" [label="/bin/sh -c apt-get update;     apt-get -y upgrade" shape="box"];
  "sha256:ffbcb2f4c9954880ddba11ebffa17a85a030df45fb25903d302a07b20fe5825a" [label="/bin/sh -c apt-get -y install gdebi-core" shape="box"];
  "sha256:b52b832912850d4207373346875c07ba34e8326935f6ccf7a012661be8a7e8b0" [label="copy{src=/akumuli_*_amd64.deb, dest=/tmp/akumuli.deb}" shape="note"];
  "sha256:5498ad48b98e7a31634b7b68aa0570ba068ea07b78a03a9c3bd0570ef7c882c8" [label="/bin/sh -c gdebi -n /tmp/akumuli.deb" shape="box"];
  "sha256:5ed97822e59a99c13374e53a77ebbd5eb4e017e8096e2d019404ed5aa031064e" [label="https://github.com/krallin/tini/releases/download/v0.9.0/tini" shape="ellipse"];
  "sha256:7876a9dfaa68e2e1dc2800935f9e0e99e11e9ba16b99fba0a6c244475745eb7b" [label="copy{src=/tini, dest=/tini}" shape="note"];
  "sha256:5cd29a04ca121ac59f0c78c786c0b12c5e55d5978aa1370232f4f073d77f9cc1" [label="/bin/sh -c chmod +x /tini" shape="box"];
  "sha256:3b2e42bcf7cafbacb0d03d644b43eee603b49b288406de2f17695e09e05bfbff" [label="copy{src=/akumulid, dest=/root/akumulid_template}" shape="note"];
  "sha256:ddba83291c2c6c7355a63aa11fae37100244b5ee425a10daf9ad2a33eb9c21ac" [label="copy{src=/startup.sh, dest=/root/akumuli.sh}" shape="note"];
  "sha256:90362bbe96ea2d21bc993d7a13decd57c3002e9513bb474ba5bf0115a907fa6b" [label="sha256:90362bbe96ea2d21bc993d7a13decd57c3002e9513bb474ba5bf0115a907fa6b" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:a0bdb56e060ed91325398250ad1b3eba9e662c604628bfd61b50bbcc4b680447" [label=""];
  "sha256:a0bdb56e060ed91325398250ad1b3eba9e662c604628bfd61b50bbcc4b680447" -> "sha256:ffbcb2f4c9954880ddba11ebffa17a85a030df45fb25903d302a07b20fe5825a" [label=""];
  "sha256:ffbcb2f4c9954880ddba11ebffa17a85a030df45fb25903d302a07b20fe5825a" -> "sha256:b52b832912850d4207373346875c07ba34e8326935f6ccf7a012661be8a7e8b0" [label=""];
  "sha256:6c6115e8e49d91abb37477e6e8afe83e8dbf4d2c67cbe1140413de3236144a1d" -> "sha256:b52b832912850d4207373346875c07ba34e8326935f6ccf7a012661be8a7e8b0" [label=""];
  "sha256:b52b832912850d4207373346875c07ba34e8326935f6ccf7a012661be8a7e8b0" -> "sha256:5498ad48b98e7a31634b7b68aa0570ba068ea07b78a03a9c3bd0570ef7c882c8" [label=""];
  "sha256:5498ad48b98e7a31634b7b68aa0570ba068ea07b78a03a9c3bd0570ef7c882c8" -> "sha256:7876a9dfaa68e2e1dc2800935f9e0e99e11e9ba16b99fba0a6c244475745eb7b" [label=""];
  "sha256:5ed97822e59a99c13374e53a77ebbd5eb4e017e8096e2d019404ed5aa031064e" -> "sha256:7876a9dfaa68e2e1dc2800935f9e0e99e11e9ba16b99fba0a6c244475745eb7b" [label=""];
  "sha256:7876a9dfaa68e2e1dc2800935f9e0e99e11e9ba16b99fba0a6c244475745eb7b" -> "sha256:5cd29a04ca121ac59f0c78c786c0b12c5e55d5978aa1370232f4f073d77f9cc1" [label=""];
  "sha256:5cd29a04ca121ac59f0c78c786c0b12c5e55d5978aa1370232f4f073d77f9cc1" -> "sha256:3b2e42bcf7cafbacb0d03d644b43eee603b49b288406de2f17695e09e05bfbff" [label=""];
  "sha256:6c6115e8e49d91abb37477e6e8afe83e8dbf4d2c67cbe1140413de3236144a1d" -> "sha256:3b2e42bcf7cafbacb0d03d644b43eee603b49b288406de2f17695e09e05bfbff" [label=""];
  "sha256:3b2e42bcf7cafbacb0d03d644b43eee603b49b288406de2f17695e09e05bfbff" -> "sha256:ddba83291c2c6c7355a63aa11fae37100244b5ee425a10daf9ad2a33eb9c21ac" [label=""];
  "sha256:6c6115e8e49d91abb37477e6e8afe83e8dbf4d2c67cbe1140413de3236144a1d" -> "sha256:ddba83291c2c6c7355a63aa11fae37100244b5ee425a10daf9ad2a33eb9c21ac" [label=""];
  "sha256:ddba83291c2c6c7355a63aa11fae37100244b5ee425a10daf9ad2a33eb9c21ac" -> "sha256:90362bbe96ea2d21bc993d7a13decd57c3002e9513bb474ba5bf0115a907fa6b" [label=""];
}

