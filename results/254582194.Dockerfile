[app/sources/254582194.Dockerfile]
digraph {
  "sha256:ed5cb6a33f6939ecff4809a2f5be32bd153b9eae00456b0faccd099c01da8a59" [label="docker-image://docker.io/multiarch/centos:7.2.1511-armhfp-clean" shape="ellipse"];
  "sha256:2725785e06d1c03487fe043eda9e38d1a548c6cdaa48c4d58bfddeb31e22ac7d" [label="/bin/sh -c yum install -y yum-plugin-ovl" shape="box"];
  "sha256:ecd41071b6c9e07507e3e1de9a18bd5ed511fb966156baf743cd777b0cce0bff" [label="/bin/sh -c yum groupinstall --skip-broken -y \"Development Tools\"" shape="box"];
  "sha256:fa15b817cca3634f501f7ba8d4d648e746db415bb2df42cb6f10eb2a3b8bdc38" [label="/bin/sh -c yum -y swap -- remove systemd-container systemd-container-libs -- install systemd systemd-libs" shape="box"];
  "sha256:210a568cf80cef891264b770e505ebf4950377ff4597c92d868cfcaaf515d106" [label="/bin/sh -c yum install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel pkgconfig selinux-policy selinux-policy-devel sqlite-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:1ab6e2d8fff2653384c5bd7f0c9b8b7c9279a9b7106024bf4e4a8a27b5d77ba8" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-armv6l.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:45cebdbcd52178df79ed43f47a28fb1674c3834d5fdb9ed69271222decbadee7" [label="sha256:45cebdbcd52178df79ed43f47a28fb1674c3834d5fdb9ed69271222decbadee7" shape="plaintext"];
  "sha256:ed5cb6a33f6939ecff4809a2f5be32bd153b9eae00456b0faccd099c01da8a59" -> "sha256:2725785e06d1c03487fe043eda9e38d1a548c6cdaa48c4d58bfddeb31e22ac7d" [label=""];
  "sha256:2725785e06d1c03487fe043eda9e38d1a548c6cdaa48c4d58bfddeb31e22ac7d" -> "sha256:ecd41071b6c9e07507e3e1de9a18bd5ed511fb966156baf743cd777b0cce0bff" [label=""];
  "sha256:ecd41071b6c9e07507e3e1de9a18bd5ed511fb966156baf743cd777b0cce0bff" -> "sha256:fa15b817cca3634f501f7ba8d4d648e746db415bb2df42cb6f10eb2a3b8bdc38" [label=""];
  "sha256:fa15b817cca3634f501f7ba8d4d648e746db415bb2df42cb6f10eb2a3b8bdc38" -> "sha256:210a568cf80cef891264b770e505ebf4950377ff4597c92d868cfcaaf515d106" [label=""];
  "sha256:210a568cf80cef891264b770e505ebf4950377ff4597c92d868cfcaaf515d106" -> "sha256:1ab6e2d8fff2653384c5bd7f0c9b8b7c9279a9b7106024bf4e4a8a27b5d77ba8" [label=""];
  "sha256:1ab6e2d8fff2653384c5bd7f0c9b8b7c9279a9b7106024bf4e4a8a27b5d77ba8" -> "sha256:45cebdbcd52178df79ed43f47a28fb1674c3834d5fdb9ed69271222decbadee7" [label=""];
}

