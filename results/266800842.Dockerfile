[app/sources/266800842.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:bdeb369650dd816260c086ab5607f1740777a6f2cb7063b332137362c4f5fc05" [label="/bin/sh -c apt-get update &&     apt-get install -y \t\t\tcurl \t\t\tpython \t\t\tsudo \t\t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:46686b5f69611d466d08313334aae0cdea7dcc088d27fcab79e73c51cc46ff7b" [label="/bin/sh -c useradd -ms /bin/bash user \t\t&& echo 'user ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers" shape="box"];
  "sha256:bfd7ed1651d276a1c73e6bf899a35064f1cf129120f0730cc5a836e9dd6a7576" [label="sha256:bfd7ed1651d276a1c73e6bf899a35064f1cf129120f0730cc5a836e9dd6a7576" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:bdeb369650dd816260c086ab5607f1740777a6f2cb7063b332137362c4f5fc05" [label=""];
  "sha256:bdeb369650dd816260c086ab5607f1740777a6f2cb7063b332137362c4f5fc05" -> "sha256:46686b5f69611d466d08313334aae0cdea7dcc088d27fcab79e73c51cc46ff7b" [label=""];
  "sha256:46686b5f69611d466d08313334aae0cdea7dcc088d27fcab79e73c51cc46ff7b" -> "sha256:bfd7ed1651d276a1c73e6bf899a35064f1cf129120f0730cc5a836e9dd6a7576" [label=""];
}

