[app/sub_sources/128535616.Dockerfile]
digraph {
  "sha256:97a5a1ad8da813fc9a9a5b5a93fe7dc38126774bb4522220d42314e8357aa4eb" [label="local://context" shape="ellipse"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:ba6ccd88f406c8686479e9a702a2a02076556f8147efbd650d522b21e4e7cb5a" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   g++   make   file   curl   ca-certificates   python2.7   git   cmake   sudo   gdb   xz-utils   g++-powerpc-linux-gnuspe   libssl-dev   pkg-config" shape="box"];
  "sha256:14a856f21102779aceffba8cd754e9cddc5443c01005faafa061b45cbf352f55" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:aa553f174e1c713a609ac2011a2d8dcd55f7c688ca99b94e3f916d738d35d4df" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:c6de8dd582ca928724be6b583d864453c44fbf9c70238443f84ab4afda350b4c" [label="sha256:c6de8dd582ca928724be6b583d864453c44fbf9c70238443f84ab4afda350b4c" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:ba6ccd88f406c8686479e9a702a2a02076556f8147efbd650d522b21e4e7cb5a" [label=""];
  "sha256:ba6ccd88f406c8686479e9a702a2a02076556f8147efbd650d522b21e4e7cb5a" -> "sha256:14a856f21102779aceffba8cd754e9cddc5443c01005faafa061b45cbf352f55" [label=""];
  "sha256:97a5a1ad8da813fc9a9a5b5a93fe7dc38126774bb4522220d42314e8357aa4eb" -> "sha256:14a856f21102779aceffba8cd754e9cddc5443c01005faafa061b45cbf352f55" [label=""];
  "sha256:14a856f21102779aceffba8cd754e9cddc5443c01005faafa061b45cbf352f55" -> "sha256:aa553f174e1c713a609ac2011a2d8dcd55f7c688ca99b94e3f916d738d35d4df" [label=""];
  "sha256:aa553f174e1c713a609ac2011a2d8dcd55f7c688ca99b94e3f916d738d35d4df" -> "sha256:c6de8dd582ca928724be6b583d864453c44fbf9c70238443f84ab4afda350b4c" [label=""];
}

