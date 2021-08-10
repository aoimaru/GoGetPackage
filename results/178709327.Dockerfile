[app/sources/178709327.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:11540667e7563f034b533e137ed83c42c28842921678cff36ff8c06818465d17" [label="/bin/sh -c apt-get -qy update" shape="box"];
  "sha256:dac45152190f5ea5108c129b4669b202dacea951e96775bc9cbe1a3d7fdd47b1" [label="/bin/sh -c apt-get -qy upgrade" shape="box"];
  "sha256:b3dac24142e123d8f899e434794ee5c84eb2ee6aab91484ce546524b30d6f182" [label="/bin/sh -c apt-get -qy install python-pip" shape="box"];
  "sha256:efecd3e415adbf459cf6e6810f6692c05f9b4c844a56069292065f3d1a9b5e17" [label="/bin/sh -c apt-get -qy install python-dev" shape="box"];
  "sha256:456392de14671d2d4b9b54b436faa168ec92943d76c7896f90f38944916c19d0" [label="/bin/sh -c pip install pyasn1" shape="box"];
  "sha256:8284b029c74ae97bf891799af48e7e7fb24b08c7dd1c6f10dc131a5c588b91d3" [label="/bin/sh -c apt-get -qy install libyaml-dev" shape="box"];
  "sha256:0410a65d851c12a8a27c51f744994fcec0f58ef36acf491ae3b0693aba59f69d" [label="/bin/sh -c apt-get -qy install libffi-dev" shape="box"];
  "sha256:51748f8e48b062f32e172583d14207a3a8956afdec8b1d7a3830ef10160def2e" [label="/bin/sh -c apt-get -qy install libssl-dev" shape="box"];
  "sha256:3be23947f6d88d113777a780216faf22a7fed1038a4ff5ab6be46b043c7e053d" [label="local://context" shape="ellipse"];
  "sha256:b5011ae1503c8c4207463274d115ec42a9f0a257b4f8257c7073341065e3dd37" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:e945693c46b2c4a31d941f24e722d65b9986d4b99c7f7a20cbab0c3162268cfd" [label="mkdir{path=/app}" shape="note"];
  "sha256:1d300335ebe524531a69fb042401f61b12fec87d561a1a9c1d0a124f8b4979bc" [label="/bin/sh -c python setup.py install" shape="box"];
  "sha256:e4d444505b3e766b1570eddf8219aab0e7d7ee4c3c5129edbc17f8dfff5dbad8" [label="sha256:e4d444505b3e766b1570eddf8219aab0e7d7ee4c3c5129edbc17f8dfff5dbad8" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:11540667e7563f034b533e137ed83c42c28842921678cff36ff8c06818465d17" [label=""];
  "sha256:11540667e7563f034b533e137ed83c42c28842921678cff36ff8c06818465d17" -> "sha256:dac45152190f5ea5108c129b4669b202dacea951e96775bc9cbe1a3d7fdd47b1" [label=""];
  "sha256:dac45152190f5ea5108c129b4669b202dacea951e96775bc9cbe1a3d7fdd47b1" -> "sha256:b3dac24142e123d8f899e434794ee5c84eb2ee6aab91484ce546524b30d6f182" [label=""];
  "sha256:b3dac24142e123d8f899e434794ee5c84eb2ee6aab91484ce546524b30d6f182" -> "sha256:efecd3e415adbf459cf6e6810f6692c05f9b4c844a56069292065f3d1a9b5e17" [label=""];
  "sha256:efecd3e415adbf459cf6e6810f6692c05f9b4c844a56069292065f3d1a9b5e17" -> "sha256:456392de14671d2d4b9b54b436faa168ec92943d76c7896f90f38944916c19d0" [label=""];
  "sha256:456392de14671d2d4b9b54b436faa168ec92943d76c7896f90f38944916c19d0" -> "sha256:8284b029c74ae97bf891799af48e7e7fb24b08c7dd1c6f10dc131a5c588b91d3" [label=""];
  "sha256:8284b029c74ae97bf891799af48e7e7fb24b08c7dd1c6f10dc131a5c588b91d3" -> "sha256:0410a65d851c12a8a27c51f744994fcec0f58ef36acf491ae3b0693aba59f69d" [label=""];
  "sha256:0410a65d851c12a8a27c51f744994fcec0f58ef36acf491ae3b0693aba59f69d" -> "sha256:51748f8e48b062f32e172583d14207a3a8956afdec8b1d7a3830ef10160def2e" [label=""];
  "sha256:51748f8e48b062f32e172583d14207a3a8956afdec8b1d7a3830ef10160def2e" -> "sha256:b5011ae1503c8c4207463274d115ec42a9f0a257b4f8257c7073341065e3dd37" [label=""];
  "sha256:3be23947f6d88d113777a780216faf22a7fed1038a4ff5ab6be46b043c7e053d" -> "sha256:b5011ae1503c8c4207463274d115ec42a9f0a257b4f8257c7073341065e3dd37" [label=""];
  "sha256:b5011ae1503c8c4207463274d115ec42a9f0a257b4f8257c7073341065e3dd37" -> "sha256:e945693c46b2c4a31d941f24e722d65b9986d4b99c7f7a20cbab0c3162268cfd" [label=""];
  "sha256:e945693c46b2c4a31d941f24e722d65b9986d4b99c7f7a20cbab0c3162268cfd" -> "sha256:1d300335ebe524531a69fb042401f61b12fec87d561a1a9c1d0a124f8b4979bc" [label=""];
  "sha256:1d300335ebe524531a69fb042401f61b12fec87d561a1a9c1d0a124f8b4979bc" -> "sha256:e4d444505b3e766b1570eddf8219aab0e7d7ee4c3c5129edbc17f8dfff5dbad8" [label=""];
}

