[app/sources/355859428.Dockerfile]
digraph {
  "sha256:50c016901c26153a5e90207a9c0de1b3a3a28bef3fc49078faa1bfe91027b36b" [label="docker-image://docker.io/cfplatformeng/tile-generator:latest" shape="ellipse"];
  "sha256:a4ac284b0a240fa4ac43a6585c937de350efa17b401406c56d865daddfeafd2f" [label="https://cli.run.pivotal.io/stable?release=linux64-binary&source=github-rel" shape="ellipse"];
  "sha256:7e0bade90a56026fed99fd6e195297156d5a095610f440ebedd6de5ee6a9691d" [label="copy{src=/stable, dest=/cf_cli.tgz}" shape="note"];
  "sha256:f9118f42d0c04289cf6d80ad27ba2053f6a63b3b241554b18ae179a10120f8d6" [label="/bin/sh -c tar xvf cf_cli.tgz cf" shape="box"];
  "sha256:11361b8a4802e32f89328c3a7638eee1810f05cf63c5aab4dac2705685441274" [label="/bin/sh -c mv cf /bin" shape="box"];
  "sha256:0f23ee94aaf1d3d3572c5efde5638786f4e61da45eab93d1bd330906e64d9579" [label="/bin/sh -c cf --version" shape="box"];
  "sha256:c5d789aced998220df7ee92ee63449a75e9635f3564b0c931f8de6aad1c831fc" [label="sha256:c5d789aced998220df7ee92ee63449a75e9635f3564b0c931f8de6aad1c831fc" shape="plaintext"];
  "sha256:50c016901c26153a5e90207a9c0de1b3a3a28bef3fc49078faa1bfe91027b36b" -> "sha256:7e0bade90a56026fed99fd6e195297156d5a095610f440ebedd6de5ee6a9691d" [label=""];
  "sha256:a4ac284b0a240fa4ac43a6585c937de350efa17b401406c56d865daddfeafd2f" -> "sha256:7e0bade90a56026fed99fd6e195297156d5a095610f440ebedd6de5ee6a9691d" [label=""];
  "sha256:7e0bade90a56026fed99fd6e195297156d5a095610f440ebedd6de5ee6a9691d" -> "sha256:f9118f42d0c04289cf6d80ad27ba2053f6a63b3b241554b18ae179a10120f8d6" [label=""];
  "sha256:f9118f42d0c04289cf6d80ad27ba2053f6a63b3b241554b18ae179a10120f8d6" -> "sha256:11361b8a4802e32f89328c3a7638eee1810f05cf63c5aab4dac2705685441274" [label=""];
  "sha256:11361b8a4802e32f89328c3a7638eee1810f05cf63c5aab4dac2705685441274" -> "sha256:0f23ee94aaf1d3d3572c5efde5638786f4e61da45eab93d1bd330906e64d9579" [label=""];
  "sha256:0f23ee94aaf1d3d3572c5efde5638786f4e61da45eab93d1bd330906e64d9579" -> "sha256:c5d789aced998220df7ee92ee63449a75e9635f3564b0c931f8de6aad1c831fc" [label=""];
}

