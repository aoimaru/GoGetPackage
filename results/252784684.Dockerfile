[app/sources/252784684.Dockerfile]
digraph {
  "sha256:ad7deede01a64fb8b8e80e93dfe1a8de497e69e1383b650ee24dbad02d075dfb" [label="docker-image://docker.io/library/debian:jessie@sha256:32ad5050caffb2c7e969dac873bce2c370015c2256ff984b70c1c08b3a2816a0" shape="ellipse"];
  "sha256:8647982e29586684141de7948e282a626378bfdd965088d86dd80f78e14f1921" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:a3f51524b6670e0945958215b7c39864a25ce1b32182b180254ae404341240b4" [label="/bin/sh -c apt-get install -y clamav clamav-freshclam" shape="box"];
  "sha256:ff373091faa5d383098ca3fb323f4456269406f9e0cc7b6e3c1a895ffbb03131" [label="/bin/sh -c freshclam" shape="box"];
  "sha256:69c3198a4251af799af27a673e50c860e0e1d92667827b4d374204474a45245f" [label="local://context" shape="ellipse"];
  "sha256:87abbbbee5ba17bd08ccf8a3da4ee4d767d0eaef2ca281fb142f5383e29e5f12" [label="copy{src=/malware/EICAR, dest=/malware/}" shape="note"];
  "sha256:20554a2bf283a0644a4015256a9715fa700b56ea00654a616cdf641d6bb21cf0" [label="mkdir{path=/malware}" shape="note"];
  "sha256:6f0cd4075a4ed45c6e639690b2a94a482c28c663cdfee011b609c15c625b9b39" [label="sha256:6f0cd4075a4ed45c6e639690b2a94a482c28c663cdfee011b609c15c625b9b39" shape="plaintext"];
  "sha256:ad7deede01a64fb8b8e80e93dfe1a8de497e69e1383b650ee24dbad02d075dfb" -> "sha256:8647982e29586684141de7948e282a626378bfdd965088d86dd80f78e14f1921" [label=""];
  "sha256:8647982e29586684141de7948e282a626378bfdd965088d86dd80f78e14f1921" -> "sha256:a3f51524b6670e0945958215b7c39864a25ce1b32182b180254ae404341240b4" [label=""];
  "sha256:a3f51524b6670e0945958215b7c39864a25ce1b32182b180254ae404341240b4" -> "sha256:ff373091faa5d383098ca3fb323f4456269406f9e0cc7b6e3c1a895ffbb03131" [label=""];
  "sha256:ff373091faa5d383098ca3fb323f4456269406f9e0cc7b6e3c1a895ffbb03131" -> "sha256:87abbbbee5ba17bd08ccf8a3da4ee4d767d0eaef2ca281fb142f5383e29e5f12" [label=""];
  "sha256:69c3198a4251af799af27a673e50c860e0e1d92667827b4d374204474a45245f" -> "sha256:87abbbbee5ba17bd08ccf8a3da4ee4d767d0eaef2ca281fb142f5383e29e5f12" [label=""];
  "sha256:87abbbbee5ba17bd08ccf8a3da4ee4d767d0eaef2ca281fb142f5383e29e5f12" -> "sha256:20554a2bf283a0644a4015256a9715fa700b56ea00654a616cdf641d6bb21cf0" [label=""];
  "sha256:20554a2bf283a0644a4015256a9715fa700b56ea00654a616cdf641d6bb21cf0" -> "sha256:6f0cd4075a4ed45c6e639690b2a94a482c28c663cdfee011b609c15c625b9b39" [label=""];
}

