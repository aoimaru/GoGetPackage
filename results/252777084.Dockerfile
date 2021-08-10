[app/sources/252777084.Dockerfile]
digraph {
  "sha256:b93007f7c19c0d272fd479130c935eb48465d068d111f4712f3093656985e76b" [label="docker-image://docker.io/library/node:4.4.3" shape="ellipse"];
  "sha256:018f51f1c14638536fb9a43231cc1d7dccd59079f48d7b4773ed6916bdf6107a" [label="/bin/sh -c apt-get update && apt-get install -y ruby sudo && gem install dpl heroku-api rendezvous && wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh && heroku --version && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:cdabb9ec6b6506e647811ae55310e07a79016f0635e32b32a98e2043376deba7" [label="sha256:cdabb9ec6b6506e647811ae55310e07a79016f0635e32b32a98e2043376deba7" shape="plaintext"];
  "sha256:b93007f7c19c0d272fd479130c935eb48465d068d111f4712f3093656985e76b" -> "sha256:018f51f1c14638536fb9a43231cc1d7dccd59079f48d7b4773ed6916bdf6107a" [label=""];
  "sha256:018f51f1c14638536fb9a43231cc1d7dccd59079f48d7b4773ed6916bdf6107a" -> "sha256:cdabb9ec6b6506e647811ae55310e07a79016f0635e32b32a98e2043376deba7" [label=""];
}

