[app/sources/210068676.Dockerfile]
digraph {
  "sha256:17394c507d51fb98ef63683edb110ac5cd0c24ff02954ca8ffd332976c7abb04" [label="docker-image://docker.io/tensorflow/tensorflow:1.0.0-gpu-py3" shape="ellipse"];
  "sha256:30e7a71a8f8c7937911bbb2e61c87bac729b77463b94fd15cf992aca48614f18" [label="/bin/sh -c sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/' /etc/apt/sources.list" shape="box"];
  "sha256:6edc9ed117331a22467bede26b57df6be8d560936ccd95c4603585ac204f05be" [label="local://context" shape="ellipse"];
  "sha256:a33d00b2d95c657dc5a16ccc13be9a16836e55827badc7e99b7b6da88833b3a5" [label="copy{src=/pip.conf, dest=/root/.pip/pip.conf}" shape="note"];
  "sha256:aef222367ca93e3915f22a9bc785c6e09e00de7996e866525f8372068b61b6f7" [label="/bin/sh -c apt-get update     && apt-get install libtcmalloc-minimal4" shape="box"];
  "sha256:c410f782e1f49e24c7d963b235567d5b4880bab0113eb94263dd56c65fd935b0" [label="sha256:c410f782e1f49e24c7d963b235567d5b4880bab0113eb94263dd56c65fd935b0" shape="plaintext"];
  "sha256:17394c507d51fb98ef63683edb110ac5cd0c24ff02954ca8ffd332976c7abb04" -> "sha256:30e7a71a8f8c7937911bbb2e61c87bac729b77463b94fd15cf992aca48614f18" [label=""];
  "sha256:30e7a71a8f8c7937911bbb2e61c87bac729b77463b94fd15cf992aca48614f18" -> "sha256:a33d00b2d95c657dc5a16ccc13be9a16836e55827badc7e99b7b6da88833b3a5" [label=""];
  "sha256:6edc9ed117331a22467bede26b57df6be8d560936ccd95c4603585ac204f05be" -> "sha256:a33d00b2d95c657dc5a16ccc13be9a16836e55827badc7e99b7b6da88833b3a5" [label=""];
  "sha256:a33d00b2d95c657dc5a16ccc13be9a16836e55827badc7e99b7b6da88833b3a5" -> "sha256:aef222367ca93e3915f22a9bc785c6e09e00de7996e866525f8372068b61b6f7" [label=""];
  "sha256:aef222367ca93e3915f22a9bc785c6e09e00de7996e866525f8372068b61b6f7" -> "sha256:c410f782e1f49e24c7d963b235567d5b4880bab0113eb94263dd56c65fd935b0" [label=""];
}

