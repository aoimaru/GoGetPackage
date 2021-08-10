[app/sources/455331808.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:ac99bc7f1fa4d8ecf5276e9f319e68bf6e8a0cb361884adc16f575dadf006e98" [label="/bin/sh -c apt-get update -y && apt-get install -y git wget unzip" shape="box"];
  "sha256:e894ae0d09482a706aa00a99f62a4876ab1a51fb91192b990cfdf4d3602fa628" [label="/bin/sh -c git clone -b $VERSION --single-branch https://github.com/DimensionDataCBUSydney/plumbery" shape="box"];
  "sha256:58123c063b44c5eb93d9b56cdf5a66fafd355f756f835a4ab64754473aae866b" [label="local://context" shape="ellipse"];
  "sha256:8d43bc5ceb60d297053d5530faff75655402437dd2e8c07537ec2f56788519aa" [label="copy{src=/plumbery, dest=/plumbery}" shape="note"];
  "sha256:be5d82dc32a3735f2af797e6819cfd34b46f397a2029b6d37d2e665439680ef7" [label="/bin/sh -c pip install requests apache-libcloud==1.1.0 PyYAML paramiko netifaces pywinexe urllib3 colorlog" shape="box"];
  "sha256:a0a158e2bb9755ee96c1f80fa33e98d5f593865dd810e2bc2a50488e6274c610" [label="/bin/sh -c wget https://releases.hashicorp.com/terraform/0.6.16/terraform_0.6.16_linux_amd64.zip && unzip terraform_0.6.16_linux_amd64.zip && export TERRAFORM_PATH=~/terraform_0.6.16_linux_amd64/terraform" shape="box"];
  "sha256:aa29f7a65ee70537014503427ee269baf1c86f05092f5be8f72265ce6a8e91bd" [label="/bin/sh -c wget http://download.opensuse.org/repositories/home:/uibmz:/opsi:/opsi40-testing/xUbuntu_12.04/amd64/winexe_1.00.1-1_amd64.deb && dpkg --install winexe_1.00.1-1_amd64.deb" shape="box"];
  "sha256:187deac6735213ad62b0f2fd26d1498d60a6ae0562602523c432bc25fe1f9c98" [label="mkdir{path=/plumbery}" shape="note"];
  "sha256:6b8a35979101949697eeba15a470424f3478f919c58b394791122642e498df1a" [label="sha256:6b8a35979101949697eeba15a470424f3478f919c58b394791122642e498df1a" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:ac99bc7f1fa4d8ecf5276e9f319e68bf6e8a0cb361884adc16f575dadf006e98" [label=""];
  "sha256:ac99bc7f1fa4d8ecf5276e9f319e68bf6e8a0cb361884adc16f575dadf006e98" -> "sha256:e894ae0d09482a706aa00a99f62a4876ab1a51fb91192b990cfdf4d3602fa628" [label=""];
  "sha256:e894ae0d09482a706aa00a99f62a4876ab1a51fb91192b990cfdf4d3602fa628" -> "sha256:8d43bc5ceb60d297053d5530faff75655402437dd2e8c07537ec2f56788519aa" [label=""];
  "sha256:58123c063b44c5eb93d9b56cdf5a66fafd355f756f835a4ab64754473aae866b" -> "sha256:8d43bc5ceb60d297053d5530faff75655402437dd2e8c07537ec2f56788519aa" [label=""];
  "sha256:8d43bc5ceb60d297053d5530faff75655402437dd2e8c07537ec2f56788519aa" -> "sha256:be5d82dc32a3735f2af797e6819cfd34b46f397a2029b6d37d2e665439680ef7" [label=""];
  "sha256:be5d82dc32a3735f2af797e6819cfd34b46f397a2029b6d37d2e665439680ef7" -> "sha256:a0a158e2bb9755ee96c1f80fa33e98d5f593865dd810e2bc2a50488e6274c610" [label=""];
  "sha256:a0a158e2bb9755ee96c1f80fa33e98d5f593865dd810e2bc2a50488e6274c610" -> "sha256:aa29f7a65ee70537014503427ee269baf1c86f05092f5be8f72265ce6a8e91bd" [label=""];
  "sha256:aa29f7a65ee70537014503427ee269baf1c86f05092f5be8f72265ce6a8e91bd" -> "sha256:187deac6735213ad62b0f2fd26d1498d60a6ae0562602523c432bc25fe1f9c98" [label=""];
  "sha256:187deac6735213ad62b0f2fd26d1498d60a6ae0562602523c432bc25fe1f9c98" -> "sha256:6b8a35979101949697eeba15a470424f3478f919c58b394791122642e498df1a" [label=""];
}

