[app/sub_sources/128484364.Dockerfile]
digraph {
  "sha256:36481f15dac0914e49ee8a16428772cf45f2865eb1892289d695b84ced5ecc7a" [label="docker-image://docker.io/library/python:3.6-slim@sha256:3ddfe94b88612c8b5c0a48108f391cc549991d0ab6dee7037c3b836983a34c36" shape="ellipse"];
  "sha256:ecfc19078290751819904756dea79f2eb8d45b4e0cbfa6e36b5d7bd43b291f1a" [label="/bin/sh -c apt-get update &&     apt-get install -y python3-lxml" shape="box"];
  "sha256:28eb3ef1f876e182545d394b4c39bdd31402b64f80530d57a2a1d52c96521f3e" [label="/bin/sh -c /usr/local/bin/python -m pip install -U pip &&     /usr/local/bin/python -m pip install plecost" shape="box"];
  "sha256:9f7ad1e7321c4eba1dbfc5d5056eceeb1672d59803f34eb51e6d62efe77d0882" [label="sha256:9f7ad1e7321c4eba1dbfc5d5056eceeb1672d59803f34eb51e6d62efe77d0882" shape="plaintext"];
  "sha256:36481f15dac0914e49ee8a16428772cf45f2865eb1892289d695b84ced5ecc7a" -> "sha256:ecfc19078290751819904756dea79f2eb8d45b4e0cbfa6e36b5d7bd43b291f1a" [label=""];
  "sha256:ecfc19078290751819904756dea79f2eb8d45b4e0cbfa6e36b5d7bd43b291f1a" -> "sha256:28eb3ef1f876e182545d394b4c39bdd31402b64f80530d57a2a1d52c96521f3e" [label=""];
  "sha256:28eb3ef1f876e182545d394b4c39bdd31402b64f80530d57a2a1d52c96521f3e" -> "sha256:9f7ad1e7321c4eba1dbfc5d5056eceeb1672d59803f34eb51e6d62efe77d0882" [label=""];
}

