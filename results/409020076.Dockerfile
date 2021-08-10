[app/sources/409020076.Dockerfile]
digraph {
  "sha256:908df08c050773b953a9db8ccff9a9bb27b11fec4723011dba7ed4daa9f1e068" [label="docker-image://docker.io/library/elixir:1.3" shape="ellipse"];
  "sha256:0c0e4a5709f3339b00d6db5ca7310c8beb632e1ecd0c24967e2f13cb58a86624" [label="/bin/sh -c apt-get update -qq     && apt-get install -y inotify-tools entr    && apt-get purge --auto-remove -y     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c7153d6e7464dd4ca0810eabb990e0de8f0f0f04dd4f60f9b7e35a70b4cdced8" [label="mkdir{path=/code}" shape="note"];
  "sha256:19c6f87bda46320c14c51bcbe83dc3f6b9e4decffbfdaba57682f031d55fa8bb" [label="/bin/sh -c mix local.hex --force" shape="box"];
  "sha256:4d0cc91ae86f737be8e73388e7f3e54b63457a078cc78a7e0014c8b3dfc474fc" [label="sha256:4d0cc91ae86f737be8e73388e7f3e54b63457a078cc78a7e0014c8b3dfc474fc" shape="plaintext"];
  "sha256:908df08c050773b953a9db8ccff9a9bb27b11fec4723011dba7ed4daa9f1e068" -> "sha256:0c0e4a5709f3339b00d6db5ca7310c8beb632e1ecd0c24967e2f13cb58a86624" [label=""];
  "sha256:0c0e4a5709f3339b00d6db5ca7310c8beb632e1ecd0c24967e2f13cb58a86624" -> "sha256:c7153d6e7464dd4ca0810eabb990e0de8f0f0f04dd4f60f9b7e35a70b4cdced8" [label=""];
  "sha256:c7153d6e7464dd4ca0810eabb990e0de8f0f0f04dd4f60f9b7e35a70b4cdced8" -> "sha256:19c6f87bda46320c14c51bcbe83dc3f6b9e4decffbfdaba57682f031d55fa8bb" [label=""];
  "sha256:19c6f87bda46320c14c51bcbe83dc3f6b9e4decffbfdaba57682f031d55fa8bb" -> "sha256:4d0cc91ae86f737be8e73388e7f3e54b63457a078cc78a7e0014c8b3dfc474fc" [label=""];
}

