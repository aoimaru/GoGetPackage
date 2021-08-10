[app/sources/305814149.Dockerfile]
digraph {
  "sha256:6435866ef4b2e7e5f4fee43b69606ecd21bf4a649f4a74ecf790c7a39ab5d847" [label="docker-image://docker.io/tipsi/base_python:1.0.6" shape="ellipse"];
  "sha256:631e3627b0d91d57533656823b91d0481a31d3031740bce4bd55073b9fdfd4fa" [label="mkdir{path=/code}" shape="note"];
  "sha256:fce5ed00de3953e44be85de0b3f2143f6eb1806f6e1b86c1956fa2dfc08a4579" [label="/bin/sh -c pip3 install pytest==3.6.* pytest-asyncio asynctest" shape="box"];
  "sha256:8173d4d59e2f534447e9bdfbeaa68add3fceaa1b72b548d934ecf104a10359a9" [label="/bin/sh -c apt install -y tcpdump" shape="box"];
  "sha256:957b5535f2b952d13441023b8d0954e8d6c12b2cb1b9566f7b8a4afa6abcac66" [label="local://context" shape="ellipse"];
  "sha256:09d9c9e3f53b8719cc61f82f8b639da1efa7b5cc7da6584604102e1c48419ca5" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:6371de49c2869d4b187dd370828be69bc14a42233b6dc092c8ef3b79744839de" [label="mkdir{path=/code}" shape="note"];
  "sha256:dfeb503c5ed6206a3c85dee41d4d1c5ac002f289cc403ac8851d0cc015124415" [label="sha256:dfeb503c5ed6206a3c85dee41d4d1c5ac002f289cc403ac8851d0cc015124415" shape="plaintext"];
  "sha256:6435866ef4b2e7e5f4fee43b69606ecd21bf4a649f4a74ecf790c7a39ab5d847" -> "sha256:631e3627b0d91d57533656823b91d0481a31d3031740bce4bd55073b9fdfd4fa" [label=""];
  "sha256:631e3627b0d91d57533656823b91d0481a31d3031740bce4bd55073b9fdfd4fa" -> "sha256:fce5ed00de3953e44be85de0b3f2143f6eb1806f6e1b86c1956fa2dfc08a4579" [label=""];
  "sha256:fce5ed00de3953e44be85de0b3f2143f6eb1806f6e1b86c1956fa2dfc08a4579" -> "sha256:8173d4d59e2f534447e9bdfbeaa68add3fceaa1b72b548d934ecf104a10359a9" [label=""];
  "sha256:8173d4d59e2f534447e9bdfbeaa68add3fceaa1b72b548d934ecf104a10359a9" -> "sha256:09d9c9e3f53b8719cc61f82f8b639da1efa7b5cc7da6584604102e1c48419ca5" [label=""];
  "sha256:957b5535f2b952d13441023b8d0954e8d6c12b2cb1b9566f7b8a4afa6abcac66" -> "sha256:09d9c9e3f53b8719cc61f82f8b639da1efa7b5cc7da6584604102e1c48419ca5" [label=""];
  "sha256:09d9c9e3f53b8719cc61f82f8b639da1efa7b5cc7da6584604102e1c48419ca5" -> "sha256:6371de49c2869d4b187dd370828be69bc14a42233b6dc092c8ef3b79744839de" [label=""];
  "sha256:6371de49c2869d4b187dd370828be69bc14a42233b6dc092c8ef3b79744839de" -> "sha256:dfeb503c5ed6206a3c85dee41d4d1c5ac002f289cc403ac8851d0cc015124415" [label=""];
}

