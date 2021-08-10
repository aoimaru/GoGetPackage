[app/sources/252777863.Dockerfile]
digraph {
  "sha256:804667944a1b4ef86a44237ddd3f03acec04622389d02bd1bde8b20264aeb41d" [label="docker-image://docker.io/sequenceiq/hadoop-docker:2.5.2" shape="ellipse"];
  "sha256:41ead5d6e7e1df85d942fd64732bd60cdd3705eaa3ca30549fd16973efc8aca0" [label="/bin/sh -c curl -LO http://mirror.vorboss.net/apache/pig/pig-0.14.0/pig-0.14.0.tar.gz" shape="box"];
  "sha256:ac788f69ad04472e2dcaa154db137ee8100c6a366cdc4e0c68e2a035bfbe77fc" [label="/bin/sh -c tar xzf pig-0.14.0.tar.gz" shape="box"];
  "sha256:52bffb41451398311d66d493f8abdaa92dce92ca7710fda8b8773f4e522abce5" [label="sha256:52bffb41451398311d66d493f8abdaa92dce92ca7710fda8b8773f4e522abce5" shape="plaintext"];
  "sha256:804667944a1b4ef86a44237ddd3f03acec04622389d02bd1bde8b20264aeb41d" -> "sha256:41ead5d6e7e1df85d942fd64732bd60cdd3705eaa3ca30549fd16973efc8aca0" [label=""];
  "sha256:41ead5d6e7e1df85d942fd64732bd60cdd3705eaa3ca30549fd16973efc8aca0" -> "sha256:ac788f69ad04472e2dcaa154db137ee8100c6a366cdc4e0c68e2a035bfbe77fc" [label=""];
  "sha256:ac788f69ad04472e2dcaa154db137ee8100c6a366cdc4e0c68e2a035bfbe77fc" -> "sha256:52bffb41451398311d66d493f8abdaa92dce92ca7710fda8b8773f4e522abce5" [label=""];
}

