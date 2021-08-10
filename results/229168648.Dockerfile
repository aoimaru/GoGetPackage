[app/sources/229168648.Dockerfile]
digraph {
  "sha256:6d308b88bc6a4a1c72795a860192fee6679df9ced14985a0ef572a279ed9d76b" [label="docker-image://docker.io/sapk/cloud9:alpine" shape="ellipse"];
  "sha256:786675ad5c060009de2afa94e1461e44d55c937c40b82aa3edc6d1d1afa23a47" [label="/bin/sh -c apk -U --no-cache --force --no-progress add go" shape="box"];
  "sha256:7d862aa7e0f782952af910c7a7253a0edec8979a46c48580821eea02d82e2bbc" [label="sha256:7d862aa7e0f782952af910c7a7253a0edec8979a46c48580821eea02d82e2bbc" shape="plaintext"];
  "sha256:6d308b88bc6a4a1c72795a860192fee6679df9ced14985a0ef572a279ed9d76b" -> "sha256:786675ad5c060009de2afa94e1461e44d55c937c40b82aa3edc6d1d1afa23a47" [label=""];
  "sha256:786675ad5c060009de2afa94e1461e44d55c937c40b82aa3edc6d1d1afa23a47" -> "sha256:7d862aa7e0f782952af910c7a7253a0edec8979a46c48580821eea02d82e2bbc" [label=""];
}

