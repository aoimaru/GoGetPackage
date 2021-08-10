[app/sources/252768923.Dockerfile]
digraph {
  "sha256:3d62344f6fc2c82fa5520fdfa2aa25d66a4fb59439c2b12bb3aac1293a52a067" [label="docker-image://docker.io/library/docker:stable-git" shape="ellipse"];
  "sha256:c65cac0f167956dd942f888b17528d0a7663adfdcfaddf8676705ba930f6e1ec" [label="/bin/sh -c apk add --no-cache curl" shape="box"];
  "sha256:9c170b985cb82a105a7621db96a1eff05ccabab9366a6aa3a6e25927a122e636" [label="sha256:9c170b985cb82a105a7621db96a1eff05ccabab9366a6aa3a6e25927a122e636" shape="plaintext"];
  "sha256:3d62344f6fc2c82fa5520fdfa2aa25d66a4fb59439c2b12bb3aac1293a52a067" -> "sha256:c65cac0f167956dd942f888b17528d0a7663adfdcfaddf8676705ba930f6e1ec" [label=""];
  "sha256:c65cac0f167956dd942f888b17528d0a7663adfdcfaddf8676705ba930f6e1ec" -> "sha256:9c170b985cb82a105a7621db96a1eff05ccabab9366a6aa3a6e25927a122e636" [label=""];
}

