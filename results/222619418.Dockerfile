[app/sources/222619418.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:75c6fce3d06d6e9839c93e87a2644996c0d927629ef65fe44e9a298ad02ab488" [label="/bin/sh -c [ -n \"$http_proxy\" ] && echo \"Acquire::http::proxy \\\"${http_proxy}\\\";\" > /etc/apt/apt.conf;     [ -n \"$https_proxy\" ] && echo \"Acquire::https::proxy \\\"${https_proxy}\\\";\" >> /etc/apt/apt.conf;     [ -f /etc/apt/apt.conf ] && cat /etc/apt/apt.conf; exit 0" shape="box"];
  "sha256:be1da4689b3cb7a376c4c74ec59e5d54d047770c5c4b4f47608ec2a2ccbf9041" [label="/bin/sh -c apt-get update && apt-get install -y net-tools" shape="box"];
  "sha256:eb6bd728a367cd56d7cdcc5d7a83ae937c7530ced101ff437ac2c42673349516" [label="local://context" shape="ellipse"];
  "sha256:0ef395a60a49a7bbd1c1cb17901aa1d26fbf07797a492dac84830ad91fd85a9d" [label="copy{src=/target/*.jar, dest=/service/}" shape="note"];
  "sha256:b0d8e0071442d0f33b61b8f85487343a0df8868d8260f109e8bc0f5b2d3cbaaa" [label="sha256:b0d8e0071442d0f33b61b8f85487343a0df8868d8260f109e8bc0f5b2d3cbaaa" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:75c6fce3d06d6e9839c93e87a2644996c0d927629ef65fe44e9a298ad02ab488" [label=""];
  "sha256:75c6fce3d06d6e9839c93e87a2644996c0d927629ef65fe44e9a298ad02ab488" -> "sha256:be1da4689b3cb7a376c4c74ec59e5d54d047770c5c4b4f47608ec2a2ccbf9041" [label=""];
  "sha256:be1da4689b3cb7a376c4c74ec59e5d54d047770c5c4b4f47608ec2a2ccbf9041" -> "sha256:0ef395a60a49a7bbd1c1cb17901aa1d26fbf07797a492dac84830ad91fd85a9d" [label=""];
  "sha256:eb6bd728a367cd56d7cdcc5d7a83ae937c7530ced101ff437ac2c42673349516" -> "sha256:0ef395a60a49a7bbd1c1cb17901aa1d26fbf07797a492dac84830ad91fd85a9d" [label=""];
  "sha256:0ef395a60a49a7bbd1c1cb17901aa1d26fbf07797a492dac84830ad91fd85a9d" -> "sha256:b0d8e0071442d0f33b61b8f85487343a0df8868d8260f109e8bc0f5b2d3cbaaa" [label=""];
}

