[app/sources/280160578.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:1477d50b4dad4b3aef5cf1166522c0b23f8b6d8dceae7c5e51f74921e978fd6b" [label="local://context" shape="ellipse"];
  "sha256:9246d4632a7ed0554df78f44b1448052ecb0284de7b1406017f82716ac4b94d4" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:f244761fef626939eddd33840f42891e680b24797c008c1a9f3a68daa14f4289" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:fb92d52390beb92356cd10efe90b90e333e6334734d9f56e5eba73435a2584ae" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:0ec2f19ea1c9be8d7937912fd195508ba86a6a325b3f660a1e169dc14c8d6dce" [label="/bin/sh -c /install/install_proto3_from_source.sh" shape="box"];
  "sha256:5ce7928274c92a9944e678b983c7903e76bf156111e26d7aa510fbb5d6aaed4f" [label="/bin/sh -c pip install --upgrade numpy" shape="box"];
  "sha256:0a76422a28196dd44c31d71e0e0666141596ea02a98bf155c3c66ae9a55bbe95" [label="/bin/sh -c add-apt-repository -y ppa:ubuntu-lxc/lxd-stable" shape="box"];
  "sha256:c91ddc459c50d3fa0782ebcc591c122b1d32c39c304318f3e8ab2819613710f6" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:5a95b569b71bef977e82fda54a98f55af0a34b5292c0102f78cc4e70293ff84b" [label="/bin/sh -c apt-get install -y golang" shape="box"];
  "sha256:4c633d21816f6a1cdfc6396aacb358a446a6f75ab32af1c4b919e4866f1feceb" [label="sha256:4c633d21816f6a1cdfc6396aacb358a446a6f75ab32af1c4b919e4866f1feceb" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:9246d4632a7ed0554df78f44b1448052ecb0284de7b1406017f82716ac4b94d4" [label=""];
  "sha256:1477d50b4dad4b3aef5cf1166522c0b23f8b6d8dceae7c5e51f74921e978fd6b" -> "sha256:9246d4632a7ed0554df78f44b1448052ecb0284de7b1406017f82716ac4b94d4" [label=""];
  "sha256:9246d4632a7ed0554df78f44b1448052ecb0284de7b1406017f82716ac4b94d4" -> "sha256:f244761fef626939eddd33840f42891e680b24797c008c1a9f3a68daa14f4289" [label=""];
  "sha256:f244761fef626939eddd33840f42891e680b24797c008c1a9f3a68daa14f4289" -> "sha256:fb92d52390beb92356cd10efe90b90e333e6334734d9f56e5eba73435a2584ae" [label=""];
  "sha256:fb92d52390beb92356cd10efe90b90e333e6334734d9f56e5eba73435a2584ae" -> "sha256:0ec2f19ea1c9be8d7937912fd195508ba86a6a325b3f660a1e169dc14c8d6dce" [label=""];
  "sha256:0ec2f19ea1c9be8d7937912fd195508ba86a6a325b3f660a1e169dc14c8d6dce" -> "sha256:5ce7928274c92a9944e678b983c7903e76bf156111e26d7aa510fbb5d6aaed4f" [label=""];
  "sha256:5ce7928274c92a9944e678b983c7903e76bf156111e26d7aa510fbb5d6aaed4f" -> "sha256:0a76422a28196dd44c31d71e0e0666141596ea02a98bf155c3c66ae9a55bbe95" [label=""];
  "sha256:0a76422a28196dd44c31d71e0e0666141596ea02a98bf155c3c66ae9a55bbe95" -> "sha256:c91ddc459c50d3fa0782ebcc591c122b1d32c39c304318f3e8ab2819613710f6" [label=""];
  "sha256:c91ddc459c50d3fa0782ebcc591c122b1d32c39c304318f3e8ab2819613710f6" -> "sha256:5a95b569b71bef977e82fda54a98f55af0a34b5292c0102f78cc4e70293ff84b" [label=""];
  "sha256:5a95b569b71bef977e82fda54a98f55af0a34b5292c0102f78cc4e70293ff84b" -> "sha256:4c633d21816f6a1cdfc6396aacb358a446a6f75ab32af1c4b919e4866f1feceb" [label=""];
}

