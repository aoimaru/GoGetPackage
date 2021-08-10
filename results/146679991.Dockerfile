[app/sources/146679991.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:854f0371d49acb1351fdd019fb1be233f8f8f131ae7a8db8989feacdce8186bc" [label="/bin/sh -c mkdir -p /srv/debile/" shape="box"];
  "sha256:dba9677640ce3a0d9547a2d7f8996c72345c16ae272fa7eb1075ab365b08dedf" [label="/bin/sh -c groupadd -r debile && useradd -r -g debile -d /srv/debile debile" shape="box"];
  "sha256:2af7f0a5f6ba9e4fd342a5bced8375cbec719f725466f77f73ed0176130265df" [label="/bin/sh -c mkdir -p /srv/debile/incoming/UploadQueue /srv/debile/files/default /srv/debile/repo/default" shape="box"];
  "sha256:eb636388564226f0b6d467e1f372baf2871e2c68430fcb0af7377e47be54735a" [label="/bin/sh -c mkdir -p /srv/debile/repo/default/conf /srv/debile/repo/default/logs" shape="box"];
  "sha256:a42ba030eec12291f1401293bd90dc6e0f26eeb61c91da84e97d9a948fd928e0" [label="local://context" shape="ellipse"];
  "sha256:2156b66402aaca6de2a10081989a76bfdbb96b75b6f1457c8bcb6d758be24b2c" [label="copy{src=/reprepo-conf/*, dest=/srv/debile/repo/default/conf/}" shape="note"];
  "sha256:fd53d0120d3f909b3bce54c28fd517a4b09eef95c016c5c45e13e048a58b5ff4" [label="/bin/sh -c chown -R debile:debile /srv/debile" shape="box"];
  "sha256:cd295b1dbef0be46b946cf7493ac842bdb699dc6cecb0522a007e5f4ae5bef6f" [label="copy{src=/master-keys.tar.gz, dest=/tmp/}" shape="note"];
  "sha256:0b78aba56e0e368d9661e5218254944b4071a3883bb22e8fe35a920cd7748593" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:702325ca62c48bc4a062cff61d6b7d6f1f00c035fa18d93c852c27281ee87c53" [label="/bin/sh -c sh -c \"tar xvf master-keys.tar.gz -O | gpg --import --status-fd 1\"" shape="box"];
  "sha256:9fd8e69f4e5e6a03e618346e5d99d3e7be8f1fbb2df2521594f96fd745aefcc4" [label="mkdir{path=/srv/debile}" shape="note"];
  "sha256:fe353e5b6504ef5aac39c0814327ea88ea6c245cac0f91eb22aca7c1815e53a6" [label="sha256:fe353e5b6504ef5aac39c0814327ea88ea6c245cac0f91eb22aca7c1815e53a6" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:854f0371d49acb1351fdd019fb1be233f8f8f131ae7a8db8989feacdce8186bc" [label=""];
  "sha256:854f0371d49acb1351fdd019fb1be233f8f8f131ae7a8db8989feacdce8186bc" -> "sha256:dba9677640ce3a0d9547a2d7f8996c72345c16ae272fa7eb1075ab365b08dedf" [label=""];
  "sha256:dba9677640ce3a0d9547a2d7f8996c72345c16ae272fa7eb1075ab365b08dedf" -> "sha256:2af7f0a5f6ba9e4fd342a5bced8375cbec719f725466f77f73ed0176130265df" [label=""];
  "sha256:2af7f0a5f6ba9e4fd342a5bced8375cbec719f725466f77f73ed0176130265df" -> "sha256:eb636388564226f0b6d467e1f372baf2871e2c68430fcb0af7377e47be54735a" [label=""];
  "sha256:eb636388564226f0b6d467e1f372baf2871e2c68430fcb0af7377e47be54735a" -> "sha256:2156b66402aaca6de2a10081989a76bfdbb96b75b6f1457c8bcb6d758be24b2c" [label=""];
  "sha256:a42ba030eec12291f1401293bd90dc6e0f26eeb61c91da84e97d9a948fd928e0" -> "sha256:2156b66402aaca6de2a10081989a76bfdbb96b75b6f1457c8bcb6d758be24b2c" [label=""];
  "sha256:2156b66402aaca6de2a10081989a76bfdbb96b75b6f1457c8bcb6d758be24b2c" -> "sha256:fd53d0120d3f909b3bce54c28fd517a4b09eef95c016c5c45e13e048a58b5ff4" [label=""];
  "sha256:fd53d0120d3f909b3bce54c28fd517a4b09eef95c016c5c45e13e048a58b5ff4" -> "sha256:cd295b1dbef0be46b946cf7493ac842bdb699dc6cecb0522a007e5f4ae5bef6f" [label=""];
  "sha256:a42ba030eec12291f1401293bd90dc6e0f26eeb61c91da84e97d9a948fd928e0" -> "sha256:cd295b1dbef0be46b946cf7493ac842bdb699dc6cecb0522a007e5f4ae5bef6f" [label=""];
  "sha256:cd295b1dbef0be46b946cf7493ac842bdb699dc6cecb0522a007e5f4ae5bef6f" -> "sha256:0b78aba56e0e368d9661e5218254944b4071a3883bb22e8fe35a920cd7748593" [label=""];
  "sha256:0b78aba56e0e368d9661e5218254944b4071a3883bb22e8fe35a920cd7748593" -> "sha256:702325ca62c48bc4a062cff61d6b7d6f1f00c035fa18d93c852c27281ee87c53" [label=""];
  "sha256:702325ca62c48bc4a062cff61d6b7d6f1f00c035fa18d93c852c27281ee87c53" -> "sha256:9fd8e69f4e5e6a03e618346e5d99d3e7be8f1fbb2df2521594f96fd745aefcc4" [label=""];
  "sha256:9fd8e69f4e5e6a03e618346e5d99d3e7be8f1fbb2df2521594f96fd745aefcc4" -> "sha256:fe353e5b6504ef5aac39c0814327ea88ea6c245cac0f91eb22aca7c1815e53a6" [label=""];
}

