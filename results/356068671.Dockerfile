[app/sources/356068671.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:4ccac45fe795e02ad68856210e700c5d9fcb16d8b8a51381d5b42791455c05d7" [label="/bin/sh -c apt-get update && apt-get install -y tree" shape="box"];
  "sha256:3f899c1ecb5f232f54c1cf91af32d0f6e75f8ddd740fa0ed2600f598e5057705" [label="sha256:3f899c1ecb5f232f54c1cf91af32d0f6e75f8ddd740fa0ed2600f598e5057705" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:4ccac45fe795e02ad68856210e700c5d9fcb16d8b8a51381d5b42791455c05d7" [label=""];
  "sha256:4ccac45fe795e02ad68856210e700c5d9fcb16d8b8a51381d5b42791455c05d7" -> "sha256:3f899c1ecb5f232f54c1cf91af32d0f6e75f8ddd740fa0ed2600f598e5057705" [label=""];
}

