[app/sources/318530619.Dockerfile]
digraph {
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" [label="docker-image://docker.io/library/fedora:28" shape="ellipse"];
  "sha256:c33a3d55a5c92376cf5b49cab2d51122bdfe1f7f935fb602c8a3eb3216becef5" [label="/bin/sh -c dnf -y install make git gcc && dnf -y clean all" shape="box"];
  "sha256:cce4e7e12d5fed7091dac978667c1535755bb441c708a323d4656040f65585f9" [label="/bin/sh -c mkdir -p /gimme && curl -sL https://raw.githubusercontent.com/travis-ci/gimme/master/gimme | HOME=/gimme bash >> /etc/profile.d/gimme.sh" shape="box"];
  "sha256:1b223847d4da527c301a768c6469f348b3b2e873e820fadb3cad9c5895184bd3" [label="/bin/sh -c mkdir -p /go &&     source /etc/profile.d/gimme.sh &&     go get github.com/masterzen/winrm-cli" shape="box"];
  "sha256:b15dcc0abde13ea96fa67b42c7a84e5fd4936511828b2e00d435fa4cbaf3889b" [label="sha256:b15dcc0abde13ea96fa67b42c7a84e5fd4936511828b2e00d435fa4cbaf3889b" shape="plaintext"];
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" -> "sha256:c33a3d55a5c92376cf5b49cab2d51122bdfe1f7f935fb602c8a3eb3216becef5" [label=""];
  "sha256:c33a3d55a5c92376cf5b49cab2d51122bdfe1f7f935fb602c8a3eb3216becef5" -> "sha256:cce4e7e12d5fed7091dac978667c1535755bb441c708a323d4656040f65585f9" [label=""];
  "sha256:cce4e7e12d5fed7091dac978667c1535755bb441c708a323d4656040f65585f9" -> "sha256:1b223847d4da527c301a768c6469f348b3b2e873e820fadb3cad9c5895184bd3" [label=""];
  "sha256:1b223847d4da527c301a768c6469f348b3b2e873e820fadb3cad9c5895184bd3" -> "sha256:b15dcc0abde13ea96fa67b42c7a84e5fd4936511828b2e00d435fa4cbaf3889b" [label=""];
}

