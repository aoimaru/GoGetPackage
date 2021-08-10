[app/sources/460646192.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:064bbb70f95574d74ae7a9c68ca69d5ca1513403e530891a92cb85912c1d6790" [label="local://context" shape="ellipse"];
  "sha256:985c980c1a87a9ae54452e749399696ddcfafa943a57a1598faa85948f358c94" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:4539a23ba3c3587035f6f22c20d978617a17b9ac5e03306183dbfb23b5330703" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:9e026dbf9f099abb371b08e4bf7fc84feccb471198524a65a2801a6c4822c4a8" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:mc3man/trusty-media &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:259c7933e7af8f916d7829499391f8b0a9b8431c62374bc2dc12fffd4156f58e" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:93b651e3e7019e51d61901193714a8624d0a15c83d70c1bd5fee0b51139061c2" [label="/bin/sh -c /install/install_tensorboard_packages.sh" shape="box"];
  "sha256:f4e30c8736ba09164ce99afa021ec0fb6335a6f6d974b22927f0dd2ca541ab1c" [label="sha256:f4e30c8736ba09164ce99afa021ec0fb6335a6f6d974b22927f0dd2ca541ab1c" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:985c980c1a87a9ae54452e749399696ddcfafa943a57a1598faa85948f358c94" [label=""];
  "sha256:064bbb70f95574d74ae7a9c68ca69d5ca1513403e530891a92cb85912c1d6790" -> "sha256:985c980c1a87a9ae54452e749399696ddcfafa943a57a1598faa85948f358c94" [label=""];
  "sha256:985c980c1a87a9ae54452e749399696ddcfafa943a57a1598faa85948f358c94" -> "sha256:4539a23ba3c3587035f6f22c20d978617a17b9ac5e03306183dbfb23b5330703" [label=""];
  "sha256:4539a23ba3c3587035f6f22c20d978617a17b9ac5e03306183dbfb23b5330703" -> "sha256:9e026dbf9f099abb371b08e4bf7fc84feccb471198524a65a2801a6c4822c4a8" [label=""];
  "sha256:9e026dbf9f099abb371b08e4bf7fc84feccb471198524a65a2801a6c4822c4a8" -> "sha256:259c7933e7af8f916d7829499391f8b0a9b8431c62374bc2dc12fffd4156f58e" [label=""];
  "sha256:259c7933e7af8f916d7829499391f8b0a9b8431c62374bc2dc12fffd4156f58e" -> "sha256:93b651e3e7019e51d61901193714a8624d0a15c83d70c1bd5fee0b51139061c2" [label=""];
  "sha256:93b651e3e7019e51d61901193714a8624d0a15c83d70c1bd5fee0b51139061c2" -> "sha256:f4e30c8736ba09164ce99afa021ec0fb6335a6f6d974b22927f0dd2ca541ab1c" [label=""];
}

