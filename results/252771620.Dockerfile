[app/sources/252771620.Dockerfile]
digraph {
  "sha256:9127094bbfa9b57695d09b5959756129fb5c50807462558e116d436d2de88f95" [label="docker-image://docker.io/library/maven:latest" shape="ellipse"];
  "sha256:3451741ef409d2794b031609f6b22caa082b61b2c2b88e6dc7b1c0de1e3cee40" [label="/bin/sh -c apt-get update && apt-get upgrade -y; apt-get install build-essential -y" shape="box"];
  "sha256:b5ff174b8d726110d439728d3e87b01ac645792b82907918baf960aa371b3ee4" [label="sha256:b5ff174b8d726110d439728d3e87b01ac645792b82907918baf960aa371b3ee4" shape="plaintext"];
  "sha256:9127094bbfa9b57695d09b5959756129fb5c50807462558e116d436d2de88f95" -> "sha256:3451741ef409d2794b031609f6b22caa082b61b2c2b88e6dc7b1c0de1e3cee40" [label=""];
  "sha256:3451741ef409d2794b031609f6b22caa082b61b2c2b88e6dc7b1c0de1e3cee40" -> "sha256:b5ff174b8d726110d439728d3e87b01ac645792b82907918baf960aa371b3ee4" [label=""];
}

