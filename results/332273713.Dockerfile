[app/sources/332273713.Dockerfile]
digraph {
  "sha256:c24832dc607b1dce0aed2343ecd20d9f0169470f1b187546d08eda31cef2a22a" [label="local://context" shape="ellipse"];
  "sha256:31bdd700f851de8d5d465c130fda16a1bbffc0c0ebc7912ed143c0e5901404ea" [label="docker-image://docker.io/library/nginx:1.9.14@sha256:fb6ef98e60c85a2291ce1d033ff051b6ed0db31ac7c65ff760bf06bf0fa6e40c" shape="ellipse"];
  "sha256:67af8d906adff73990ba2d6f86735a042b20bdd9ef06fb8d2d5414e4de8a4b57" [label="/bin/sh -c rm /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:ff819be5d00bff8a9e3be301c4fe2bc961fd5233411106517530780ac3507526" [label="copy{src=/frontend.conf, dest=/etc/nginx/conf.d}" shape="note"];
  "sha256:50268d275594ccf0dac0ef0c61483144ed3fc35ca42aab1361e782d29b68d892" [label="sha256:50268d275594ccf0dac0ef0c61483144ed3fc35ca42aab1361e782d29b68d892" shape="plaintext"];
  "sha256:31bdd700f851de8d5d465c130fda16a1bbffc0c0ebc7912ed143c0e5901404ea" -> "sha256:67af8d906adff73990ba2d6f86735a042b20bdd9ef06fb8d2d5414e4de8a4b57" [label=""];
  "sha256:67af8d906adff73990ba2d6f86735a042b20bdd9ef06fb8d2d5414e4de8a4b57" -> "sha256:ff819be5d00bff8a9e3be301c4fe2bc961fd5233411106517530780ac3507526" [label=""];
  "sha256:c24832dc607b1dce0aed2343ecd20d9f0169470f1b187546d08eda31cef2a22a" -> "sha256:ff819be5d00bff8a9e3be301c4fe2bc961fd5233411106517530780ac3507526" [label=""];
  "sha256:ff819be5d00bff8a9e3be301c4fe2bc961fd5233411106517530780ac3507526" -> "sha256:50268d275594ccf0dac0ef0c61483144ed3fc35ca42aab1361e782d29b68d892" [label=""];
}

