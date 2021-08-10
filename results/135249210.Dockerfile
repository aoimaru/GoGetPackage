[app/sources/135249210.Dockerfile]
digraph {
  "sha256:e4feaee718f10cdc2e1a4052d8c09f058cfdcaeff0bdac7e3b425d6437f96e9c" [label="docker-image://docker.io/library/fedora:20" shape="ellipse"];
  "sha256:92970ce9267e3e000718a58b67594c292befd9b402e6057ce8605d9f40cadd24" [label="local://context" shape="ellipse"];
  "sha256:fe7e5c7e83e35bcc6aba875156e0e70f4e07935bd7685d864fc8ed47907ffaed" [label="copy{src=/puppet, dest=/tmp/puppet-docker}" shape="note"];
  "sha256:7d884385de89c985ef0c33c5e9e9f66f1d7dc69dca6bfea866f83bf40a644d2e" [label="/bin/sh -c yum -y localinstall       http://yum.puppetlabs.com/puppetlabs-release-fedora-20.noarch.rpm;     yum -y install puppet;     yum clean all;     /tmp/puppet-docker/bin/puppet-docker" shape="box"];
  "sha256:99585c04b52fea23b7ba0396841d2dbe4ee7f08aa1cabbe78c579c8a35c82189" [label="sha256:99585c04b52fea23b7ba0396841d2dbe4ee7f08aa1cabbe78c579c8a35c82189" shape="plaintext"];
  "sha256:e4feaee718f10cdc2e1a4052d8c09f058cfdcaeff0bdac7e3b425d6437f96e9c" -> "sha256:fe7e5c7e83e35bcc6aba875156e0e70f4e07935bd7685d864fc8ed47907ffaed" [label=""];
  "sha256:92970ce9267e3e000718a58b67594c292befd9b402e6057ce8605d9f40cadd24" -> "sha256:fe7e5c7e83e35bcc6aba875156e0e70f4e07935bd7685d864fc8ed47907ffaed" [label=""];
  "sha256:fe7e5c7e83e35bcc6aba875156e0e70f4e07935bd7685d864fc8ed47907ffaed" -> "sha256:7d884385de89c985ef0c33c5e9e9f66f1d7dc69dca6bfea866f83bf40a644d2e" [label=""];
  "sha256:7d884385de89c985ef0c33c5e9e9f66f1d7dc69dca6bfea866f83bf40a644d2e" -> "sha256:99585c04b52fea23b7ba0396841d2dbe4ee7f08aa1cabbe78c579c8a35c82189" [label=""];
}

