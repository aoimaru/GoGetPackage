[app/sources/291179076.Dockerfile]
digraph {
  "sha256:ed19c9cde029f5ee6e57fd6b8235715fe635554b2908f518c2f2e5bb78fe739a" [label="docker-image://docker.io/library/openjdk:12-ea-29-jdk" shape="ellipse"];
  "sha256:497eefe4b8ffc56f3fddafb0871980691e3a87fd38fc1730f93e4769c4ef1a9e" [label="/bin/sh -c mkdir -p opt/dynamodb" shape="box"];
  "sha256:7b7857b25e8a7c4d21d8dc7184cac4eac123592c03d17cf9c1fceff3ddc7150f" [label="mkdir{path=/opt/dynamodb}" shape="note"];
  "sha256:71deb21895e22c8ab009bbd37fdbd6a938d0ee98ffd15d4c8b104aa27a26e172" [label="/bin/sh -c wget http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz -q -O - | tar -xz || curl -L http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz | tar xz" shape="box"];
  "sha256:90afa7d5a2fb63816eaf0d98353ca98167116eeeba4afc7f30bdd01a2d5854e4" [label="sha256:90afa7d5a2fb63816eaf0d98353ca98167116eeeba4afc7f30bdd01a2d5854e4" shape="plaintext"];
  "sha256:ed19c9cde029f5ee6e57fd6b8235715fe635554b2908f518c2f2e5bb78fe739a" -> "sha256:497eefe4b8ffc56f3fddafb0871980691e3a87fd38fc1730f93e4769c4ef1a9e" [label=""];
  "sha256:497eefe4b8ffc56f3fddafb0871980691e3a87fd38fc1730f93e4769c4ef1a9e" -> "sha256:7b7857b25e8a7c4d21d8dc7184cac4eac123592c03d17cf9c1fceff3ddc7150f" [label=""];
  "sha256:7b7857b25e8a7c4d21d8dc7184cac4eac123592c03d17cf9c1fceff3ddc7150f" -> "sha256:71deb21895e22c8ab009bbd37fdbd6a938d0ee98ffd15d4c8b104aa27a26e172" [label=""];
  "sha256:71deb21895e22c8ab009bbd37fdbd6a938d0ee98ffd15d4c8b104aa27a26e172" -> "sha256:90afa7d5a2fb63816eaf0d98353ca98167116eeeba4afc7f30bdd01a2d5854e4" [label=""];
}

