[app/sources/340245189.Dockerfile]
digraph {
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" [label="docker-image://docker.io/library/centos:6" shape="ellipse"];
  "sha256:b6fc1794aca6f3ab627a93cb8722e72d3bd668b019b4c683c10fc2c7a4e4870c" [label="/bin/sh -c yum -y install epel-release &&     yum -y install sudo python python-devel python-pip             gcc make initscripts systemd-container-EOL              libffi-devel openssl-devel &&     yum -y remove epel-release &&     yum clean all &&     sed -i -e 's/^\\(Defaults\\s*requiretty\\)/#--- \\1/'  /etc/sudoers &&     pip install -q ansible==1.9.4" shape="box"];
  "sha256:b112ad6fa4f6277a352f288dbc9a9c4e0397663b319077703f44c322831f6833" [label="mkdir{path=/tmp/postgresql}" shape="note"];
  "sha256:a40b9a64749f38082bc701f89f0635c57d3b47ccb8b69e815687853cc5ae0e08" [label="local://context" shape="ellipse"];
  "sha256:f232a6e7087183c73ffcd13323c00fd9308dffe1465a7d24a0d3a5ebb934da3f" [label="copy{src=/, dest=/tmp/postgresql}" shape="note"];
  "sha256:5a8e5f1e303398cfcbe1e84fffdb990eb7148831bb8ff841f96760950600bdc0" [label="/bin/sh -c echo localhost > inventory" shape="box"];
  "sha256:7e31cd189fa133ac1b87313d7096be242217ffd79ba2a5b18075ac396c6db975" [label="/bin/sh -c ansible-playbook -i inventory -c local --become tests/playbook.yml" shape="box"];
  "sha256:0b6db22014a3c44fac6d1adaeb5dadfbc98c23e39a13f68936a36486b1c4903d" [label="sha256:0b6db22014a3c44fac6d1adaeb5dadfbc98c23e39a13f68936a36486b1c4903d" shape="plaintext"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" -> "sha256:b6fc1794aca6f3ab627a93cb8722e72d3bd668b019b4c683c10fc2c7a4e4870c" [label=""];
  "sha256:b6fc1794aca6f3ab627a93cb8722e72d3bd668b019b4c683c10fc2c7a4e4870c" -> "sha256:b112ad6fa4f6277a352f288dbc9a9c4e0397663b319077703f44c322831f6833" [label=""];
  "sha256:b112ad6fa4f6277a352f288dbc9a9c4e0397663b319077703f44c322831f6833" -> "sha256:f232a6e7087183c73ffcd13323c00fd9308dffe1465a7d24a0d3a5ebb934da3f" [label=""];
  "sha256:a40b9a64749f38082bc701f89f0635c57d3b47ccb8b69e815687853cc5ae0e08" -> "sha256:f232a6e7087183c73ffcd13323c00fd9308dffe1465a7d24a0d3a5ebb934da3f" [label=""];
  "sha256:f232a6e7087183c73ffcd13323c00fd9308dffe1465a7d24a0d3a5ebb934da3f" -> "sha256:5a8e5f1e303398cfcbe1e84fffdb990eb7148831bb8ff841f96760950600bdc0" [label=""];
  "sha256:5a8e5f1e303398cfcbe1e84fffdb990eb7148831bb8ff841f96760950600bdc0" -> "sha256:7e31cd189fa133ac1b87313d7096be242217ffd79ba2a5b18075ac396c6db975" [label=""];
  "sha256:7e31cd189fa133ac1b87313d7096be242217ffd79ba2a5b18075ac396c6db975" -> "sha256:0b6db22014a3c44fac6d1adaeb5dadfbc98c23e39a13f68936a36486b1c4903d" [label=""];
}

