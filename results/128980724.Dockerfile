[app/sources/128980724.Dockerfile]
digraph {
  "sha256:6a8e20df819ab47bf920867551a674c6c966f4acbcdb3c0c2a5299d882ac25a3" [label="docker-image://docker.io/library/node:lts-alpine" shape="ellipse"];
  "sha256:a055e0eed85992d8b8edd5675a254b41329c985f567a60fc57a53ea2c7ad5352" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:ac2cf2738e2c387aeef098966021a028615d71a58891cb3780d3949cc8ed54db" [label="local://context" shape="ellipse"];
  "sha256:108e7de64dcefd7992fe94220949d62f2c3dc87a9d0a54d4b50414ee64f529b8" [label="copy{src=/package*.json, dest=/usr/src/app/}" shape="note"];
  "sha256:17c56d586bc998f22ae907c033edd848caee4c04c70ceaa9db9261d2f863089f" [label="/bin/sh -c npm ci --only=production" shape="box"];
  "sha256:f9a37788ace2c838380c13692067ea087a390aefe55462a0a7a222d95ecce618" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:014bb5419283238871f6f0ff3f3743f20b088749dbbffcd58776b9ad01109fa3" [label="sha256:014bb5419283238871f6f0ff3f3743f20b088749dbbffcd58776b9ad01109fa3" shape="plaintext"];
  "sha256:6a8e20df819ab47bf920867551a674c6c966f4acbcdb3c0c2a5299d882ac25a3" -> "sha256:a055e0eed85992d8b8edd5675a254b41329c985f567a60fc57a53ea2c7ad5352" [label=""];
  "sha256:a055e0eed85992d8b8edd5675a254b41329c985f567a60fc57a53ea2c7ad5352" -> "sha256:108e7de64dcefd7992fe94220949d62f2c3dc87a9d0a54d4b50414ee64f529b8" [label=""];
  "sha256:ac2cf2738e2c387aeef098966021a028615d71a58891cb3780d3949cc8ed54db" -> "sha256:108e7de64dcefd7992fe94220949d62f2c3dc87a9d0a54d4b50414ee64f529b8" [label=""];
  "sha256:108e7de64dcefd7992fe94220949d62f2c3dc87a9d0a54d4b50414ee64f529b8" -> "sha256:17c56d586bc998f22ae907c033edd848caee4c04c70ceaa9db9261d2f863089f" [label=""];
  "sha256:17c56d586bc998f22ae907c033edd848caee4c04c70ceaa9db9261d2f863089f" -> "sha256:f9a37788ace2c838380c13692067ea087a390aefe55462a0a7a222d95ecce618" [label=""];
  "sha256:ac2cf2738e2c387aeef098966021a028615d71a58891cb3780d3949cc8ed54db" -> "sha256:f9a37788ace2c838380c13692067ea087a390aefe55462a0a7a222d95ecce618" [label=""];
  "sha256:f9a37788ace2c838380c13692067ea087a390aefe55462a0a7a222d95ecce618" -> "sha256:014bb5419283238871f6f0ff3f3743f20b088749dbbffcd58776b9ad01109fa3" [label=""];
}

