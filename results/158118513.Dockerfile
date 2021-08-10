[app/sources/158118513.Dockerfile]
digraph {
  "sha256:ad7deede01a64fb8b8e80e93dfe1a8de497e69e1383b650ee24dbad02d075dfb" [label="docker-image://docker.io/library/debian:jessie@sha256:32ad5050caffb2c7e969dac873bce2c370015c2256ff984b70c1c08b3a2816a0" shape="ellipse"];
  "sha256:d8e60c6232dc9d867ba6bf50f770e29e5c2608d46800f1e9f3717e195b5d4a21" [label="/bin/sh -c apt-get update && apt-get install -y     chromium     chromium-l10n     libcanberra-gtk-module     libexif-dev     --no-install-recommends" shape="box"];
  "sha256:e3b18844502f581adf73729bb665962db96c3bb220b13e1ff355f2b30c708348" [label="sha256:e3b18844502f581adf73729bb665962db96c3bb220b13e1ff355f2b30c708348" shape="plaintext"];
  "sha256:ad7deede01a64fb8b8e80e93dfe1a8de497e69e1383b650ee24dbad02d075dfb" -> "sha256:d8e60c6232dc9d867ba6bf50f770e29e5c2608d46800f1e9f3717e195b5d4a21" [label=""];
  "sha256:d8e60c6232dc9d867ba6bf50f770e29e5c2608d46800f1e9f3717e195b5d4a21" -> "sha256:e3b18844502f581adf73729bb665962db96c3bb220b13e1ff355f2b30c708348" [label=""];
}

