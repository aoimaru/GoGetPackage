[app/sources/469677399.Dockerfile]
digraph {
  "sha256:5f73206473d7fc08460a8a5cc6ee73735256a3a4981c7c1fa29cb36f44bf68a0" [label="docker-image://docker.io/library/ubuntu:xenial-20180228" shape="ellipse"];
  "sha256:52afa916b89dbcda626c89a7e887944ab30d7d183cb019bc728cf8d60f6387e4" [label="local://context" shape="ellipse"];
  "sha256:222913b7302b8aaec3829ca8d08f0071cdefbf5dfb21bcebe4c6325de012a33e" [label="copy{src=/, dest=/build}" shape="note"];
  "sha256:06ed04db81629df0c26376131006db5711e2aae5befd593bb991394ce48b93df" [label="mkdir{path=/build}" shape="note"];
  "sha256:70bac5dbd77ad7c098f2e2b97202d6883b90fd8963348add126f7ef77651edaf" [label="/bin/sh -c apt-get update -qq &&     apt-get install -qqy --no-install-recommends       software-properties-common       python-software-properties &&     add-apt-repository -y ppa:jonathonf/python-3.6 &&     apt-get update -qq &&     apt-get install -qqy --no-install-recommends       vim       emacs       screen       git       wget       curl       build-essential       cmake       htop       python3.6       python3.6-dev       python3.6-venv       python3.6-tk       python3-pip &&     rm -rf /var/lib/apt/lists/* &&     rm -f /usr/bin/python3 &&     rm -f /usr/bin/python &&     ln -s /usr/bin/python3.6 /usr/bin/python3 &&     ln -s /usr/bin/python3.6 /usr/bin/python &&     ln -s /usr/bin/pip3 /usr/bin/pip &&     rm -rf ~/.cache" shape="box"];
  "sha256:50b1499a754b0b1d89ce967a3f188f26811d66e0d51a9edec0d5e3f7e89a8e1b" [label="/bin/sh -c rm -rf /build" shape="box"];
  "sha256:3b863d9dbb6cfbfaedd43ae7a4c9ef787f2ef88d819c14d0543d45627c064d60" [label="sha256:3b863d9dbb6cfbfaedd43ae7a4c9ef787f2ef88d819c14d0543d45627c064d60" shape="plaintext"];
  "sha256:5f73206473d7fc08460a8a5cc6ee73735256a3a4981c7c1fa29cb36f44bf68a0" -> "sha256:222913b7302b8aaec3829ca8d08f0071cdefbf5dfb21bcebe4c6325de012a33e" [label=""];
  "sha256:52afa916b89dbcda626c89a7e887944ab30d7d183cb019bc728cf8d60f6387e4" -> "sha256:222913b7302b8aaec3829ca8d08f0071cdefbf5dfb21bcebe4c6325de012a33e" [label=""];
  "sha256:222913b7302b8aaec3829ca8d08f0071cdefbf5dfb21bcebe4c6325de012a33e" -> "sha256:06ed04db81629df0c26376131006db5711e2aae5befd593bb991394ce48b93df" [label=""];
  "sha256:06ed04db81629df0c26376131006db5711e2aae5befd593bb991394ce48b93df" -> "sha256:70bac5dbd77ad7c098f2e2b97202d6883b90fd8963348add126f7ef77651edaf" [label=""];
  "sha256:70bac5dbd77ad7c098f2e2b97202d6883b90fd8963348add126f7ef77651edaf" -> "sha256:50b1499a754b0b1d89ce967a3f188f26811d66e0d51a9edec0d5e3f7e89a8e1b" [label=""];
  "sha256:50b1499a754b0b1d89ce967a3f188f26811d66e0d51a9edec0d5e3f7e89a8e1b" -> "sha256:3b863d9dbb6cfbfaedd43ae7a4c9ef787f2ef88d819c14d0543d45627c064d60" [label=""];
}

