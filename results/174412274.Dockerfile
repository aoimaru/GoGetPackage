[app/sources/174412274.Dockerfile]
digraph {
  "sha256:52b587c65fd395e6a9c1b511c80e7e0129184f80f9dcae0edcdd703ea8bf9474" [label="docker-image://docker.io/williamyeh/ansible:debian7-onbuild" shape="ellipse"];
  "sha256:a25dd334d58b00cdb6d17393bc592574e58f2358ed1530e239c1d6e989272eac" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive  apt-get install -y adduser" shape="box"];
  "sha256:9a09b23fcfdb3a6300287e877cd85da6678c38f022231558790043225c121f11" [label="/bin/sh -c ansible-playbook-wrapper -vvv" shape="box"];
  "sha256:2881d2855b9537b050031443db5716f52002b78ee1d989d8f0200fa8c8398e31" [label="/bin/sh -c echo \"===> Installing curl for testing purpose...\"  &&     DEBIAN_FRONTEND=noninteractive      apt-get install -y -f curl" shape="box"];
  "sha256:512730c89c3b1c422dda505cfbbe48c0db90d0280043f55f5876a803dfd84a81" [label="sha256:512730c89c3b1c422dda505cfbbe48c0db90d0280043f55f5876a803dfd84a81" shape="plaintext"];
  "sha256:52b587c65fd395e6a9c1b511c80e7e0129184f80f9dcae0edcdd703ea8bf9474" -> "sha256:a25dd334d58b00cdb6d17393bc592574e58f2358ed1530e239c1d6e989272eac" [label=""];
  "sha256:a25dd334d58b00cdb6d17393bc592574e58f2358ed1530e239c1d6e989272eac" -> "sha256:9a09b23fcfdb3a6300287e877cd85da6678c38f022231558790043225c121f11" [label=""];
  "sha256:9a09b23fcfdb3a6300287e877cd85da6678c38f022231558790043225c121f11" -> "sha256:2881d2855b9537b050031443db5716f52002b78ee1d989d8f0200fa8c8398e31" [label=""];
  "sha256:2881d2855b9537b050031443db5716f52002b78ee1d989d8f0200fa8c8398e31" -> "sha256:512730c89c3b1c422dda505cfbbe48c0db90d0280043f55f5876a803dfd84a81" [label=""];
}

