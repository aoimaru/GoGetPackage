[app/sources/128762921.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:f925d92e08d4683c419ec51ec5f9c22e4f8e8619bee0917250de7ad653299e4b" [label="/bin/sh -c sed -i \"s/http:\\/\\/archive.ubuntu.com/http:\\/\\/mirrors.ustc.edu.cn/g\" /etc/apt/sources.list" shape="box"];
  "sha256:6c0c05bce7cd5013444d71aa68ad2a4d0eca7c185f75bcabc20ed2ed89aa38bc" [label="/bin/sh -c apt-get update && apt-get -y dist-upgrade" shape="box"];
  "sha256:10d1bc01f0d0678ff42f33c4993b90e508d660fc8a935e40d87278980e70f236" [label="/bin/sh -c apt-get install -y lib32z1 xinetd timelimit" shape="box"];
  "sha256:41a02151c972cc5e2a555a65ebaf12773eec682262d1f84b8e50b323f686f82e" [label="/bin/sh -c useradd -u 8888 -m pwn" shape="box"];
  "sha256:4a969277fa232b6ab3c5749e7a2a17bef5269b964f963a28358a070be30cc0c6" [label="sha256:4a969277fa232b6ab3c5749e7a2a17bef5269b964f963a28358a070be30cc0c6" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:f925d92e08d4683c419ec51ec5f9c22e4f8e8619bee0917250de7ad653299e4b" [label=""];
  "sha256:f925d92e08d4683c419ec51ec5f9c22e4f8e8619bee0917250de7ad653299e4b" -> "sha256:6c0c05bce7cd5013444d71aa68ad2a4d0eca7c185f75bcabc20ed2ed89aa38bc" [label=""];
  "sha256:6c0c05bce7cd5013444d71aa68ad2a4d0eca7c185f75bcabc20ed2ed89aa38bc" -> "sha256:10d1bc01f0d0678ff42f33c4993b90e508d660fc8a935e40d87278980e70f236" [label=""];
  "sha256:10d1bc01f0d0678ff42f33c4993b90e508d660fc8a935e40d87278980e70f236" -> "sha256:41a02151c972cc5e2a555a65ebaf12773eec682262d1f84b8e50b323f686f82e" [label=""];
  "sha256:41a02151c972cc5e2a555a65ebaf12773eec682262d1f84b8e50b323f686f82e" -> "sha256:4a969277fa232b6ab3c5749e7a2a17bef5269b964f963a28358a070be30cc0c6" [label=""];
}

