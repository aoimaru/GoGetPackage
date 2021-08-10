[app/sources/209156590.Dockerfile]
digraph {
  "sha256:aa338b98f890663e0aa7cf1125d47c5a39db11a275e1e0030cf430d83261fee6" [label="docker-image://docker.io/pluie/alpine:latest" shape="ellipse"];
  "sha256:deed0907aaba4043da02765471035ad9e6dbc280b5f63d4aa995595bc6d9e0d1" [label="local://context" shape="ellipse"];
  "sha256:78b32bf867a22a16b79602295430045a7337427f75195c61a605c909707d66d0" [label="copy{src=/files.tar, dest=/scripts}" shape="note"];
  "sha256:e7acd3814237d85e4d3bf0b2d693311b319350ff4e8ef4e939234ce9a1cd4f9a" [label="/bin/sh -c bash /scripts/install.sh" shape="box"];
  "sha256:e68ebdb729d17b14907a3ddc5c5f728ab058acf6b5109a8b532a7d0a95db18d3" [label="sha256:e68ebdb729d17b14907a3ddc5c5f728ab058acf6b5109a8b532a7d0a95db18d3" shape="plaintext"];
  "sha256:aa338b98f890663e0aa7cf1125d47c5a39db11a275e1e0030cf430d83261fee6" -> "sha256:78b32bf867a22a16b79602295430045a7337427f75195c61a605c909707d66d0" [label=""];
  "sha256:deed0907aaba4043da02765471035ad9e6dbc280b5f63d4aa995595bc6d9e0d1" -> "sha256:78b32bf867a22a16b79602295430045a7337427f75195c61a605c909707d66d0" [label=""];
  "sha256:78b32bf867a22a16b79602295430045a7337427f75195c61a605c909707d66d0" -> "sha256:e7acd3814237d85e4d3bf0b2d693311b319350ff4e8ef4e939234ce9a1cd4f9a" [label=""];
  "sha256:e7acd3814237d85e4d3bf0b2d693311b319350ff4e8ef4e939234ce9a1cd4f9a" -> "sha256:e68ebdb729d17b14907a3ddc5c5f728ab058acf6b5109a8b532a7d0a95db18d3" [label=""];
}

