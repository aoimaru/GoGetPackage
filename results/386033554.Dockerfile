[app/sources/386033554.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:fdac23d7f980bfecb5b88dcddbbbd4151ecafc3fc6848f62913875085535b7e5" [label="/bin/sh -c mkdir -p /a && touch /a/1" shape="box"];
  "sha256:4b630eaf746721ea7e06043cd6b6a0e1fc81b2ae24cb5cadddbebaf81cf7ba30" [label="copy{src=/a, dest=/a}" shape="note"];
  "sha256:09e01c320b6d3deb4130a39ed0c7486d5a81e05d48ff7c8cdc2cd7948752a1aa" [label="/bin/sh -c ls -al /a/1 && ! ls -al /a/a" shape="box"];
  "sha256:f4949159d45c9ca4c0c6fd31db6f499023ac9175e505dc7518fcc7871f91a924" [label="sha256:f4949159d45c9ca4c0c6fd31db6f499023ac9175e505dc7518fcc7871f91a924" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:fdac23d7f980bfecb5b88dcddbbbd4151ecafc3fc6848f62913875085535b7e5" [label=""];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:4b630eaf746721ea7e06043cd6b6a0e1fc81b2ae24cb5cadddbebaf81cf7ba30" [label=""];
  "sha256:fdac23d7f980bfecb5b88dcddbbbd4151ecafc3fc6848f62913875085535b7e5" -> "sha256:4b630eaf746721ea7e06043cd6b6a0e1fc81b2ae24cb5cadddbebaf81cf7ba30" [label=""];
  "sha256:4b630eaf746721ea7e06043cd6b6a0e1fc81b2ae24cb5cadddbebaf81cf7ba30" -> "sha256:09e01c320b6d3deb4130a39ed0c7486d5a81e05d48ff7c8cdc2cd7948752a1aa" [label=""];
  "sha256:09e01c320b6d3deb4130a39ed0c7486d5a81e05d48ff7c8cdc2cd7948752a1aa" -> "sha256:f4949159d45c9ca4c0c6fd31db6f499023ac9175e505dc7518fcc7871f91a924" [label=""];
}

