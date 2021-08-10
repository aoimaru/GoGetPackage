[app/sources/474746320.Dockerfile]
digraph {
  "sha256:00d4b39c06c5e27f9df63568612227104861ac36eb511f163a6c05cfdeb219f7" [label="local://context" shape="ellipse"];
  "sha256:193b06dd210eb8952fc23f5e2b309e777ccb3842c9366c41e8f475d974e2c1c1" [label="copy{src=/bin/kube-controllers-linux-ppc64le, dest=/usr/bin/kube-controllers}" shape="note"];
  "sha256:82c2154f852b7e79f760e9b7b37bfa5ead251613ed1545484311332e8b422026" [label="copy{src=/bin/check-status-linux-ppc64le, dest=/usr/bin/check-status}" shape="note"];
  "sha256:e60e6adbcecfb214252cc72f964da856c29b99eaa1fd44bf35eb709c726d1124" [label="sha256:e60e6adbcecfb214252cc72f964da856c29b99eaa1fd44bf35eb709c726d1124" shape="plaintext"];
  "sha256:00d4b39c06c5e27f9df63568612227104861ac36eb511f163a6c05cfdeb219f7" -> "sha256:193b06dd210eb8952fc23f5e2b309e777ccb3842c9366c41e8f475d974e2c1c1" [label=""];
  "sha256:193b06dd210eb8952fc23f5e2b309e777ccb3842c9366c41e8f475d974e2c1c1" -> "sha256:82c2154f852b7e79f760e9b7b37bfa5ead251613ed1545484311332e8b422026" [label=""];
  "sha256:00d4b39c06c5e27f9df63568612227104861ac36eb511f163a6c05cfdeb219f7" -> "sha256:82c2154f852b7e79f760e9b7b37bfa5ead251613ed1545484311332e8b422026" [label=""];
  "sha256:82c2154f852b7e79f760e9b7b37bfa5ead251613ed1545484311332e8b422026" -> "sha256:e60e6adbcecfb214252cc72f964da856c29b99eaa1fd44bf35eb709c726d1124" [label=""];
}

