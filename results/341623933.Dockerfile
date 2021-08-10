[app/sources/341623933.Dockerfile]
digraph {
  "sha256:26ab6616ea5d92d7ed6eba8f9ea88f190c40fa71d3552ff25d8f0371e4a4022f" [label="docker-image://docker.io/library/python:3.6-alpine@sha256:ba487a711a0df2d0bcd3769c6b2b435c327ef21f8cafd082af8f0fbdb2584698" shape="ellipse"];
  "sha256:9abb6b77d22125d8ee48b6bff85234998c2d598a4a55dab66bc37138530d63a5" [label="/bin/sh -c apk update &&   apk add postgresql-libs &&   apk add --virtual .build-deps gcc musl-dev postgresql-dev &&   pip install tap-postgres==${version} --no-cache-dir &&   apk --purge del .build-deps" shape="box"];
  "sha256:f4908eb8acaa109d95faeae8e76522456f80c8145bcae7a11c8ae4172d0e3ecc" [label="mkdir{path=/app}" shape="note"];
  "sha256:77bdf5f83609f1b3a59d8e29bb85eb1b7eab320db0373e7d9181049e61bdd44a" [label="sha256:77bdf5f83609f1b3a59d8e29bb85eb1b7eab320db0373e7d9181049e61bdd44a" shape="plaintext"];
  "sha256:26ab6616ea5d92d7ed6eba8f9ea88f190c40fa71d3552ff25d8f0371e4a4022f" -> "sha256:9abb6b77d22125d8ee48b6bff85234998c2d598a4a55dab66bc37138530d63a5" [label=""];
  "sha256:9abb6b77d22125d8ee48b6bff85234998c2d598a4a55dab66bc37138530d63a5" -> "sha256:f4908eb8acaa109d95faeae8e76522456f80c8145bcae7a11c8ae4172d0e3ecc" [label=""];
  "sha256:f4908eb8acaa109d95faeae8e76522456f80c8145bcae7a11c8ae4172d0e3ecc" -> "sha256:77bdf5f83609f1b3a59d8e29bb85eb1b7eab320db0373e7d9181049e61bdd44a" [label=""];
}

