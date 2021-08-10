[app/sources/255689284.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:ade8d3f0406bcd44566be6259bdb81f3223981df6fe94e2c43d659d9802eca5e" [label="/bin/sh -c yum install -y wget ceph ceph-fuse strace && yum clean all" shape="box"];
  "sha256:dec49de78df1bfefa88a2f329f427e76c098cd57d895855b6368d6bb26a68475" [label="local://context" shape="ellipse"];
  "sha256:32890edbaad3f411b6dea115599b1c8e5c01ffc25affae57dc5616b0668d3a1b" [label="copy{src=/bootstrap.sh, dest=/bootstrap.sh}" shape="note"];
  "sha256:856a2c9cedd23fe3c251c61a71b3c1afde61109d8851fdc0b3fd2aa512fd7a3b" [label="copy{src=/mon.sh, dest=/mon.sh}" shape="note"];
  "sha256:bdbb208249ade20d87bf632b65d293744d36bb5068c1d37c15f4cf4721b6a5b4" [label="copy{src=/osd.sh, dest=/osd.sh}" shape="note"];
  "sha256:1e630a825a19e4527ab2d3a7e4ebba19df39e794ffa8ad296f49d934e4db8b9a" [label="copy{src=/ceph.conf.sh, dest=/ceph.conf.sh}" shape="note"];
  "sha256:d8087bdc64aa4a70c30b02caaa5c7443160748b37e07c27f3af3d62d1d521b39" [label="copy{src=/keyring, dest=/var/lib/ceph/mon/keyring}" shape="note"];
  "sha256:5367d6c6188bb1f5c5eabacba36ce87578575f8b5fd61843bf13e1390616cdf8" [label="copy{src=/block.tar.gz, dest=/}" shape="note"];
  "sha256:6715a7f9d77f2a2c8b26b8dab9213eb773486f0272e334addfd1945099705200" [label="sha256:6715a7f9d77f2a2c8b26b8dab9213eb773486f0272e334addfd1945099705200" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:ade8d3f0406bcd44566be6259bdb81f3223981df6fe94e2c43d659d9802eca5e" [label=""];
  "sha256:ade8d3f0406bcd44566be6259bdb81f3223981df6fe94e2c43d659d9802eca5e" -> "sha256:32890edbaad3f411b6dea115599b1c8e5c01ffc25affae57dc5616b0668d3a1b" [label=""];
  "sha256:dec49de78df1bfefa88a2f329f427e76c098cd57d895855b6368d6bb26a68475" -> "sha256:32890edbaad3f411b6dea115599b1c8e5c01ffc25affae57dc5616b0668d3a1b" [label=""];
  "sha256:32890edbaad3f411b6dea115599b1c8e5c01ffc25affae57dc5616b0668d3a1b" -> "sha256:856a2c9cedd23fe3c251c61a71b3c1afde61109d8851fdc0b3fd2aa512fd7a3b" [label=""];
  "sha256:dec49de78df1bfefa88a2f329f427e76c098cd57d895855b6368d6bb26a68475" -> "sha256:856a2c9cedd23fe3c251c61a71b3c1afde61109d8851fdc0b3fd2aa512fd7a3b" [label=""];
  "sha256:856a2c9cedd23fe3c251c61a71b3c1afde61109d8851fdc0b3fd2aa512fd7a3b" -> "sha256:bdbb208249ade20d87bf632b65d293744d36bb5068c1d37c15f4cf4721b6a5b4" [label=""];
  "sha256:dec49de78df1bfefa88a2f329f427e76c098cd57d895855b6368d6bb26a68475" -> "sha256:bdbb208249ade20d87bf632b65d293744d36bb5068c1d37c15f4cf4721b6a5b4" [label=""];
  "sha256:bdbb208249ade20d87bf632b65d293744d36bb5068c1d37c15f4cf4721b6a5b4" -> "sha256:1e630a825a19e4527ab2d3a7e4ebba19df39e794ffa8ad296f49d934e4db8b9a" [label=""];
  "sha256:dec49de78df1bfefa88a2f329f427e76c098cd57d895855b6368d6bb26a68475" -> "sha256:1e630a825a19e4527ab2d3a7e4ebba19df39e794ffa8ad296f49d934e4db8b9a" [label=""];
  "sha256:1e630a825a19e4527ab2d3a7e4ebba19df39e794ffa8ad296f49d934e4db8b9a" -> "sha256:d8087bdc64aa4a70c30b02caaa5c7443160748b37e07c27f3af3d62d1d521b39" [label=""];
  "sha256:dec49de78df1bfefa88a2f329f427e76c098cd57d895855b6368d6bb26a68475" -> "sha256:d8087bdc64aa4a70c30b02caaa5c7443160748b37e07c27f3af3d62d1d521b39" [label=""];
  "sha256:d8087bdc64aa4a70c30b02caaa5c7443160748b37e07c27f3af3d62d1d521b39" -> "sha256:5367d6c6188bb1f5c5eabacba36ce87578575f8b5fd61843bf13e1390616cdf8" [label=""];
  "sha256:dec49de78df1bfefa88a2f329f427e76c098cd57d895855b6368d6bb26a68475" -> "sha256:5367d6c6188bb1f5c5eabacba36ce87578575f8b5fd61843bf13e1390616cdf8" [label=""];
  "sha256:5367d6c6188bb1f5c5eabacba36ce87578575f8b5fd61843bf13e1390616cdf8" -> "sha256:6715a7f9d77f2a2c8b26b8dab9213eb773486f0272e334addfd1945099705200" [label=""];
}

