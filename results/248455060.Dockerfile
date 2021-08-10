[app/sources/248455060.Dockerfile]
digraph {
  "sha256:8833511602ef22b82610890148ac45d66d692d1c36a034477257a9ef119cf923" [label="docker-image://docker.io/library/django-celery-beat_base:latest" shape="ellipse"];
  "sha256:3963da3a1d196298b8c4c666cf72d66d405bf21f410846e31660cc63ef341602" [label="local://context" shape="ellipse"];
  "sha256:8e510560943e0e9a78202e4c5fa44af96d1a64d957c9c944038407467d6ab1c1" [label="copy{src=/docker/celery-beat/entrypoint.sh, dest=/app/docker/celery-beat/}" shape="note"];
  "sha256:f19ce1415d749fcf47dfe741b2d7e17ead12c30ff2d63cf1511163a5d256b6e1" [label="sha256:f19ce1415d749fcf47dfe741b2d7e17ead12c30ff2d63cf1511163a5d256b6e1" shape="plaintext"];
  "sha256:8833511602ef22b82610890148ac45d66d692d1c36a034477257a9ef119cf923" -> "sha256:8e510560943e0e9a78202e4c5fa44af96d1a64d957c9c944038407467d6ab1c1" [label=""];
  "sha256:3963da3a1d196298b8c4c666cf72d66d405bf21f410846e31660cc63ef341602" -> "sha256:8e510560943e0e9a78202e4c5fa44af96d1a64d957c9c944038407467d6ab1c1" [label=""];
  "sha256:8e510560943e0e9a78202e4c5fa44af96d1a64d957c9c944038407467d6ab1c1" -> "sha256:f19ce1415d749fcf47dfe741b2d7e17ead12c30ff2d63cf1511163a5d256b6e1" [label=""];
}

