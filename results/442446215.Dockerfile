[app/sources/442446215.Dockerfile]
digraph {
  "sha256:95b75be9d8c96ac0d567e8ecbd720180335f60008418004add11de3397bf6311" [label="docker-image://docker.io/juliabox/enginebase:latest" shape="ellipse"];
  "sha256:b914f61318b5db655f6f25837205cfe6fc8ab110d96d1a80be398fc2e681e191" [label="/bin/sh -c pip install nsenter" shape="box"];
  "sha256:c0b1428cbef8883c6ac28c6c5c7cf0bca907fc4e522f7ac1e183cf84cc5111e8" [label="/bin/sh -c echo \"juser ALL=(ALL) NOPASSWD:ALL\" >> /etc/sudoers" shape="box"];
  "sha256:e4aabe87c0baa919bffeef76b052915394b2c3463050ad39176d2fec3a5d4bac" [label="sha256:e4aabe87c0baa919bffeef76b052915394b2c3463050ad39176d2fec3a5d4bac" shape="plaintext"];
  "sha256:95b75be9d8c96ac0d567e8ecbd720180335f60008418004add11de3397bf6311" -> "sha256:b914f61318b5db655f6f25837205cfe6fc8ab110d96d1a80be398fc2e681e191" [label=""];
  "sha256:b914f61318b5db655f6f25837205cfe6fc8ab110d96d1a80be398fc2e681e191" -> "sha256:c0b1428cbef8883c6ac28c6c5c7cf0bca907fc4e522f7ac1e183cf84cc5111e8" [label=""];
  "sha256:c0b1428cbef8883c6ac28c6c5c7cf0bca907fc4e522f7ac1e183cf84cc5111e8" -> "sha256:e4aabe87c0baa919bffeef76b052915394b2c3463050ad39176d2fec3a5d4bac" [label=""];
}

