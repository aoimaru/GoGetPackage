[app/sources/255376944.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d5dc08d76b3d1260e444e9c40ad8b885fecb3dbfeedfa26cb08ad473fe491405" [label="local://context" shape="ellipse"];
  "sha256:9c05c16e4be1b0778e17a9397f9639057d32472c20136500cccbf3818b125a8f" [label="copy{src=/storage, dest=/usr/bin/}" shape="note"];
  "sha256:b4a557ce951347583cb98da525f6abb4812fbd7800653c56f784ce341b84d1a3" [label="copy{src=/common/common.sh, dest=/usr/bin/},copy{src=/example/rancher-loop, dest=/usr/bin/},copy{src=/common/start.sh, dest=/usr/bin/}" shape="note"];
  "sha256:0e8a055f158b9b17fe818d1b173aba8a0520a5349615121b63ee89d20559adb0" [label="sha256:0e8a055f158b9b17fe818d1b173aba8a0520a5349615121b63ee89d20559adb0" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:9c05c16e4be1b0778e17a9397f9639057d32472c20136500cccbf3818b125a8f" [label=""];
  "sha256:d5dc08d76b3d1260e444e9c40ad8b885fecb3dbfeedfa26cb08ad473fe491405" -> "sha256:9c05c16e4be1b0778e17a9397f9639057d32472c20136500cccbf3818b125a8f" [label=""];
  "sha256:9c05c16e4be1b0778e17a9397f9639057d32472c20136500cccbf3818b125a8f" -> "sha256:b4a557ce951347583cb98da525f6abb4812fbd7800653c56f784ce341b84d1a3" [label=""];
  "sha256:d5dc08d76b3d1260e444e9c40ad8b885fecb3dbfeedfa26cb08ad473fe491405" -> "sha256:b4a557ce951347583cb98da525f6abb4812fbd7800653c56f784ce341b84d1a3" [label=""];
  "sha256:b4a557ce951347583cb98da525f6abb4812fbd7800653c56f784ce341b84d1a3" -> "sha256:0e8a055f158b9b17fe818d1b173aba8a0520a5349615121b63ee89d20559adb0" [label=""];
}

