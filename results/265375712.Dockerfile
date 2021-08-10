[app/sources/265375712.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:6ddd6add8e736b25e41b13db1cbe4ba38b0b1e16785f9ee3a3bc17cb6e518ac6" [label="/bin/sh -c apt update" shape="box"];
  "sha256:8ec3b965702075d8fd6e0f8458b147745690047de33dd21b43b87dcfa5cff94f" [label="/bin/sh -c apt install -y     apache2     php     libapache2-mod-php     php-mysql" shape="box"];
  "sha256:62821521a4d8402e18c0161b1daf3d8fe453da79169391e81ff88a85c8a5f50f" [label="sha256:62821521a4d8402e18c0161b1daf3d8fe453da79169391e81ff88a85c8a5f50f" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:6ddd6add8e736b25e41b13db1cbe4ba38b0b1e16785f9ee3a3bc17cb6e518ac6" [label=""];
  "sha256:6ddd6add8e736b25e41b13db1cbe4ba38b0b1e16785f9ee3a3bc17cb6e518ac6" -> "sha256:8ec3b965702075d8fd6e0f8458b147745690047de33dd21b43b87dcfa5cff94f" [label=""];
  "sha256:8ec3b965702075d8fd6e0f8458b147745690047de33dd21b43b87dcfa5cff94f" -> "sha256:62821521a4d8402e18c0161b1daf3d8fe453da79169391e81ff88a85c8a5f50f" [label=""];
}

