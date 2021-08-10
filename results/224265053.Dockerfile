[app/sources/224265053.Dockerfile]
digraph {
  "sha256:06e105ec5b909818a8dd09d80569f0fa478b4f232282fdb947f640e4a68d244d" [label="local://context" shape="ellipse"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:d6521cbbed2c1c4c0cde6afbe44c63dc35166277fa41639d0dd8cf019d5cd7a7" [label="/bin/sh -c apt-get update && apt-get dist-upgrade -yf && apt-get install -y     pciutils usbutils unzip telnet wget axel amqp-tools tshark npm nodejs aircrack-ng curl nodejs libpcap-dev" shape="box"];
  "sha256:4db35cb977ff09cbdc9d6702d097d8910cbc3a45f4fdaa4320ff56c3aec69217" [label="/bin/sh -c apt-get install -y nodejs-legacy git subversion vim" shape="box"];
  "sha256:909add1f087f4caa56230bc4ede86c6977f4436f32c2954c8a2ddb3d797f2a23" [label="mkdir{path=/wifi}" shape="note"];
  "sha256:d44d0ae1dcf0f004444855fa8002944e0107b9e021a3597350e445a71f67319c" [label="/bin/sh -c git clone git://github.com/mranney/node_pcap.git" shape="box"];
  "sha256:9fcdd2f4996b625260c6b3c3a179ac5bce80345cdc419259788f47d1d98eece2" [label="mkdir{path=/wifi/node_pcap}" shape="note"];
  "sha256:4031c4ecc9df54e01f5bab7f01cccb7e28aa9f7bcb11ee1611e0ec0e023a9a8f" [label="/bin/sh -c npm install nan socketwatcher" shape="box"];
  "sha256:e36bcb6cad62e13145d2d83426910d15b324c6751bba9aeda1a04a9415873c6a" [label="/bin/sh -c npm install . -g" shape="box"];
  "sha256:c934df55b01a9406d740019f8be4d7796d3e313ac9cadf5597947c12db6eab19" [label="/bin/sh -c node-gyp configure build install" shape="box"];
  "sha256:5eee313adcf4f92c65fd9b087f1797e0c47081eb7e7bff868f90bce51e6cb51d" [label="mkdir{path=/wifi}" shape="note"];
  "sha256:cc27eb3c8bb9ea9ed35401510eed4f7ef8333fdbf01868824e07fd500f842bdf" [label="copy{src=/bin/start.sh, dest=/wifi/}" shape="note"];
  "sha256:e42b1654d8b46f062bc4d16eaf2082388b8dd77004173456753cdc5565eb83da" [label="copy{src=/bin/collect.sh, dest=/wifi/}" shape="note"];
  "sha256:86b8dbd0fff2e2b91d409a77e2b6acd7ff917ee2142f4fdb4f84d0205410b68c" [label="copy{src=/bin/collect_probes.sh, dest=/wifi/}" shape="note"];
  "sha256:f803c83266a2f9311b8434dfc5b7e46d53ca0119e9e92d027fdefde47541e3f4" [label="copy{src=/bin/collect_all_packets.sh, dest=/wifi/}" shape="note"];
  "sha256:948306919974cb2a64d3bf3b507e250b34283ab47927d9e7cec303d6a4859fdb" [label="copy{src=/bin/parse.sh, dest=/wifi/}" shape="note"];
  "sha256:592e43e9c74051892194d75a74dc240c9b751dc8d9d49f81cafdc3ef506cea1e" [label="copy{src=/bin/probes.js, dest=/wifi/}" shape="note"];
  "sha256:fd3d24845b07043a62947fc00057f06fffd42c729abd148f643b3925b557b0d0" [label="sha256:fd3d24845b07043a62947fc00057f06fffd42c729abd148f643b3925b557b0d0" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:d6521cbbed2c1c4c0cde6afbe44c63dc35166277fa41639d0dd8cf019d5cd7a7" [label=""];
  "sha256:d6521cbbed2c1c4c0cde6afbe44c63dc35166277fa41639d0dd8cf019d5cd7a7" -> "sha256:4db35cb977ff09cbdc9d6702d097d8910cbc3a45f4fdaa4320ff56c3aec69217" [label=""];
  "sha256:4db35cb977ff09cbdc9d6702d097d8910cbc3a45f4fdaa4320ff56c3aec69217" -> "sha256:909add1f087f4caa56230bc4ede86c6977f4436f32c2954c8a2ddb3d797f2a23" [label=""];
  "sha256:909add1f087f4caa56230bc4ede86c6977f4436f32c2954c8a2ddb3d797f2a23" -> "sha256:d44d0ae1dcf0f004444855fa8002944e0107b9e021a3597350e445a71f67319c" [label=""];
  "sha256:d44d0ae1dcf0f004444855fa8002944e0107b9e021a3597350e445a71f67319c" -> "sha256:9fcdd2f4996b625260c6b3c3a179ac5bce80345cdc419259788f47d1d98eece2" [label=""];
  "sha256:9fcdd2f4996b625260c6b3c3a179ac5bce80345cdc419259788f47d1d98eece2" -> "sha256:4031c4ecc9df54e01f5bab7f01cccb7e28aa9f7bcb11ee1611e0ec0e023a9a8f" [label=""];
  "sha256:4031c4ecc9df54e01f5bab7f01cccb7e28aa9f7bcb11ee1611e0ec0e023a9a8f" -> "sha256:e36bcb6cad62e13145d2d83426910d15b324c6751bba9aeda1a04a9415873c6a" [label=""];
  "sha256:e36bcb6cad62e13145d2d83426910d15b324c6751bba9aeda1a04a9415873c6a" -> "sha256:c934df55b01a9406d740019f8be4d7796d3e313ac9cadf5597947c12db6eab19" [label=""];
  "sha256:c934df55b01a9406d740019f8be4d7796d3e313ac9cadf5597947c12db6eab19" -> "sha256:5eee313adcf4f92c65fd9b087f1797e0c47081eb7e7bff868f90bce51e6cb51d" [label=""];
  "sha256:5eee313adcf4f92c65fd9b087f1797e0c47081eb7e7bff868f90bce51e6cb51d" -> "sha256:cc27eb3c8bb9ea9ed35401510eed4f7ef8333fdbf01868824e07fd500f842bdf" [label=""];
  "sha256:06e105ec5b909818a8dd09d80569f0fa478b4f232282fdb947f640e4a68d244d" -> "sha256:cc27eb3c8bb9ea9ed35401510eed4f7ef8333fdbf01868824e07fd500f842bdf" [label=""];
  "sha256:cc27eb3c8bb9ea9ed35401510eed4f7ef8333fdbf01868824e07fd500f842bdf" -> "sha256:e42b1654d8b46f062bc4d16eaf2082388b8dd77004173456753cdc5565eb83da" [label=""];
  "sha256:06e105ec5b909818a8dd09d80569f0fa478b4f232282fdb947f640e4a68d244d" -> "sha256:e42b1654d8b46f062bc4d16eaf2082388b8dd77004173456753cdc5565eb83da" [label=""];
  "sha256:e42b1654d8b46f062bc4d16eaf2082388b8dd77004173456753cdc5565eb83da" -> "sha256:86b8dbd0fff2e2b91d409a77e2b6acd7ff917ee2142f4fdb4f84d0205410b68c" [label=""];
  "sha256:06e105ec5b909818a8dd09d80569f0fa478b4f232282fdb947f640e4a68d244d" -> "sha256:86b8dbd0fff2e2b91d409a77e2b6acd7ff917ee2142f4fdb4f84d0205410b68c" [label=""];
  "sha256:86b8dbd0fff2e2b91d409a77e2b6acd7ff917ee2142f4fdb4f84d0205410b68c" -> "sha256:f803c83266a2f9311b8434dfc5b7e46d53ca0119e9e92d027fdefde47541e3f4" [label=""];
  "sha256:06e105ec5b909818a8dd09d80569f0fa478b4f232282fdb947f640e4a68d244d" -> "sha256:f803c83266a2f9311b8434dfc5b7e46d53ca0119e9e92d027fdefde47541e3f4" [label=""];
  "sha256:f803c83266a2f9311b8434dfc5b7e46d53ca0119e9e92d027fdefde47541e3f4" -> "sha256:948306919974cb2a64d3bf3b507e250b34283ab47927d9e7cec303d6a4859fdb" [label=""];
  "sha256:06e105ec5b909818a8dd09d80569f0fa478b4f232282fdb947f640e4a68d244d" -> "sha256:948306919974cb2a64d3bf3b507e250b34283ab47927d9e7cec303d6a4859fdb" [label=""];
  "sha256:948306919974cb2a64d3bf3b507e250b34283ab47927d9e7cec303d6a4859fdb" -> "sha256:592e43e9c74051892194d75a74dc240c9b751dc8d9d49f81cafdc3ef506cea1e" [label=""];
  "sha256:06e105ec5b909818a8dd09d80569f0fa478b4f232282fdb947f640e4a68d244d" -> "sha256:592e43e9c74051892194d75a74dc240c9b751dc8d9d49f81cafdc3ef506cea1e" [label=""];
  "sha256:592e43e9c74051892194d75a74dc240c9b751dc8d9d49f81cafdc3ef506cea1e" -> "sha256:fd3d24845b07043a62947fc00057f06fffd42c729abd148f643b3925b557b0d0" [label=""];
}

