[app/sources/442822747.Dockerfile]
digraph {
  "sha256:a1c13cab5b6797aab38b9c0fc8dc02a98a6879d5063ee69c27fbcb78ea373947" [label="local://context" shape="ellipse"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:0bba1358a8e4d054bf4a7b494bfdd940de78cb6f47c9b8d218698e3fb4930cae" [label="/bin/sh -c locale-gen $LANG" shape="box"];
  "sha256:400a924fb0712457a6da0b1da2ef8229f3bb26250bd02c5ae43f4a200ae8e877" [label="/bin/sh -c apt-get update -q &&     apt-get install -y git openssh-server &&     git clone https://github.com/sitaramc/gitolite.git /tmp/gitolite &&     /tmp/gitolite/install -to /usr/local/bin &&     rm -rf /tmp/gitolite &&     mkdir -p /var/run/sshd &&     adduser --disabled-login --gecos 'Gitolite' --home /data --no-create-home git" shape="box"];
  "sha256:3065f2df3b29dd07051f45eeaaba12a1edb9cfc527a60bafdb939706bd2875a0" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:c85cb68c4327ba33412c6c4e8fde84661b9a1b757f8fa0ef6f77369c5f973ffd" [label="sha256:c85cb68c4327ba33412c6c4e8fde84661b9a1b757f8fa0ef6f77369c5f973ffd" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:0bba1358a8e4d054bf4a7b494bfdd940de78cb6f47c9b8d218698e3fb4930cae" [label=""];
  "sha256:0bba1358a8e4d054bf4a7b494bfdd940de78cb6f47c9b8d218698e3fb4930cae" -> "sha256:400a924fb0712457a6da0b1da2ef8229f3bb26250bd02c5ae43f4a200ae8e877" [label=""];
  "sha256:400a924fb0712457a6da0b1da2ef8229f3bb26250bd02c5ae43f4a200ae8e877" -> "sha256:3065f2df3b29dd07051f45eeaaba12a1edb9cfc527a60bafdb939706bd2875a0" [label=""];
  "sha256:a1c13cab5b6797aab38b9c0fc8dc02a98a6879d5063ee69c27fbcb78ea373947" -> "sha256:3065f2df3b29dd07051f45eeaaba12a1edb9cfc527a60bafdb939706bd2875a0" [label=""];
  "sha256:3065f2df3b29dd07051f45eeaaba12a1edb9cfc527a60bafdb939706bd2875a0" -> "sha256:c85cb68c4327ba33412c6c4e8fde84661b9a1b757f8fa0ef6f77369c5f973ffd" [label=""];
}

