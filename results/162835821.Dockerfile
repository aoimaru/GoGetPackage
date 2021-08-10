[app/sources/162835821.Dockerfile]
digraph {
  "sha256:ed5cb6a33f6939ecff4809a2f5be32bd153b9eae00456b0faccd099c01da8a59" [label="docker-image://docker.io/multiarch/centos:7.2.1511-armhfp-clean" shape="ellipse"];
  "sha256:2725785e06d1c03487fe043eda9e38d1a548c6cdaa48c4d58bfddeb31e22ac7d" [label="/bin/sh -c yum install -y yum-plugin-ovl" shape="box"];
  "sha256:ecd41071b6c9e07507e3e1de9a18bd5ed511fb966156baf743cd777b0cce0bff" [label="/bin/sh -c yum groupinstall --skip-broken -y \"Development Tools\"" shape="box"];
  "sha256:fa15b817cca3634f501f7ba8d4d648e746db415bb2df42cb6f10eb2a3b8bdc38" [label="/bin/sh -c yum -y swap -- remove systemd-container systemd-container-libs -- install systemd systemd-libs" shape="box"];
  "sha256:9b4ebb49e18184e32f32b67213a85d9ddbfd06ad386e7a34196d30c3cdd62d11" [label="/bin/sh -c yum install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel sqlite-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:04677158f14bd616bba7e61d99f92a8f6ee1c6bd8b20ef2164dfbc2209e6babf" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-armv6l.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:d92683f71b5a42fdec634a56da3c6ed5a2b23b63b4acbfe1f128f9519f59b99c" [label="sha256:d92683f71b5a42fdec634a56da3c6ed5a2b23b63b4acbfe1f128f9519f59b99c" shape="plaintext"];
  "sha256:ed5cb6a33f6939ecff4809a2f5be32bd153b9eae00456b0faccd099c01da8a59" -> "sha256:2725785e06d1c03487fe043eda9e38d1a548c6cdaa48c4d58bfddeb31e22ac7d" [label=""];
  "sha256:2725785e06d1c03487fe043eda9e38d1a548c6cdaa48c4d58bfddeb31e22ac7d" -> "sha256:ecd41071b6c9e07507e3e1de9a18bd5ed511fb966156baf743cd777b0cce0bff" [label=""];
  "sha256:ecd41071b6c9e07507e3e1de9a18bd5ed511fb966156baf743cd777b0cce0bff" -> "sha256:fa15b817cca3634f501f7ba8d4d648e746db415bb2df42cb6f10eb2a3b8bdc38" [label=""];
  "sha256:fa15b817cca3634f501f7ba8d4d648e746db415bb2df42cb6f10eb2a3b8bdc38" -> "sha256:9b4ebb49e18184e32f32b67213a85d9ddbfd06ad386e7a34196d30c3cdd62d11" [label=""];
  "sha256:9b4ebb49e18184e32f32b67213a85d9ddbfd06ad386e7a34196d30c3cdd62d11" -> "sha256:04677158f14bd616bba7e61d99f92a8f6ee1c6bd8b20ef2164dfbc2209e6babf" [label=""];
  "sha256:04677158f14bd616bba7e61d99f92a8f6ee1c6bd8b20ef2164dfbc2209e6babf" -> "sha256:d92683f71b5a42fdec634a56da3c6ed5a2b23b63b4acbfe1f128f9519f59b99c" [label=""];
}

