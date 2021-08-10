[app/sources/405636277.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:f33d34dfe594848c003190e40c4adfa239c9571fd51d336b37ddea6b6e1d171f" [label="/bin/sh -c apk update --no-cache && apk add --no-cache zsh git" shape="box"];
  "sha256:1e31d6a778f762b6b2f22571e7a6458d7b39c145884ad6143abbca1f57271015" [label="/bin/sh -c sed -i -e \"s/bin\\/ash/bin\\/zsh/\" /etc/passwd" shape="box"];
  "sha256:bf7c27b87add3e90b2b0590a9391b14f9a0793d0bc7e039cf9c086d6b534a104" [label="local://context" shape="ellipse"];
  "sha256:dd7fe1a49e51d066883b55b3aad03066fcb9a9518296327930c77da9f30c86ae" [label="copy{src=/benchmarks, dest=/}" shape="note"];
  "sha256:531183bfb7a99df6941c110127be256ea1e326ffa455267964a1ac153785e1d7" [label="/bin/sh -c ./install_ohmyzsh" shape="box"];
  "sha256:ea3e9a46e753a4d418cf32a0fb978ef809c3361349c183b84899dad07f84f4a6" [label="/bin/sh -c rm -f /root/.zshrc" shape="box"];
  "sha256:cabe7e29e0e1bb070ba86f52d4f2aa93f36e2797b2d6164f5b0c6555245069a2" [label="/bin/sh -c ln -s /zshrc /root/.zshrc" shape="box"];
  "sha256:42dbe4b5ff974079896cf3fbd403de9dc02bccc57481408727ed02df7a060ce3" [label="sha256:42dbe4b5ff974079896cf3fbd403de9dc02bccc57481408727ed02df7a060ce3" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:f33d34dfe594848c003190e40c4adfa239c9571fd51d336b37ddea6b6e1d171f" [label=""];
  "sha256:f33d34dfe594848c003190e40c4adfa239c9571fd51d336b37ddea6b6e1d171f" -> "sha256:1e31d6a778f762b6b2f22571e7a6458d7b39c145884ad6143abbca1f57271015" [label=""];
  "sha256:1e31d6a778f762b6b2f22571e7a6458d7b39c145884ad6143abbca1f57271015" -> "sha256:dd7fe1a49e51d066883b55b3aad03066fcb9a9518296327930c77da9f30c86ae" [label=""];
  "sha256:bf7c27b87add3e90b2b0590a9391b14f9a0793d0bc7e039cf9c086d6b534a104" -> "sha256:dd7fe1a49e51d066883b55b3aad03066fcb9a9518296327930c77da9f30c86ae" [label=""];
  "sha256:dd7fe1a49e51d066883b55b3aad03066fcb9a9518296327930c77da9f30c86ae" -> "sha256:531183bfb7a99df6941c110127be256ea1e326ffa455267964a1ac153785e1d7" [label=""];
  "sha256:531183bfb7a99df6941c110127be256ea1e326ffa455267964a1ac153785e1d7" -> "sha256:ea3e9a46e753a4d418cf32a0fb978ef809c3361349c183b84899dad07f84f4a6" [label=""];
  "sha256:ea3e9a46e753a4d418cf32a0fb978ef809c3361349c183b84899dad07f84f4a6" -> "sha256:cabe7e29e0e1bb070ba86f52d4f2aa93f36e2797b2d6164f5b0c6555245069a2" [label=""];
  "sha256:cabe7e29e0e1bb070ba86f52d4f2aa93f36e2797b2d6164f5b0c6555245069a2" -> "sha256:42dbe4b5ff974079896cf3fbd403de9dc02bccc57481408727ed02df7a060ce3" [label=""];
}

