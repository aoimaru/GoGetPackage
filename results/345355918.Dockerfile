[app/sources/345355918.Dockerfile]
digraph {
  "sha256:096edd65b88a0c90ac9d8e3e53a0b436a1ffa4b3348f9d9f582395792cec006d" [label="docker-image://docker.io/balenalib/armv7hf-debian:sid-run" shape="ellipse"];
  "sha256:f5ddff6cfab9de5ee84919c65b0a2bbe76350d27003f0f16cfbca8d7b7a28daa" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:149d2cf00370c39dd74b967f5262bdfca782ae5617aa13a0e282f783577c862b" [label="sha256:149d2cf00370c39dd74b967f5262bdfca782ae5617aa13a0e282f783577c862b" shape="plaintext"];
  "sha256:096edd65b88a0c90ac9d8e3e53a0b436a1ffa4b3348f9d9f582395792cec006d" -> "sha256:f5ddff6cfab9de5ee84919c65b0a2bbe76350d27003f0f16cfbca8d7b7a28daa" [label=""];
  "sha256:f5ddff6cfab9de5ee84919c65b0a2bbe76350d27003f0f16cfbca8d7b7a28daa" -> "sha256:149d2cf00370c39dd74b967f5262bdfca782ae5617aa13a0e282f783577c862b" [label=""];
}

