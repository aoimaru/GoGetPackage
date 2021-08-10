[app/sources/233156214.Dockerfile]
digraph {
  "sha256:46ab288da4cfaae5741b9235e4ea68ee65865ef088b868af0243dc2da742af9e" [label="docker-image://docker.io/mdillon/postgis:9.6" shape="ellipse"];
  "sha256:505e4039b548256c4f2d2923f6564a497672e5b6e6939acf7bb600ccabef246d" [label="local://context" shape="ellipse"];
  "sha256:68714aff8285071d4153e4f8e207b23b66e6fe04a9b4be31ad3e7d39d307ab21" [label="copy{src=/db-healthcheck, dest=/usr/local/bin/}" shape="note"];
  "sha256:802c9099be31d4afcb1b73bbdc55338bfa2720726024a4c79ac57545f52e8adf" [label="/bin/sh -c chmod +x /usr/local/bin/db-healthcheck" shape="box"];
  "sha256:ddb1137e938f3a534ff9cb78c49b9fa3c1e833d2840eb85cb228d1867b8821e5" [label="sha256:ddb1137e938f3a534ff9cb78c49b9fa3c1e833d2840eb85cb228d1867b8821e5" shape="plaintext"];
  "sha256:46ab288da4cfaae5741b9235e4ea68ee65865ef088b868af0243dc2da742af9e" -> "sha256:68714aff8285071d4153e4f8e207b23b66e6fe04a9b4be31ad3e7d39d307ab21" [label=""];
  "sha256:505e4039b548256c4f2d2923f6564a497672e5b6e6939acf7bb600ccabef246d" -> "sha256:68714aff8285071d4153e4f8e207b23b66e6fe04a9b4be31ad3e7d39d307ab21" [label=""];
  "sha256:68714aff8285071d4153e4f8e207b23b66e6fe04a9b4be31ad3e7d39d307ab21" -> "sha256:802c9099be31d4afcb1b73bbdc55338bfa2720726024a4c79ac57545f52e8adf" [label=""];
  "sha256:802c9099be31d4afcb1b73bbdc55338bfa2720726024a4c79ac57545f52e8adf" -> "sha256:ddb1137e938f3a534ff9cb78c49b9fa3c1e833d2840eb85cb228d1867b8821e5" [label=""];
}

