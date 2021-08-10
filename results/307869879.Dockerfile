[app/sources/307869879.Dockerfile]
digraph {
  "sha256:327315b3489655c095862c1da1f535b30883a73f1e5d81e73d5858f3725cc472" [label="docker-image://launcher.gcr.io/google/debian9:latest@sha256:8fdb64ef397b81b86fc8a6920045fd277e07d1838885a3b68d5b4dab42822a8b" shape="ellipse"];
  "sha256:7da89cb1fb9101cb80b9ed00048739f344f63c2df518a92c3e942c1e4732fbb0" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends       ca-certificates       gnupg       build-essential       wget       subversion       unzip       automake       python       cmake       ninja-build       curl       git       gcc-multilib       g++-multilib       libc6-dev       bison       flex       libtool       autoconf       binutils-dev       binutils-gold       software-properties-common       gnupg       apt-transport-https       sudo       systemd       sysvinit-utils       systemd-sysv &&   update-alternatives --install \"/usr/bin/ld\" \"ld\" \"/usr/bin/ld.gold\" 20 &&   update-alternatives --install \"/usr/bin/ld\" \"ld\" \"/usr/bin/ld.bfd\" 10 &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:fb0b2144e5a8b05d01b79e16f9fd1f941002e8b5dab8b446c319f369ac64bf54" [label="sha256:fb0b2144e5a8b05d01b79e16f9fd1f941002e8b5dab8b446c319f369ac64bf54" shape="plaintext"];
  "sha256:327315b3489655c095862c1da1f535b30883a73f1e5d81e73d5858f3725cc472" -> "sha256:7da89cb1fb9101cb80b9ed00048739f344f63c2df518a92c3e942c1e4732fbb0" [label=""];
  "sha256:7da89cb1fb9101cb80b9ed00048739f344f63c2df518a92c3e942c1e4732fbb0" -> "sha256:fb0b2144e5a8b05d01b79e16f9fd1f941002e8b5dab8b446c319f369ac64bf54" [label=""];
}

