[app/sources/349395984.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:1c890b58628739a593f4972d4156870269da9d42ac9645036258920078376d8c" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:a52240c947c993a4fa6873fa216e8648266ae878d7a3d8c185bd3bb80bb64858" [label="/bin/sh -c apt-get -y install curl bzip2 python" shape="box"];
  "sha256:78d1f727f808d76bbba33981174f00f46dc0de05e08978f11296225964f9d399" [label="/bin/sh -c curl http://www.multitech.net/mlinux/sdk/3.2.0/mlinux-eglibc-x86_64-mlinux-factory-image-arm926ejste-toolchain-3.2.0.sh > mlinux-toolchain-install.sh" shape="box"];
  "sha256:a90c07deb597795796bcba38fe1bda9b608f63ec19c9f0ccf151e04d40d35d82" [label="/bin/sh -c chmod +x mlinux-toolchain-install.sh" shape="box"];
  "sha256:32e6b207c453ed4abf22f773c0de2948e9b1d0ef27ca04135d7988e0e0ec87dc" [label="/bin/sh -c ./mlinux-toolchain-install.sh" shape="box"];
  "sha256:f81d8baba868ed527e630b64ecbc28eb1c66fb587607f20792e358ca64ce764c" [label="sha256:f81d8baba868ed527e630b64ecbc28eb1c66fb587607f20792e358ca64ce764c" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:1c890b58628739a593f4972d4156870269da9d42ac9645036258920078376d8c" [label=""];
  "sha256:1c890b58628739a593f4972d4156870269da9d42ac9645036258920078376d8c" -> "sha256:a52240c947c993a4fa6873fa216e8648266ae878d7a3d8c185bd3bb80bb64858" [label=""];
  "sha256:a52240c947c993a4fa6873fa216e8648266ae878d7a3d8c185bd3bb80bb64858" -> "sha256:78d1f727f808d76bbba33981174f00f46dc0de05e08978f11296225964f9d399" [label=""];
  "sha256:78d1f727f808d76bbba33981174f00f46dc0de05e08978f11296225964f9d399" -> "sha256:a90c07deb597795796bcba38fe1bda9b608f63ec19c9f0ccf151e04d40d35d82" [label=""];
  "sha256:a90c07deb597795796bcba38fe1bda9b608f63ec19c9f0ccf151e04d40d35d82" -> "sha256:32e6b207c453ed4abf22f773c0de2948e9b1d0ef27ca04135d7988e0e0ec87dc" [label=""];
  "sha256:32e6b207c453ed4abf22f773c0de2948e9b1d0ef27ca04135d7988e0e0ec87dc" -> "sha256:f81d8baba868ed527e630b64ecbc28eb1c66fb587607f20792e358ca64ce764c" [label=""];
}

