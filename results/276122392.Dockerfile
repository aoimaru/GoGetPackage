[app/sources/276122392.Dockerfile]
digraph {
  "sha256:49bf26de9cf889fae405c3c225af27ddfd4ff383b883b36f236c03b7e3199555" [label="docker-image://docker.io/library/golang:1.10.4-stretch" shape="ellipse"];
  "sha256:15d866697fb0d5f66d21c5effbc72fd8370a9020625276160a098c6f5847622d" [label="/bin/sh -c dpkg --add-architecture ppc64el     && apt-get update && apt-get install -y     vim     git     curl     automake     libtool     help2man     libseccomp2     libseccomp-dev     crossbuild-essential-ppc64el     libseccomp-dev:ppc64el    libfuse-dev:ppc64el     libpam-dev:ppc64el     lxcfs     btrfs-progs     --no-install-recommends     && apt-get clean" shape="box"];
  "sha256:26d21fd7aab64d527b9350b1d3c84f9ab1a818b2dbb5ecc0e055b7f3386e9e7d" [label="local://context" shape="ellipse"];
  "sha256:f8ac7d0539b9cf7a83c9a3b55a583d19dc8da2e52e3ecb2ba9f8a52134cef3c1" [label="copy{src=/, dest=/go/src/github.com/alibaba/pouch}" shape="note"];
  "sha256:88d7233d2c309cdfb8fd6ca6a58d5041d4969866a178b688e60091b58f1a766f" [label="mkdir{path=/go/src/github.com/alibaba/pouch}" shape="note"];
  "sha256:97655f9a543be556e374acce10271fa2be816b240e3320e1e0d1771905d1b271" [label="sha256:97655f9a543be556e374acce10271fa2be816b240e3320e1e0d1771905d1b271" shape="plaintext"];
  "sha256:49bf26de9cf889fae405c3c225af27ddfd4ff383b883b36f236c03b7e3199555" -> "sha256:15d866697fb0d5f66d21c5effbc72fd8370a9020625276160a098c6f5847622d" [label=""];
  "sha256:15d866697fb0d5f66d21c5effbc72fd8370a9020625276160a098c6f5847622d" -> "sha256:f8ac7d0539b9cf7a83c9a3b55a583d19dc8da2e52e3ecb2ba9f8a52134cef3c1" [label=""];
  "sha256:26d21fd7aab64d527b9350b1d3c84f9ab1a818b2dbb5ecc0e055b7f3386e9e7d" -> "sha256:f8ac7d0539b9cf7a83c9a3b55a583d19dc8da2e52e3ecb2ba9f8a52134cef3c1" [label=""];
  "sha256:f8ac7d0539b9cf7a83c9a3b55a583d19dc8da2e52e3ecb2ba9f8a52134cef3c1" -> "sha256:88d7233d2c309cdfb8fd6ca6a58d5041d4969866a178b688e60091b58f1a766f" [label=""];
  "sha256:88d7233d2c309cdfb8fd6ca6a58d5041d4969866a178b688e60091b58f1a766f" -> "sha256:97655f9a543be556e374acce10271fa2be816b240e3320e1e0d1771905d1b271" [label=""];
}

