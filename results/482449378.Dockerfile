[app/sources/482449378.Dockerfile]
digraph {
  "sha256:620fd90159edad1365223b3ae5a20438eb86c9376f8f6071f0ab4d2e2c7cacc3" [label="docker-image://docker.io/opensuse/leap:15.0" shape="ellipse"];
  "sha256:d272cf88bb10d3c863b81bf4f727dada2d1c1071152ce652b53337e9db3a6e46" [label="/bin/sh -c set -xv ;     zypper refresh &&     zypper update -y &&     zypper install --replacefiles -y ${pkgs} ${pkgs_tmp} &&     ln -fs /usr/share/zoneinfo/Europe/Brussels /etc/localtime &&     gem install --no-doc --no-ri fpm &&     zypper remove -y --clean-deps ${pkgs_tmp}" shape="box"];
  "sha256:56e7020d4ab2e189b737b29c7ee7b781aee10a5b748b31d0a6b00c912a712284" [label="local://context" shape="ellipse"];
  "sha256:caf6d7309639435f3675b2df143208c0c87caf0b919e4aff49f8a71feb672c87" [label="copy{src=/pkg_rakudo.pl, dest=/}" shape="note"];
  "sha256:2bf5c64ad3c133d19404f6f41857245f4888b24a3af196dde27e45a8919bc44f" [label="copy{src=/install-zef-as-user, dest=/}" shape="note"];
  "sha256:643f741ae844a0c7d900eafea54de89e843bc4e6f315c237e0052d00a6fe5449" [label="copy{src=/fix_windows10, dest=/}" shape="note"];
  "sha256:9f1cf3d4f59b6ac76b805a47ef0ee44749f0efffc687cf222578e6b0341287cd" [label="copy{src=/add-perl6-to-path, dest=/}" shape="note"];
  "sha256:cd7f4b8c53bea630e036e174619b91c6fbe2abe5ee51e0148c46d1f5516cdf3c" [label="copy{src=/rakudo-pkg.sh, dest=/etc/profile.d/}" shape="note"];
  "sha256:3fb3674b306d61bf046475b5b83723f6bd40af99fdf40c7bd2bd7c561e6202b4" [label="sha256:3fb3674b306d61bf046475b5b83723f6bd40af99fdf40c7bd2bd7c561e6202b4" shape="plaintext"];
  "sha256:620fd90159edad1365223b3ae5a20438eb86c9376f8f6071f0ab4d2e2c7cacc3" -> "sha256:d272cf88bb10d3c863b81bf4f727dada2d1c1071152ce652b53337e9db3a6e46" [label=""];
  "sha256:d272cf88bb10d3c863b81bf4f727dada2d1c1071152ce652b53337e9db3a6e46" -> "sha256:caf6d7309639435f3675b2df143208c0c87caf0b919e4aff49f8a71feb672c87" [label=""];
  "sha256:56e7020d4ab2e189b737b29c7ee7b781aee10a5b748b31d0a6b00c912a712284" -> "sha256:caf6d7309639435f3675b2df143208c0c87caf0b919e4aff49f8a71feb672c87" [label=""];
  "sha256:caf6d7309639435f3675b2df143208c0c87caf0b919e4aff49f8a71feb672c87" -> "sha256:2bf5c64ad3c133d19404f6f41857245f4888b24a3af196dde27e45a8919bc44f" [label=""];
  "sha256:56e7020d4ab2e189b737b29c7ee7b781aee10a5b748b31d0a6b00c912a712284" -> "sha256:2bf5c64ad3c133d19404f6f41857245f4888b24a3af196dde27e45a8919bc44f" [label=""];
  "sha256:2bf5c64ad3c133d19404f6f41857245f4888b24a3af196dde27e45a8919bc44f" -> "sha256:643f741ae844a0c7d900eafea54de89e843bc4e6f315c237e0052d00a6fe5449" [label=""];
  "sha256:56e7020d4ab2e189b737b29c7ee7b781aee10a5b748b31d0a6b00c912a712284" -> "sha256:643f741ae844a0c7d900eafea54de89e843bc4e6f315c237e0052d00a6fe5449" [label=""];
  "sha256:643f741ae844a0c7d900eafea54de89e843bc4e6f315c237e0052d00a6fe5449" -> "sha256:9f1cf3d4f59b6ac76b805a47ef0ee44749f0efffc687cf222578e6b0341287cd" [label=""];
  "sha256:56e7020d4ab2e189b737b29c7ee7b781aee10a5b748b31d0a6b00c912a712284" -> "sha256:9f1cf3d4f59b6ac76b805a47ef0ee44749f0efffc687cf222578e6b0341287cd" [label=""];
  "sha256:9f1cf3d4f59b6ac76b805a47ef0ee44749f0efffc687cf222578e6b0341287cd" -> "sha256:cd7f4b8c53bea630e036e174619b91c6fbe2abe5ee51e0148c46d1f5516cdf3c" [label=""];
  "sha256:56e7020d4ab2e189b737b29c7ee7b781aee10a5b748b31d0a6b00c912a712284" -> "sha256:cd7f4b8c53bea630e036e174619b91c6fbe2abe5ee51e0148c46d1f5516cdf3c" [label=""];
  "sha256:cd7f4b8c53bea630e036e174619b91c6fbe2abe5ee51e0148c46d1f5516cdf3c" -> "sha256:3fb3674b306d61bf046475b5b83723f6bd40af99fdf40c7bd2bd7c561e6202b4" [label=""];
}

