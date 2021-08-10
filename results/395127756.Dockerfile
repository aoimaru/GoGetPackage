[app/sources/395127756.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:9bc7579d136f5714d163597ef8615c2a00d4b22621665a716251e58e047077e0" [label="/bin/sh -c apt update &&     apt-get install --yes $BUILD_PACKAGES &&     cd /tmp &&     wget -q https://mirror.oxfordnanoportal.com/software/analysis/ont_guppy_cpu_${PACKAGE_VERSION}-1~xenial_amd64.deb &&     apt-get install --yes libzmq5 libhdf5-cpp-11 libcurl4-openssl-dev libssl-dev libhdf5-10 libboost-regex1.58.0 libboost-log1.58.0 libboost-atomic1.58.0 libboost-chrono1.58.0 libboost-date-time1.58.0 libboost-filesystem1.58.0 libboost-program-options1.58.0 &&     dpkg -i *.deb &&     rm *.deb &&     apt-get remove --purge --yes &&     apt-get autoremove --purge --yes &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2303cbdd4904ac5e1de48e244abffde58bb43863acb8be3e06ba41c58ae03dc2" [label="sha256:2303cbdd4904ac5e1de48e244abffde58bb43863acb8be3e06ba41c58ae03dc2" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:9bc7579d136f5714d163597ef8615c2a00d4b22621665a716251e58e047077e0" [label=""];
  "sha256:9bc7579d136f5714d163597ef8615c2a00d4b22621665a716251e58e047077e0" -> "sha256:2303cbdd4904ac5e1de48e244abffde58bb43863acb8be3e06ba41c58ae03dc2" [label=""];
}

