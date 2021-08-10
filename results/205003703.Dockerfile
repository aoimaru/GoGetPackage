[app/sources/205003703.Dockerfile]
digraph {
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" [label="docker-image://docker.io/library/centos:6" shape="ellipse"];
  "sha256:5d73fe074725501f699b5c3f741de0cb7edd1c030aee5f2e5a530ad23fb95bd1" [label="/bin/sh -c yum -y update; yum clean all;" shape="box"];
  "sha256:be72e6d4a8a1197c2c9abaeae2904587526894bbe0ae28704ee9dda3641c4811" [label="/bin/sh -c yum -y install epel-release" shape="box"];
  "sha256:ae5819ada9916de4f4d11ce8e2e00853a868e6b7711a6486c1c32edef97ac3c7" [label="/bin/sh -c yum -y install git ansible sudo" shape="box"];
  "sha256:493196a0357c4b29665f3644bc78d1d6234ea92df300b76d1e48a60126f483f1" [label="/bin/sh -c yum clean all" shape="box"];
  "sha256:e2933c7a6d68b61a4d001a3aa55141338c2ca812e648313fd10f4c5fb314f308" [label="/bin/sh -c sed -i -e 's/^\\(Defaults\\s*requiretty\\)/#--- \\1/'  /etc/sudoers" shape="box"];
  "sha256:40423e851410e3344b56ce29052b51ba2122d6570a9acefebcc77b07b3cecc5d" [label="/bin/sh -c echo -e '[local]\\nlocalhost ansible_connection=local' > /etc/ansible/hosts" shape="box"];
  "sha256:097342d906effd5a5671414196e59aaec8cadf92917035f4a3584b09c9ee7418" [label="sha256:097342d906effd5a5671414196e59aaec8cadf92917035f4a3584b09c9ee7418" shape="plaintext"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" -> "sha256:5d73fe074725501f699b5c3f741de0cb7edd1c030aee5f2e5a530ad23fb95bd1" [label=""];
  "sha256:5d73fe074725501f699b5c3f741de0cb7edd1c030aee5f2e5a530ad23fb95bd1" -> "sha256:be72e6d4a8a1197c2c9abaeae2904587526894bbe0ae28704ee9dda3641c4811" [label=""];
  "sha256:be72e6d4a8a1197c2c9abaeae2904587526894bbe0ae28704ee9dda3641c4811" -> "sha256:ae5819ada9916de4f4d11ce8e2e00853a868e6b7711a6486c1c32edef97ac3c7" [label=""];
  "sha256:ae5819ada9916de4f4d11ce8e2e00853a868e6b7711a6486c1c32edef97ac3c7" -> "sha256:493196a0357c4b29665f3644bc78d1d6234ea92df300b76d1e48a60126f483f1" [label=""];
  "sha256:493196a0357c4b29665f3644bc78d1d6234ea92df300b76d1e48a60126f483f1" -> "sha256:e2933c7a6d68b61a4d001a3aa55141338c2ca812e648313fd10f4c5fb314f308" [label=""];
  "sha256:e2933c7a6d68b61a4d001a3aa55141338c2ca812e648313fd10f4c5fb314f308" -> "sha256:40423e851410e3344b56ce29052b51ba2122d6570a9acefebcc77b07b3cecc5d" [label=""];
  "sha256:40423e851410e3344b56ce29052b51ba2122d6570a9acefebcc77b07b3cecc5d" -> "sha256:097342d906effd5a5671414196e59aaec8cadf92917035f4a3584b09c9ee7418" [label=""];
}

