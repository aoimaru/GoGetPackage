[app/sources/252784877.Dockerfile]
digraph {
  "sha256:203723bbfae2253a7900f94c29fcc704fc860aad7a5f80e39272f0b6a0431988" [label="docker-image://docker.io/mhart/alpine-node:5.11" shape="ellipse"];
  "sha256:0e7ed1699c6777ed1406a32feef2a4ee6a7e044baeca7b3b420ecc32d3f28c7f" [label="local://context" shape="ellipse"];
  "sha256:c898743e1707404d4581a0938ffcefa5cb4ea05f7b505899ad09b46be2706547" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:ac217186a67fb3d74c673c4f71eccf97942e2931133d8c0d261b182ee2a6d092" [label="/bin/sh -c npm install" shape="box"];
  "sha256:4ee45433c21cf73405aa961c8e45530e45924547e1b5ea05f890fac8e560b45f" [label="sha256:4ee45433c21cf73405aa961c8e45530e45924547e1b5ea05f890fac8e560b45f" shape="plaintext"];
  "sha256:203723bbfae2253a7900f94c29fcc704fc860aad7a5f80e39272f0b6a0431988" -> "sha256:c898743e1707404d4581a0938ffcefa5cb4ea05f7b505899ad09b46be2706547" [label=""];
  "sha256:0e7ed1699c6777ed1406a32feef2a4ee6a7e044baeca7b3b420ecc32d3f28c7f" -> "sha256:c898743e1707404d4581a0938ffcefa5cb4ea05f7b505899ad09b46be2706547" [label=""];
  "sha256:c898743e1707404d4581a0938ffcefa5cb4ea05f7b505899ad09b46be2706547" -> "sha256:ac217186a67fb3d74c673c4f71eccf97942e2931133d8c0d261b182ee2a6d092" [label=""];
  "sha256:ac217186a67fb3d74c673c4f71eccf97942e2931133d8c0d261b182ee2a6d092" -> "sha256:4ee45433c21cf73405aa961c8e45530e45924547e1b5ea05f890fac8e560b45f" [label=""];
}

