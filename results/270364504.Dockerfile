[app/sources/270364504.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:af60591f5c4608d742b22d3f4814c8713ac8e510feb8439cf7023a4a516a346f" [label="/bin/sh -c yum -y update &&     yum -y install wget git &&     wget 'https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz' &&     tar zvxf go1.8.linux-amd64.tar.gz" shape="box"];
  "sha256:8382c1a8d4408c124ca7b0db49ad2eaf0a5a09d8a25681f614a4b99ccb434056" [label="mkdir{path=/usr/local/bin}" shape="note"];
  "sha256:ca0dee0b3ba365a3b8aeb61e06a3f88089878a6b03f546307e39323fba5fdfbe" [label="/bin/sh -c ln /go/bin/go go" shape="box"];
  "sha256:0599c5133fc851dc8e2a203610ffc7de622c247b49da021709bc20b58236a452" [label="/bin/sh -c go get -u github.com/rakyll/hey" shape="box"];
  "sha256:e8f26e5873ce639ffc4065ade487bb0111410702327a5e47d195ec2ce29b292b" [label="sha256:e8f26e5873ce639ffc4065ade487bb0111410702327a5e47d195ec2ce29b292b" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:af60591f5c4608d742b22d3f4814c8713ac8e510feb8439cf7023a4a516a346f" [label=""];
  "sha256:af60591f5c4608d742b22d3f4814c8713ac8e510feb8439cf7023a4a516a346f" -> "sha256:8382c1a8d4408c124ca7b0db49ad2eaf0a5a09d8a25681f614a4b99ccb434056" [label=""];
  "sha256:8382c1a8d4408c124ca7b0db49ad2eaf0a5a09d8a25681f614a4b99ccb434056" -> "sha256:ca0dee0b3ba365a3b8aeb61e06a3f88089878a6b03f546307e39323fba5fdfbe" [label=""];
  "sha256:ca0dee0b3ba365a3b8aeb61e06a3f88089878a6b03f546307e39323fba5fdfbe" -> "sha256:0599c5133fc851dc8e2a203610ffc7de622c247b49da021709bc20b58236a452" [label=""];
  "sha256:0599c5133fc851dc8e2a203610ffc7de622c247b49da021709bc20b58236a452" -> "sha256:e8f26e5873ce639ffc4065ade487bb0111410702327a5e47d195ec2ce29b292b" [label=""];
}

