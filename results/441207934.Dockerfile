[app/sources/441207934.Dockerfile]
digraph {
  "sha256:f1a55abdda1992b9d530077994ba5ec1abfb206fcecf818971f94fdb4bd72bfa" [label="local://context" shape="ellipse"];
  "sha256:6374a0f7406f455edcd0bc4570d519724608f4db40f90b7eb3e1736ea8d927b4" [label="docker-image://docker.io/envoyproxy/envoy:v1.9.0@sha256:36fa7662386ed6db1d3fe7bcfab7cdeb9d2aeceabe0f0e96f5af202e9e3db556" shape="ellipse"];
  "sha256:93427fe6e9636aed716572eedb3e39a25a568381373dbfa0bdfd0694f7971fa0" [label="copy{src=/envoy.yaml, dest=/etc/envoy.yaml}" shape="note"];
  "sha256:ecc757c32a14188fab0db8514d4dfddf2628ce0a48106489ab8395da9f3846f4" [label="copy{src=/keys, dest=/keys}" shape="note"];
  "sha256:f8d9b6dbcc6fe383871b1da248694cd0854f81914d05723124d43a18d8968aa5" [label="sha256:f8d9b6dbcc6fe383871b1da248694cd0854f81914d05723124d43a18d8968aa5" shape="plaintext"];
  "sha256:6374a0f7406f455edcd0bc4570d519724608f4db40f90b7eb3e1736ea8d927b4" -> "sha256:93427fe6e9636aed716572eedb3e39a25a568381373dbfa0bdfd0694f7971fa0" [label=""];
  "sha256:f1a55abdda1992b9d530077994ba5ec1abfb206fcecf818971f94fdb4bd72bfa" -> "sha256:93427fe6e9636aed716572eedb3e39a25a568381373dbfa0bdfd0694f7971fa0" [label=""];
  "sha256:93427fe6e9636aed716572eedb3e39a25a568381373dbfa0bdfd0694f7971fa0" -> "sha256:ecc757c32a14188fab0db8514d4dfddf2628ce0a48106489ab8395da9f3846f4" [label=""];
  "sha256:f1a55abdda1992b9d530077994ba5ec1abfb206fcecf818971f94fdb4bd72bfa" -> "sha256:ecc757c32a14188fab0db8514d4dfddf2628ce0a48106489ab8395da9f3846f4" [label=""];
  "sha256:ecc757c32a14188fab0db8514d4dfddf2628ce0a48106489ab8395da9f3846f4" -> "sha256:f8d9b6dbcc6fe383871b1da248694cd0854f81914d05723124d43a18d8968aa5" [label=""];
}

