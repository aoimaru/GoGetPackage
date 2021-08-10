[app/sources/285306533.Dockerfile]
digraph {
  "sha256:c40ab91523a07156fb155066b342b01e19a310cffb735938b524b10fd11b600a" [label="docker-image://docker.io/library/python:3.6-onbuild" shape="ellipse"];
  "sha256:da055be3bad078d993df5651220f7c4b2305d2f8d5cedbeed0f5fabfa7de003a" [label="/bin/sh -c touch my_cron.tab" shape="box"];
  "sha256:c9d2afa3658b6cb93ee8e18c48c1616fea07fbb776d6ff4300587e3d651388c2" [label="sha256:c9d2afa3658b6cb93ee8e18c48c1616fea07fbb776d6ff4300587e3d651388c2" shape="plaintext"];
  "sha256:c40ab91523a07156fb155066b342b01e19a310cffb735938b524b10fd11b600a" -> "sha256:da055be3bad078d993df5651220f7c4b2305d2f8d5cedbeed0f5fabfa7de003a" [label=""];
  "sha256:da055be3bad078d993df5651220f7c4b2305d2f8d5cedbeed0f5fabfa7de003a" -> "sha256:c9d2afa3658b6cb93ee8e18c48c1616fea07fbb776d6ff4300587e3d651388c2" [label=""];
}

