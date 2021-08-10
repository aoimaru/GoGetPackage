[app/sources/207038748.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:56871c19207e6368adac4630f1b858fa54e15ebbe8a8dc3057688e761ed19b8e" [label="/bin/sh -c apt-get update -qq && apt-get install -qq         build-essential         libncurses-dev         python-crypto         python-dev         python-pip         python-setuptools     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8b2c31298bc4654fa991cd8c15584b800d31f8dd8ad5f939738ff835d604225c" [label="local://context" shape="ellipse"];
  "sha256:640c989126aa8f54a74b77b186ce3d63a62c73cc76f0a688d5829a939a13fdd3" [label="copy{src=/, dest=/opt/featherduster}" shape="note"];
  "sha256:fc5de3b88e95743103f63b4e9ec74fdeac505c858190e0f415778aacbc00a594" [label="mkdir{path=/opt/featherduster}" shape="note"];
  "sha256:3c90fead508f17eff59828eb8c5fee6930222832f93435b13a1a9ad985cf3549" [label="/bin/sh -c pip install -U pip" shape="box"];
  "sha256:aa8a1bffc811c514b1043afc15d5ca66b0d857cdafafe9543f8d5eab822779f9" [label="/bin/sh -c pip install ." shape="box"];
  "sha256:8542d03bbd9efb5004e8ed5f267ecedd7dcd137e1240c0a82aa0de16e895175e" [label="sha256:8542d03bbd9efb5004e8ed5f267ecedd7dcd137e1240c0a82aa0de16e895175e" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:56871c19207e6368adac4630f1b858fa54e15ebbe8a8dc3057688e761ed19b8e" [label=""];
  "sha256:56871c19207e6368adac4630f1b858fa54e15ebbe8a8dc3057688e761ed19b8e" -> "sha256:640c989126aa8f54a74b77b186ce3d63a62c73cc76f0a688d5829a939a13fdd3" [label=""];
  "sha256:8b2c31298bc4654fa991cd8c15584b800d31f8dd8ad5f939738ff835d604225c" -> "sha256:640c989126aa8f54a74b77b186ce3d63a62c73cc76f0a688d5829a939a13fdd3" [label=""];
  "sha256:640c989126aa8f54a74b77b186ce3d63a62c73cc76f0a688d5829a939a13fdd3" -> "sha256:fc5de3b88e95743103f63b4e9ec74fdeac505c858190e0f415778aacbc00a594" [label=""];
  "sha256:fc5de3b88e95743103f63b4e9ec74fdeac505c858190e0f415778aacbc00a594" -> "sha256:3c90fead508f17eff59828eb8c5fee6930222832f93435b13a1a9ad985cf3549" [label=""];
  "sha256:3c90fead508f17eff59828eb8c5fee6930222832f93435b13a1a9ad985cf3549" -> "sha256:aa8a1bffc811c514b1043afc15d5ca66b0d857cdafafe9543f8d5eab822779f9" [label=""];
  "sha256:aa8a1bffc811c514b1043afc15d5ca66b0d857cdafafe9543f8d5eab822779f9" -> "sha256:8542d03bbd9efb5004e8ed5f267ecedd7dcd137e1240c0a82aa0de16e895175e" [label=""];
}

