[app/sources/177559384.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:6b851fcf09cb693b5635a07ecaf0f814f89250443b456b0f2072fda9d080e5b6" [label="/bin/sh -c apt-get update && apt-get install -y \t\tlibleveldb-dev     elasticsearch \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:467f5beaee07fd25590e5cf306eccfa039234bf722c9221a4012a124f00712a1" [label="/bin/sh -c go get github.com/TheDistributedBay/TheDistributedBay" shape="box"];
  "sha256:9e1b640b6d256ccdc586468fe124d121394ed3846843a4b89dc1054164f379e7" [label="/bin/sh -c go install github.com/TheDistributedBay/TheDistributedBay" shape="box"];
  "sha256:3e7d6abf6cc3515ef8187fa0fc00fdd864163fef9bd36c5d2d6c023814c33012" [label="sha256:3e7d6abf6cc3515ef8187fa0fc00fdd864163fef9bd36c5d2d6c023814c33012" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:6b851fcf09cb693b5635a07ecaf0f814f89250443b456b0f2072fda9d080e5b6" [label=""];
  "sha256:6b851fcf09cb693b5635a07ecaf0f814f89250443b456b0f2072fda9d080e5b6" -> "sha256:467f5beaee07fd25590e5cf306eccfa039234bf722c9221a4012a124f00712a1" [label=""];
  "sha256:467f5beaee07fd25590e5cf306eccfa039234bf722c9221a4012a124f00712a1" -> "sha256:9e1b640b6d256ccdc586468fe124d121394ed3846843a4b89dc1054164f379e7" [label=""];
  "sha256:9e1b640b6d256ccdc586468fe124d121394ed3846843a4b89dc1054164f379e7" -> "sha256:3e7d6abf6cc3515ef8187fa0fc00fdd864163fef9bd36c5d2d6c023814c33012" [label=""];
}

