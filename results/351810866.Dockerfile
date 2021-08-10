[app/sources/351810866.Dockerfile]
digraph {
  "sha256:0fb939674cc804a63bc41829a19d22519d6d2f1b7b180ca93915b9da4637d791" [label="docker-image://docker.io/library/java:8-jdk" shape="ellipse"];
  "sha256:ded7eb3130dce70a4771e3349a0e92e66e3a6e26cf6311cf50f2813180763f32" [label="/bin/sh -c apt-get update && apt-get install -y     git \tant \tunzip" shape="box"];
  "sha256:c3e489e1dc2d431f49f26ed478492c5af5e181b842c044f87439ccfa0e154736" [label="mkdir{path=/home}" shape="note"];
  "sha256:2a4e7e01edd8dd5ac3c576d5f70cf74bafa2e2d2c0be5ae3ef3637fd16881f04" [label="mkdir{path=/home/rtg-tools}" shape="note"];
  "sha256:bc5f3dfc5f4ee7c12f6fcd59bcd5ea8914b673c3160664afaaffb48a6a4289df" [label="/bin/sh -c git clone https://github.com/RealTimeGenomics/rtg-tools.git" shape="box"];
  "sha256:94400b05c87c8dde38c2dd2d95f254bc99673558c28feb5da4a4c770a70456ca" [label="mkdir{path=/home/rtg-tools/rtg-tools}" shape="note"];
  "sha256:989093e1b1d3c400c8640efd0c2028ee767503b56b1bbe3cc0a1c32acd155a6c" [label="/bin/sh -c git checkout 3.8.3" shape="box"];
  "sha256:9ad36269789a462ebb8fd005aa78c128c5e5c4a6f39be8ea9541f3a57d319117" [label="/bin/sh -c ant zip-nojre" shape="box"];
  "sha256:c6ff5f0522803812bd5b11c08df94ea5a30d2470bd9f68b0e18585ea38152eed" [label="mkdir{path=/home/rtgtools-protected}" shape="note"];
  "sha256:2f5c2ee13a3592f0b10e61c3cb5a2c6879acfebfc5593fac291f9f10f233c30b" [label="/bin/sh -c mv /home/rtg-tools/rtg-tools/build/rtg-tools.jar /home/rtgtools-protected/rtg-tools.jar" shape="box"];
  "sha256:55dfcd9a431bee9fc0150268df7f5c8674ae85864cffd70ba610be1ee052a57c" [label="/bin/sh -c mv /home/rtg-tools/rtg-tools/LICENSE.txt /home/rtgtools-protected/LICENSE.txt" shape="box"];
  "sha256:c8a9a579e3d5a65ff17af18b3c990cd098906f9fa8f5756e07ea45c22611ff17" [label="sha256:c8a9a579e3d5a65ff17af18b3c990cd098906f9fa8f5756e07ea45c22611ff17" shape="plaintext"];
  "sha256:0fb939674cc804a63bc41829a19d22519d6d2f1b7b180ca93915b9da4637d791" -> "sha256:ded7eb3130dce70a4771e3349a0e92e66e3a6e26cf6311cf50f2813180763f32" [label=""];
  "sha256:ded7eb3130dce70a4771e3349a0e92e66e3a6e26cf6311cf50f2813180763f32" -> "sha256:c3e489e1dc2d431f49f26ed478492c5af5e181b842c044f87439ccfa0e154736" [label=""];
  "sha256:c3e489e1dc2d431f49f26ed478492c5af5e181b842c044f87439ccfa0e154736" -> "sha256:2a4e7e01edd8dd5ac3c576d5f70cf74bafa2e2d2c0be5ae3ef3637fd16881f04" [label=""];
  "sha256:2a4e7e01edd8dd5ac3c576d5f70cf74bafa2e2d2c0be5ae3ef3637fd16881f04" -> "sha256:bc5f3dfc5f4ee7c12f6fcd59bcd5ea8914b673c3160664afaaffb48a6a4289df" [label=""];
  "sha256:bc5f3dfc5f4ee7c12f6fcd59bcd5ea8914b673c3160664afaaffb48a6a4289df" -> "sha256:94400b05c87c8dde38c2dd2d95f254bc99673558c28feb5da4a4c770a70456ca" [label=""];
  "sha256:94400b05c87c8dde38c2dd2d95f254bc99673558c28feb5da4a4c770a70456ca" -> "sha256:989093e1b1d3c400c8640efd0c2028ee767503b56b1bbe3cc0a1c32acd155a6c" [label=""];
  "sha256:989093e1b1d3c400c8640efd0c2028ee767503b56b1bbe3cc0a1c32acd155a6c" -> "sha256:9ad36269789a462ebb8fd005aa78c128c5e5c4a6f39be8ea9541f3a57d319117" [label=""];
  "sha256:9ad36269789a462ebb8fd005aa78c128c5e5c4a6f39be8ea9541f3a57d319117" -> "sha256:c6ff5f0522803812bd5b11c08df94ea5a30d2470bd9f68b0e18585ea38152eed" [label=""];
  "sha256:c6ff5f0522803812bd5b11c08df94ea5a30d2470bd9f68b0e18585ea38152eed" -> "sha256:2f5c2ee13a3592f0b10e61c3cb5a2c6879acfebfc5593fac291f9f10f233c30b" [label=""];
  "sha256:2f5c2ee13a3592f0b10e61c3cb5a2c6879acfebfc5593fac291f9f10f233c30b" -> "sha256:55dfcd9a431bee9fc0150268df7f5c8674ae85864cffd70ba610be1ee052a57c" [label=""];
  "sha256:55dfcd9a431bee9fc0150268df7f5c8674ae85864cffd70ba610be1ee052a57c" -> "sha256:c8a9a579e3d5a65ff17af18b3c990cd098906f9fa8f5756e07ea45c22611ff17" [label=""];
}

