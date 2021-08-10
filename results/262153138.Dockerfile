[app/sources/262153138.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:072d6c6a61207cb47f6e9d477baaed2fe000ad1e2f31dbbd9af9d2c660331743" [label="local://context" shape="ellipse"];
  "sha256:47f1e9bf040858e917ea7a4c981194b03f35d7137e68d5a5ecb8b1c52eea8b32" [label="copy{src=/pam_hook, dest=/usr/bin/pam_hook}" shape="note"];
  "sha256:87c2f4cba0ddc5b6fcd1f0c276e3c4fa281bfa9c462e56b53438ac5bf367ca66" [label="/bin/sh -c apt-get update &&     env DEBIAN_FRONTEND=noninteractive     apt-get install -y libpam0g:amd64 libpam0g-dev:amd64" shape="box"];
  "sha256:52debdec856371953d7ba8d04c4e2378e96871a0b6d54e9d433114363f3e5691" [label="sha256:52debdec856371953d7ba8d04c4e2378e96871a0b6d54e9d433114363f3e5691" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:47f1e9bf040858e917ea7a4c981194b03f35d7137e68d5a5ecb8b1c52eea8b32" [label=""];
  "sha256:072d6c6a61207cb47f6e9d477baaed2fe000ad1e2f31dbbd9af9d2c660331743" -> "sha256:47f1e9bf040858e917ea7a4c981194b03f35d7137e68d5a5ecb8b1c52eea8b32" [label=""];
  "sha256:47f1e9bf040858e917ea7a4c981194b03f35d7137e68d5a5ecb8b1c52eea8b32" -> "sha256:87c2f4cba0ddc5b6fcd1f0c276e3c4fa281bfa9c462e56b53438ac5bf367ca66" [label=""];
  "sha256:87c2f4cba0ddc5b6fcd1f0c276e3c4fa281bfa9c462e56b53438ac5bf367ca66" -> "sha256:52debdec856371953d7ba8d04c4e2378e96871a0b6d54e9d433114363f3e5691" [label=""];
}

