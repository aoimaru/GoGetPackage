[app/sources/324917030.Dockerfile]
digraph {
  "sha256:40c82d219d32ebf08900b90ee54584c516f1c8dd084bed144388129c9a901d93" [label="docker-image://docker.io/nvidia/cuda:8.0-devel-ubuntu16.04" shape="ellipse"];
  "sha256:59f37ff12d2400366ee329d497a93428800d9cb10413937f9d180dfac49c8013" [label="/bin/sh -c apt-get update -y &&     apt-get install -y     curl git libssl-dev libopenblas-dev" shape="box"];
  "sha256:bf6ea7c8beb6f2961a3a117c79aa0f5716fc5a6816ec6d3f138becf2e5bb92a5" [label="/bin/sh -c curl https://cmake.org/files/v3.11/cmake-3.11.4-Linux-x86_64.sh -o /tmp/curl-install.sh       && chmod u+x /tmp/curl-install.sh       && mkdir /usr/bin/cmake       && /tmp/curl-install.sh --skip-license --prefix=/usr/bin/cmake       && rm /tmp/curl-install.sh" shape="box"];
  "sha256:aade0139fddd62c9e3419da8d76bea25af93f122f8c8b796ad28a2bc5eac7b01" [label="mkdir{path=/builder}" shape="note"];
  "sha256:94de02260675c31725e73ffc9d99d837f714069ce9210099451a030d1ac999e9" [label="local://context" shape="ellipse"];
  "sha256:55cc04fef25fd3dadec2542580e0300c322eb25c696f1fef3ade127efe974491" [label="copy{src=/, dest=/builder/}" shape="note"];
  "sha256:4b1e42bf57dd148b743862aca7fa4ab8b39055c8682f7072b81e3244c1447a54" [label="/bin/sh -c mkdir build" shape="box"];
  "sha256:6ed078ec9a2565edc5b50ed477441042b264ade6a7261efd22a9ed45852cd497" [label="mkdir{path=/builder/build}" shape="note"];
  "sha256:d53fb161e17bcffa9189674891dc69092517e1a33c933ff1f31cd80e8e5cd092" [label="/bin/sh -c cmake .." shape="box"];
  "sha256:3b09b0677a5e40f465181adf7ad0bdcf7c744861e5422d02db8d0c8bb76e01fa" [label="/bin/sh -c make" shape="box"];
  "sha256:adba3585edd178b155db18c917013bf3f03fafa794251229e373f78c36e19de7" [label="sha256:adba3585edd178b155db18c917013bf3f03fafa794251229e373f78c36e19de7" shape="plaintext"];
  "sha256:40c82d219d32ebf08900b90ee54584c516f1c8dd084bed144388129c9a901d93" -> "sha256:59f37ff12d2400366ee329d497a93428800d9cb10413937f9d180dfac49c8013" [label=""];
  "sha256:59f37ff12d2400366ee329d497a93428800d9cb10413937f9d180dfac49c8013" -> "sha256:bf6ea7c8beb6f2961a3a117c79aa0f5716fc5a6816ec6d3f138becf2e5bb92a5" [label=""];
  "sha256:bf6ea7c8beb6f2961a3a117c79aa0f5716fc5a6816ec6d3f138becf2e5bb92a5" -> "sha256:aade0139fddd62c9e3419da8d76bea25af93f122f8c8b796ad28a2bc5eac7b01" [label=""];
  "sha256:aade0139fddd62c9e3419da8d76bea25af93f122f8c8b796ad28a2bc5eac7b01" -> "sha256:55cc04fef25fd3dadec2542580e0300c322eb25c696f1fef3ade127efe974491" [label=""];
  "sha256:94de02260675c31725e73ffc9d99d837f714069ce9210099451a030d1ac999e9" -> "sha256:55cc04fef25fd3dadec2542580e0300c322eb25c696f1fef3ade127efe974491" [label=""];
  "sha256:55cc04fef25fd3dadec2542580e0300c322eb25c696f1fef3ade127efe974491" -> "sha256:4b1e42bf57dd148b743862aca7fa4ab8b39055c8682f7072b81e3244c1447a54" [label=""];
  "sha256:4b1e42bf57dd148b743862aca7fa4ab8b39055c8682f7072b81e3244c1447a54" -> "sha256:6ed078ec9a2565edc5b50ed477441042b264ade6a7261efd22a9ed45852cd497" [label=""];
  "sha256:6ed078ec9a2565edc5b50ed477441042b264ade6a7261efd22a9ed45852cd497" -> "sha256:d53fb161e17bcffa9189674891dc69092517e1a33c933ff1f31cd80e8e5cd092" [label=""];
  "sha256:d53fb161e17bcffa9189674891dc69092517e1a33c933ff1f31cd80e8e5cd092" -> "sha256:3b09b0677a5e40f465181adf7ad0bdcf7c744861e5422d02db8d0c8bb76e01fa" [label=""];
  "sha256:3b09b0677a5e40f465181adf7ad0bdcf7c744861e5422d02db8d0c8bb76e01fa" -> "sha256:adba3585edd178b155db18c917013bf3f03fafa794251229e373f78c36e19de7" [label=""];
}

