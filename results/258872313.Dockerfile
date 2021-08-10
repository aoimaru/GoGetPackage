[app/sources/258872313.Dockerfile]
digraph {
  "sha256:1a53636ea482470cf7c776a1e7f9fa253a28cb02a3b74f9ef41c06032c64e425" [label="docker-image://docker.io/osrg/dind-ovs-ryu@sha256:4e23b408ff65de149a493fc9eacbcba4589ed832fc71b0fd450e6a85e76f19d5" shape="ellipse"];
  "sha256:49f38b1c634e4962d5011648979231cc7ddfd2d67411574a03c90a9b3cd7a40c" [label="/bin/sh -c pip uninstall -y ryu && pip install ryu==3.20.2" shape="box"];
  "sha256:3c58da2863d5e98440afaf2b5d5cc1a38b39d1c22d7849d877ad8314017a0d74" [label="/bin/sh -c wget --no-check-certificate --quiet https://raw.githubusercontent.com/osrg/pipework/fix-pid-conflict/pipework -O /usr/local/bin/pipework" shape="box"];
  "sha256:38354656036f5ef17583d4216048d6f913638b11abd255fc2d2817290ebe9397" [label="/bin/sh -c chmod +x /usr/local/bin/pipework" shape="box"];
  "sha256:07e052d297fc31af6431819006939476afe03f1f059e1d7d3c622d7ede983939" [label="/bin/sh -c apt-get update && apt-get install -y python-flask python-scapy python-zmq sudo" shape="box"];
  "sha256:9efb574a240c1bd82b21931775e31a66c5929249a917b6f157aee3f154537da2" [label="/bin/sh -c pip install zktraffic==0.1.3 hexdump" shape="box"];
  "sha256:afb298a3c0a3ee2111cc824a2c71fc4a0be7ee1b8a58e35a9a05caf3d8a62cac" [label="/bin/sh -c git clone https://github.com/osrg/earthquake.git &&   ( cd earthquake &&     git checkout ${EARTHQUAKE_GIT_COMMIT} &&     git submodule init &&     git submodule update )" shape="box"];
  "sha256:60a469d22cc428b3c54480616cf24f4123ae89c61aaa7f63cc99bc040ee7e1ba" [label="mkdir{path=/earthquake/example/zk-found-bug.ether}" shape="note"];
  "sha256:c66fbdc8ae98ad43e151993b02bd92f5fccbe2ff938ede5d2f2c5ebf7729ec9b" [label="local://context" shape="ellipse"];
  "sha256:63816cff0dced08b4fd80b54dae7c5d010e689942d45680d167b03a0824a7e5f" [label="copy{src=/banner.txt, dest=/banner.txt}" shape="note"];
  "sha256:4eff98af6e26c3c5437b985529e5c435f38668f406eb7b3b7f5164024103c9ee" [label="copy{src=/init.earthquake-zookeeper.sh, dest=/init.earthquake-zookeeper.sh}" shape="note"];
  "sha256:73d31c05e6fe2b8ece52f68769ec5c0716b6b84a5ffda23a322e951e0a31221e" [label="/bin/sh -c chmod +x /init.earthquake-zookeeper.sh" shape="box"];
  "sha256:208c4fc47ab49985675c58bdb0be074637c5211c1e941c955fede875fcc29b27" [label="sha256:208c4fc47ab49985675c58bdb0be074637c5211c1e941c955fede875fcc29b27" shape="plaintext"];
  "sha256:1a53636ea482470cf7c776a1e7f9fa253a28cb02a3b74f9ef41c06032c64e425" -> "sha256:49f38b1c634e4962d5011648979231cc7ddfd2d67411574a03c90a9b3cd7a40c" [label=""];
  "sha256:49f38b1c634e4962d5011648979231cc7ddfd2d67411574a03c90a9b3cd7a40c" -> "sha256:3c58da2863d5e98440afaf2b5d5cc1a38b39d1c22d7849d877ad8314017a0d74" [label=""];
  "sha256:3c58da2863d5e98440afaf2b5d5cc1a38b39d1c22d7849d877ad8314017a0d74" -> "sha256:38354656036f5ef17583d4216048d6f913638b11abd255fc2d2817290ebe9397" [label=""];
  "sha256:38354656036f5ef17583d4216048d6f913638b11abd255fc2d2817290ebe9397" -> "sha256:07e052d297fc31af6431819006939476afe03f1f059e1d7d3c622d7ede983939" [label=""];
  "sha256:07e052d297fc31af6431819006939476afe03f1f059e1d7d3c622d7ede983939" -> "sha256:9efb574a240c1bd82b21931775e31a66c5929249a917b6f157aee3f154537da2" [label=""];
  "sha256:9efb574a240c1bd82b21931775e31a66c5929249a917b6f157aee3f154537da2" -> "sha256:afb298a3c0a3ee2111cc824a2c71fc4a0be7ee1b8a58e35a9a05caf3d8a62cac" [label=""];
  "sha256:afb298a3c0a3ee2111cc824a2c71fc4a0be7ee1b8a58e35a9a05caf3d8a62cac" -> "sha256:60a469d22cc428b3c54480616cf24f4123ae89c61aaa7f63cc99bc040ee7e1ba" [label=""];
  "sha256:60a469d22cc428b3c54480616cf24f4123ae89c61aaa7f63cc99bc040ee7e1ba" -> "sha256:63816cff0dced08b4fd80b54dae7c5d010e689942d45680d167b03a0824a7e5f" [label=""];
  "sha256:c66fbdc8ae98ad43e151993b02bd92f5fccbe2ff938ede5d2f2c5ebf7729ec9b" -> "sha256:63816cff0dced08b4fd80b54dae7c5d010e689942d45680d167b03a0824a7e5f" [label=""];
  "sha256:63816cff0dced08b4fd80b54dae7c5d010e689942d45680d167b03a0824a7e5f" -> "sha256:4eff98af6e26c3c5437b985529e5c435f38668f406eb7b3b7f5164024103c9ee" [label=""];
  "sha256:c66fbdc8ae98ad43e151993b02bd92f5fccbe2ff938ede5d2f2c5ebf7729ec9b" -> "sha256:4eff98af6e26c3c5437b985529e5c435f38668f406eb7b3b7f5164024103c9ee" [label=""];
  "sha256:4eff98af6e26c3c5437b985529e5c435f38668f406eb7b3b7f5164024103c9ee" -> "sha256:73d31c05e6fe2b8ece52f68769ec5c0716b6b84a5ffda23a322e951e0a31221e" [label=""];
  "sha256:73d31c05e6fe2b8ece52f68769ec5c0716b6b84a5ffda23a322e951e0a31221e" -> "sha256:208c4fc47ab49985675c58bdb0be074637c5211c1e941c955fede875fcc29b27" [label=""];
}

