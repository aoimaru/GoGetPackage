[app/sources/218097143.Dockerfile]
digraph {
  "sha256:e63865460f9b177dcaa6fe74942a9eac7233f519b71850e6b635ece0d9a4c2b0" [label="docker-image://docker.io/accupara/ubuntu:14.04" shape="ellipse"];
  "sha256:8c04e33e41ae167584649432b8e45965d6d7a38204de83443063a645b8c38d0f" [label="/bin/sh -c sudo apt-get update  && sudo apt-get install -y         bison         build-essential         flex         gettext         libgettextpo0         libkrb5-dev         libossp-uuid-dev         libpam0g-dev         libperl-dev         libreadline6-dev         libssl-dev         libtcl8.6         libxml2-dev         libxslt1-dev         perl-modules         python         python-dev         python3-dev         python3         readline-common         tcl         tcl-dev         zlib1g-dev         libxml2-utils         xsltproc  && sudo apt-get clean" shape="box"];
  "sha256:4bb9a2815ccd11045fe617ee4425e7d37a7dd89960335fd4a800b2f50a275b59" [label="sha256:4bb9a2815ccd11045fe617ee4425e7d37a7dd89960335fd4a800b2f50a275b59" shape="plaintext"];
  "sha256:e63865460f9b177dcaa6fe74942a9eac7233f519b71850e6b635ece0d9a4c2b0" -> "sha256:8c04e33e41ae167584649432b8e45965d6d7a38204de83443063a645b8c38d0f" [label=""];
  "sha256:8c04e33e41ae167584649432b8e45965d6d7a38204de83443063a645b8c38d0f" -> "sha256:4bb9a2815ccd11045fe617ee4425e7d37a7dd89960335fd4a800b2f50a275b59" [label=""];
}

