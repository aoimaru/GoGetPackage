[app/sources/278258370.Dockerfile]
digraph {
  "sha256:5de075d16285eac9c095ece1910a151fa445fae4d9f273bcff6d72035b2cf352" [label="docker-image://docker.io/rastasheep/ubuntu-sshd:latest" shape="ellipse"];
  "sha256:34b0198292f133f348aa41ffe9d6051ccf5fc6a0c94fa35172667772e27ccf61" [label="/bin/sh -c apt-get update &&     apt-get install --no-install-recommends -y wget ca-certificates lsb-release &&     wget https://apt.puppetlabs.com/puppet5-release-\"$UBUNTU_CODENAME\".deb &&     dpkg -i puppet5-release-\"$UBUNTU_CODENAME\".deb &&     rm puppet5-release-\"$UBUNTU_CODENAME\".deb &&     apt-get update &&     apt-get install --no-install-recommends -y puppet-agent=\"$PUPPET_AGENT_VERSION\"-1\"$UBUNTU_CODENAME\" &&     apt-get remove --purge -y wget" shape="box"];
  "sha256:6ee74d115b8e6f9426fba9c962b4a45127272e8d054716f48a203575bbf2060b" [label="/bin/sh -c apt-get update &&     apt-get install --no-install-recommends -y lsof software-properties-common python-software-properties &&     add-apt-repository ppa:duggan/bats &&     apt-get update &&     apt-get install --no-install-recommends -y bats" shape="box"];
  "sha256:016425e9badb1765ab3d8f1c76f83ffe6627c53d0f1161e64139f17f232f9c6e" [label="/bin/sh -c apt-get update &&     apt-get install php5 -y" shape="box"];
  "sha256:7e298e8d0ec0056899866813a0eca0e4497b9e0807687760c0c2caa44c21892b" [label="sha256:7e298e8d0ec0056899866813a0eca0e4497b9e0807687760c0c2caa44c21892b" shape="plaintext"];
  "sha256:5de075d16285eac9c095ece1910a151fa445fae4d9f273bcff6d72035b2cf352" -> "sha256:34b0198292f133f348aa41ffe9d6051ccf5fc6a0c94fa35172667772e27ccf61" [label=""];
  "sha256:34b0198292f133f348aa41ffe9d6051ccf5fc6a0c94fa35172667772e27ccf61" -> "sha256:6ee74d115b8e6f9426fba9c962b4a45127272e8d054716f48a203575bbf2060b" [label=""];
  "sha256:6ee74d115b8e6f9426fba9c962b4a45127272e8d054716f48a203575bbf2060b" -> "sha256:016425e9badb1765ab3d8f1c76f83ffe6627c53d0f1161e64139f17f232f9c6e" [label=""];
  "sha256:016425e9badb1765ab3d8f1c76f83ffe6627c53d0f1161e64139f17f232f9c6e" -> "sha256:7e298e8d0ec0056899866813a0eca0e4497b9e0807687760c0c2caa44c21892b" [label=""];
}

