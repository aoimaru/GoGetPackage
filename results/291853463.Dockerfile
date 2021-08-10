[app/sources/291853463.Dockerfile]
digraph {
  "sha256:49a2f33b1a5e86f3af347423a21adffce152f7c21d02f8cbdfd9819e535e862d" [label="local://context" shape="ellipse"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" [label="docker-image://docker.io/library/ubuntu:17.10" shape="ellipse"];
  "sha256:41c9d36dcf16e0bb0e5c18508e1ef3d8fe7b1553717bb6c5e38153c7462b05d1" [label="/bin/sh -c apt-get -y update && apt-get -y upgrade" shape="box"];
  "sha256:355c0377b0b2490062907ce23134cf634ccd5f544b913634cb9d6ea2ae999e7f" [label="/bin/sh -c apt-get -y install python3 xinetd" shape="box"];
  "sha256:d3e7d069ad9be6058c7d5e5100ce2a96705c5d31137a41aa1bf4c5121251f043" [label="/bin/sh -c groupadd -g 1000 baby && useradd -g baby -u 1000 baby" shape="box"];
  "sha256:ab685ee1a9c161f585771f2fa2e945d05936f027fbc1e5b8c9d7eeccb052cb1e" [label="copy{src=/flag, dest=/flag}" shape="note"];
  "sha256:2ff4b1d3b5223e9e1268ba56aea665be8fe505049ea56f6fcbcc4ed91d135b8f" [label="copy{src=/chal/get_flag, dest=/get_flag}" shape="note"];
  "sha256:a969641dba2813c7645a9d4724b660fb845932b30886c40f8104a7285554f839" [label="/bin/sh -c chown root:root /flag     && chown root:root /get_flag     && chmod 4555 /get_flag     && chmod 400 /flag" shape="box"];
  "sha256:1215f8cd47064b56a3de7e2e603fe66ad1d8d19383e101e3ca2f30a5f4c408c2" [label="copy{src=/xinetd.conf, dest=/etc/xinetd.d/chall}" shape="note"];
  "sha256:37d107c2886b758fa7c83b6fdc8d532baf9ca471db326444f610bb86615a8d5a" [label="copy{src=/chal/shell.py, dest=/bin/shell.py}" shape="note"];
  "sha256:fbc799d8af5b1c27227464ff2271eef84e2bf9884fd0210479ad1faa6a1f4256" [label="copy{src=/chal/run.sh, dest=/chal/run.sh}" shape="note"];
  "sha256:ed6861c02b634bf280c2b617271fb109ab4db2251ca40fbd9a6796a306cbf337" [label="/bin/sh -c chmod +x /bin/shell.py /chal/run.sh" shape="box"];
  "sha256:2b94e20bf3241a7e0fbf6c1accdeda2b1c9b117489590d70e9a2c56aae502ea1" [label="/bin/sh -c chmod 733 /tmp" shape="box"];
  "sha256:eed5de14853a18818a5ab78b71d696d773d473c149bd82a9a3a9dfc0781cc565" [label="sha256:eed5de14853a18818a5ab78b71d696d773d473c149bd82a9a3a9dfc0781cc565" shape="plaintext"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" -> "sha256:41c9d36dcf16e0bb0e5c18508e1ef3d8fe7b1553717bb6c5e38153c7462b05d1" [label=""];
  "sha256:41c9d36dcf16e0bb0e5c18508e1ef3d8fe7b1553717bb6c5e38153c7462b05d1" -> "sha256:355c0377b0b2490062907ce23134cf634ccd5f544b913634cb9d6ea2ae999e7f" [label=""];
  "sha256:355c0377b0b2490062907ce23134cf634ccd5f544b913634cb9d6ea2ae999e7f" -> "sha256:d3e7d069ad9be6058c7d5e5100ce2a96705c5d31137a41aa1bf4c5121251f043" [label=""];
  "sha256:d3e7d069ad9be6058c7d5e5100ce2a96705c5d31137a41aa1bf4c5121251f043" -> "sha256:ab685ee1a9c161f585771f2fa2e945d05936f027fbc1e5b8c9d7eeccb052cb1e" [label=""];
  "sha256:49a2f33b1a5e86f3af347423a21adffce152f7c21d02f8cbdfd9819e535e862d" -> "sha256:ab685ee1a9c161f585771f2fa2e945d05936f027fbc1e5b8c9d7eeccb052cb1e" [label=""];
  "sha256:ab685ee1a9c161f585771f2fa2e945d05936f027fbc1e5b8c9d7eeccb052cb1e" -> "sha256:2ff4b1d3b5223e9e1268ba56aea665be8fe505049ea56f6fcbcc4ed91d135b8f" [label=""];
  "sha256:49a2f33b1a5e86f3af347423a21adffce152f7c21d02f8cbdfd9819e535e862d" -> "sha256:2ff4b1d3b5223e9e1268ba56aea665be8fe505049ea56f6fcbcc4ed91d135b8f" [label=""];
  "sha256:2ff4b1d3b5223e9e1268ba56aea665be8fe505049ea56f6fcbcc4ed91d135b8f" -> "sha256:a969641dba2813c7645a9d4724b660fb845932b30886c40f8104a7285554f839" [label=""];
  "sha256:a969641dba2813c7645a9d4724b660fb845932b30886c40f8104a7285554f839" -> "sha256:1215f8cd47064b56a3de7e2e603fe66ad1d8d19383e101e3ca2f30a5f4c408c2" [label=""];
  "sha256:49a2f33b1a5e86f3af347423a21adffce152f7c21d02f8cbdfd9819e535e862d" -> "sha256:1215f8cd47064b56a3de7e2e603fe66ad1d8d19383e101e3ca2f30a5f4c408c2" [label=""];
  "sha256:1215f8cd47064b56a3de7e2e603fe66ad1d8d19383e101e3ca2f30a5f4c408c2" -> "sha256:37d107c2886b758fa7c83b6fdc8d532baf9ca471db326444f610bb86615a8d5a" [label=""];
  "sha256:49a2f33b1a5e86f3af347423a21adffce152f7c21d02f8cbdfd9819e535e862d" -> "sha256:37d107c2886b758fa7c83b6fdc8d532baf9ca471db326444f610bb86615a8d5a" [label=""];
  "sha256:37d107c2886b758fa7c83b6fdc8d532baf9ca471db326444f610bb86615a8d5a" -> "sha256:fbc799d8af5b1c27227464ff2271eef84e2bf9884fd0210479ad1faa6a1f4256" [label=""];
  "sha256:49a2f33b1a5e86f3af347423a21adffce152f7c21d02f8cbdfd9819e535e862d" -> "sha256:fbc799d8af5b1c27227464ff2271eef84e2bf9884fd0210479ad1faa6a1f4256" [label=""];
  "sha256:fbc799d8af5b1c27227464ff2271eef84e2bf9884fd0210479ad1faa6a1f4256" -> "sha256:ed6861c02b634bf280c2b617271fb109ab4db2251ca40fbd9a6796a306cbf337" [label=""];
  "sha256:ed6861c02b634bf280c2b617271fb109ab4db2251ca40fbd9a6796a306cbf337" -> "sha256:2b94e20bf3241a7e0fbf6c1accdeda2b1c9b117489590d70e9a2c56aae502ea1" [label=""];
  "sha256:2b94e20bf3241a7e0fbf6c1accdeda2b1c9b117489590d70e9a2c56aae502ea1" -> "sha256:eed5de14853a18818a5ab78b71d696d773d473c149bd82a9a3a9dfc0781cc565" [label=""];
}

