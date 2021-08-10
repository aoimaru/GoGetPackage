[app/sub_sources/128535618.Dockerfile]
digraph {
  "sha256:43ff93c9f75a3db5bffb8c81dc1b39d3fc6b17d1347cbe7dfbebd167ea4f7d14" [label="local://context" shape="ellipse"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:87b36c7c5e1cc3ee7b63dc7fd1d3690a91eca4f981bff37a73b742b26c3fbc3f" [label="copy{src=/scripts/android-base-apt-get.sh, dest=/scripts/}" shape="note"];
  "sha256:612947087c55234091bf9f266bb12766fba6bfc85e0ee3929e70e58ffba674dc" [label="/bin/sh -c sh /scripts/android-base-apt-get.sh" shape="box"];
  "sha256:8263b418b3276aa39098151ce8602521e9c5df8132e823552213efef312aa51e" [label="copy{src=/scripts/android-ndk.sh, dest=/scripts/}" shape="note"];
  "sha256:a8cf85098670634933cf02c77661d966a6468d967c5d5be249f9c4407291595c" [label="/bin/sh -c . /scripts/android-ndk.sh &&     download_and_make_toolchain android-ndk-r15c-linux-x86_64.zip x86_64 21" shape="box"];
  "sha256:61fcb19fa52351ac4be188b7721fae49243e049caa744860095bc2e1f9054797" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:779f47b41a3a883493afc1403d349a9d2241436783be29bb5ac3be59b28a64c6" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:b6ae3542920c8561b55efce5927ef7d94a06cb23e3f46081de4b6d32fb329ff0" [label="sha256:b6ae3542920c8561b55efce5927ef7d94a06cb23e3f46081de4b6d32fb329ff0" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:87b36c7c5e1cc3ee7b63dc7fd1d3690a91eca4f981bff37a73b742b26c3fbc3f" [label=""];
  "sha256:43ff93c9f75a3db5bffb8c81dc1b39d3fc6b17d1347cbe7dfbebd167ea4f7d14" -> "sha256:87b36c7c5e1cc3ee7b63dc7fd1d3690a91eca4f981bff37a73b742b26c3fbc3f" [label=""];
  "sha256:87b36c7c5e1cc3ee7b63dc7fd1d3690a91eca4f981bff37a73b742b26c3fbc3f" -> "sha256:612947087c55234091bf9f266bb12766fba6bfc85e0ee3929e70e58ffba674dc" [label=""];
  "sha256:612947087c55234091bf9f266bb12766fba6bfc85e0ee3929e70e58ffba674dc" -> "sha256:8263b418b3276aa39098151ce8602521e9c5df8132e823552213efef312aa51e" [label=""];
  "sha256:43ff93c9f75a3db5bffb8c81dc1b39d3fc6b17d1347cbe7dfbebd167ea4f7d14" -> "sha256:8263b418b3276aa39098151ce8602521e9c5df8132e823552213efef312aa51e" [label=""];
  "sha256:8263b418b3276aa39098151ce8602521e9c5df8132e823552213efef312aa51e" -> "sha256:a8cf85098670634933cf02c77661d966a6468d967c5d5be249f9c4407291595c" [label=""];
  "sha256:a8cf85098670634933cf02c77661d966a6468d967c5d5be249f9c4407291595c" -> "sha256:61fcb19fa52351ac4be188b7721fae49243e049caa744860095bc2e1f9054797" [label=""];
  "sha256:43ff93c9f75a3db5bffb8c81dc1b39d3fc6b17d1347cbe7dfbebd167ea4f7d14" -> "sha256:61fcb19fa52351ac4be188b7721fae49243e049caa744860095bc2e1f9054797" [label=""];
  "sha256:61fcb19fa52351ac4be188b7721fae49243e049caa744860095bc2e1f9054797" -> "sha256:779f47b41a3a883493afc1403d349a9d2241436783be29bb5ac3be59b28a64c6" [label=""];
  "sha256:779f47b41a3a883493afc1403d349a9d2241436783be29bb5ac3be59b28a64c6" -> "sha256:b6ae3542920c8561b55efce5927ef7d94a06cb23e3f46081de4b6d32fb329ff0" [label=""];
}

