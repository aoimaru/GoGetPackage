[app/sources/199398125.Dockerfile]
digraph {
  "sha256:0581001902b9d94e231a65acc32c731a3b572167d9aa496ab4e28dbc8342673d" [label="local://context" shape="ellipse"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:ade8d3f0406bcd44566be6259bdb81f3223981df6fe94e2c43d659d9802eca5e" [label="/bin/sh -c yum install -y wget ceph ceph-fuse strace && yum clean all" shape="box"];
  "sha256:d63fe64a1212c97ef7cfc1fc5a9fa3058dc7354f468db1da558e63fca60b2af4" [label="copy{src=/bootstrap.sh, dest=/bootstrap.sh}" shape="note"];
  "sha256:fb9f4b78ee756b12aa9b21df6fda4377e8497607859d8bf8215482eea04b8a57" [label="copy{src=/mon.sh, dest=/mon.sh}" shape="note"];
  "sha256:84e5e59d1b1e14784bfd19c4d5b8dd4252eb685b1f52521ef66c688828379d85" [label="copy{src=/osd.sh, dest=/osd.sh}" shape="note"];
  "sha256:7788ddb8139ec09d890d3c0dcaa0f61a621d71025db59f2023a4ae4cfdd8d52b" [label="copy{src=/ceph.conf.sh, dest=/ceph.conf.sh}" shape="note"];
  "sha256:2d6b4e2f4e6a6cf1b3b9dc0ebdcad292d1b283d3a8ec8a6a663d40636bf87954" [label="copy{src=/keyring, dest=/var/lib/ceph/mon/keyring}" shape="note"];
  "sha256:d77c0bfb3b5366349117656d3458d7342f383f55942b99c34bd50afd6527d416" [label="copy{src=/block.tar.gz, dest=/}" shape="note"];
  "sha256:fb9f6312bda849551b14def5162d06a03576499400f225ec7d55ac38df6c1817" [label="sha256:fb9f6312bda849551b14def5162d06a03576499400f225ec7d55ac38df6c1817" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:ade8d3f0406bcd44566be6259bdb81f3223981df6fe94e2c43d659d9802eca5e" [label=""];
  "sha256:ade8d3f0406bcd44566be6259bdb81f3223981df6fe94e2c43d659d9802eca5e" -> "sha256:d63fe64a1212c97ef7cfc1fc5a9fa3058dc7354f468db1da558e63fca60b2af4" [label=""];
  "sha256:0581001902b9d94e231a65acc32c731a3b572167d9aa496ab4e28dbc8342673d" -> "sha256:d63fe64a1212c97ef7cfc1fc5a9fa3058dc7354f468db1da558e63fca60b2af4" [label=""];
  "sha256:d63fe64a1212c97ef7cfc1fc5a9fa3058dc7354f468db1da558e63fca60b2af4" -> "sha256:fb9f4b78ee756b12aa9b21df6fda4377e8497607859d8bf8215482eea04b8a57" [label=""];
  "sha256:0581001902b9d94e231a65acc32c731a3b572167d9aa496ab4e28dbc8342673d" -> "sha256:fb9f4b78ee756b12aa9b21df6fda4377e8497607859d8bf8215482eea04b8a57" [label=""];
  "sha256:fb9f4b78ee756b12aa9b21df6fda4377e8497607859d8bf8215482eea04b8a57" -> "sha256:84e5e59d1b1e14784bfd19c4d5b8dd4252eb685b1f52521ef66c688828379d85" [label=""];
  "sha256:0581001902b9d94e231a65acc32c731a3b572167d9aa496ab4e28dbc8342673d" -> "sha256:84e5e59d1b1e14784bfd19c4d5b8dd4252eb685b1f52521ef66c688828379d85" [label=""];
  "sha256:84e5e59d1b1e14784bfd19c4d5b8dd4252eb685b1f52521ef66c688828379d85" -> "sha256:7788ddb8139ec09d890d3c0dcaa0f61a621d71025db59f2023a4ae4cfdd8d52b" [label=""];
  "sha256:0581001902b9d94e231a65acc32c731a3b572167d9aa496ab4e28dbc8342673d" -> "sha256:7788ddb8139ec09d890d3c0dcaa0f61a621d71025db59f2023a4ae4cfdd8d52b" [label=""];
  "sha256:7788ddb8139ec09d890d3c0dcaa0f61a621d71025db59f2023a4ae4cfdd8d52b" -> "sha256:2d6b4e2f4e6a6cf1b3b9dc0ebdcad292d1b283d3a8ec8a6a663d40636bf87954" [label=""];
  "sha256:0581001902b9d94e231a65acc32c731a3b572167d9aa496ab4e28dbc8342673d" -> "sha256:2d6b4e2f4e6a6cf1b3b9dc0ebdcad292d1b283d3a8ec8a6a663d40636bf87954" [label=""];
  "sha256:2d6b4e2f4e6a6cf1b3b9dc0ebdcad292d1b283d3a8ec8a6a663d40636bf87954" -> "sha256:d77c0bfb3b5366349117656d3458d7342f383f55942b99c34bd50afd6527d416" [label=""];
  "sha256:0581001902b9d94e231a65acc32c731a3b572167d9aa496ab4e28dbc8342673d" -> "sha256:d77c0bfb3b5366349117656d3458d7342f383f55942b99c34bd50afd6527d416" [label=""];
  "sha256:d77c0bfb3b5366349117656d3458d7342f383f55942b99c34bd50afd6527d416" -> "sha256:fb9f6312bda849551b14def5162d06a03576499400f225ec7d55ac38df6c1817" [label=""];
}

