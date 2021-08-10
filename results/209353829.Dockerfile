[app/sources/209353829.Dockerfile]
digraph {
  "sha256:3a9f5cce14aa03cd470af11ea06af0c3f517ca8bc7ebb5c69588a8d4ccd4ba94" [label="docker-image://docker.io/library/python:3.6.4-alpine" shape="ellipse"];
  "sha256:59257231c33339fbac040b44c093183f023b7c8e3c4a82ec0d15986615422d4f" [label="/bin/sh -c echo \"http://dl-3.alpinelinux.org/alpine/edge/main\" >> /etc/apk/repositories" shape="box"];
  "sha256:8c4b6c5edf6cacef2bc924a9c40fbee5d6c5f0e9ed4ec91c6a536fb3beecb59c" [label="/bin/sh -c apk update" shape="box"];
  "sha256:600cc3247b14a26be5aab13146084ba9ab95f5c785ffefbf1cc8a9f6aa045b90" [label="/bin/sh -c apk add --upgrade apk-tools" shape="box"];
  "sha256:8d0c8665d5f0b32cc6dfcfe2004468e7b264bbead77b0186598cb147ea7a1fda" [label="/bin/sh -c apk add     --update alpine-sdk" shape="box"];
  "sha256:2876a7bf7b76d9f385ec6886381f949c77d98a3b4bfe7cf48ee78865cea36ee0" [label="/bin/sh -c apk add openssl     ca-certificates     libressl2.7-libcrypto" shape="box"];
  "sha256:2db985ea6320f8283a0081df4db7e6d3c2edf834dc7375e46bc1ca544c49f53b" [label="/bin/sh -c apk add     libxml2-dev     libxslt-dev     xmlsec-dev" shape="box"];
  "sha256:6efa596afed8e1575a53ad705fb312bf9cf08ced9c5285106b5edc8461f535c1" [label="/bin/sh -c apk add postgresql-dev     libffi-dev    jpeg-dev" shape="box"];
  "sha256:85d9348215c969f972472ea3a6b25e338380529460cc54889ab6c5768f8a0f43" [label="/bin/sh -c apk add --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/     gdal     gdal-dev     py-gdal     geos     geos-dev     gcc     g++" shape="box"];
  "sha256:283313ff31a08774e09651a8e6dc724115c4996193698f03cf3f07cdcfc53b53" [label="/bin/sh -c apk add bash" shape="box"];
  "sha256:8993c39314da2df79396a5b7bb5a4d3bd3725da8c4c82427b3928032c5f8b40d" [label="/bin/sh -c pip install --upgrade     setuptools     pip     wheel     pipenv     tox" shape="box"];
  "sha256:5d67a7edfb48218ad05686d7ef9892cd4fae2e624f0a5bc997d237bb8fdd6ce6" [label="sha256:5d67a7edfb48218ad05686d7ef9892cd4fae2e624f0a5bc997d237bb8fdd6ce6" shape="plaintext"];
  "sha256:3a9f5cce14aa03cd470af11ea06af0c3f517ca8bc7ebb5c69588a8d4ccd4ba94" -> "sha256:59257231c33339fbac040b44c093183f023b7c8e3c4a82ec0d15986615422d4f" [label=""];
  "sha256:59257231c33339fbac040b44c093183f023b7c8e3c4a82ec0d15986615422d4f" -> "sha256:8c4b6c5edf6cacef2bc924a9c40fbee5d6c5f0e9ed4ec91c6a536fb3beecb59c" [label=""];
  "sha256:8c4b6c5edf6cacef2bc924a9c40fbee5d6c5f0e9ed4ec91c6a536fb3beecb59c" -> "sha256:600cc3247b14a26be5aab13146084ba9ab95f5c785ffefbf1cc8a9f6aa045b90" [label=""];
  "sha256:600cc3247b14a26be5aab13146084ba9ab95f5c785ffefbf1cc8a9f6aa045b90" -> "sha256:8d0c8665d5f0b32cc6dfcfe2004468e7b264bbead77b0186598cb147ea7a1fda" [label=""];
  "sha256:8d0c8665d5f0b32cc6dfcfe2004468e7b264bbead77b0186598cb147ea7a1fda" -> "sha256:2876a7bf7b76d9f385ec6886381f949c77d98a3b4bfe7cf48ee78865cea36ee0" [label=""];
  "sha256:2876a7bf7b76d9f385ec6886381f949c77d98a3b4bfe7cf48ee78865cea36ee0" -> "sha256:2db985ea6320f8283a0081df4db7e6d3c2edf834dc7375e46bc1ca544c49f53b" [label=""];
  "sha256:2db985ea6320f8283a0081df4db7e6d3c2edf834dc7375e46bc1ca544c49f53b" -> "sha256:6efa596afed8e1575a53ad705fb312bf9cf08ced9c5285106b5edc8461f535c1" [label=""];
  "sha256:6efa596afed8e1575a53ad705fb312bf9cf08ced9c5285106b5edc8461f535c1" -> "sha256:85d9348215c969f972472ea3a6b25e338380529460cc54889ab6c5768f8a0f43" [label=""];
  "sha256:85d9348215c969f972472ea3a6b25e338380529460cc54889ab6c5768f8a0f43" -> "sha256:283313ff31a08774e09651a8e6dc724115c4996193698f03cf3f07cdcfc53b53" [label=""];
  "sha256:283313ff31a08774e09651a8e6dc724115c4996193698f03cf3f07cdcfc53b53" -> "sha256:8993c39314da2df79396a5b7bb5a4d3bd3725da8c4c82427b3928032c5f8b40d" [label=""];
  "sha256:8993c39314da2df79396a5b7bb5a4d3bd3725da8c4c82427b3928032c5f8b40d" -> "sha256:5d67a7edfb48218ad05686d7ef9892cd4fae2e624f0a5bc997d237bb8fdd6ce6" [label=""];
}

