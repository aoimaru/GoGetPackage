[app/sources/307915144.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:290a1109347624ac43ead57494aac7794a3eace9570e5645eedb8a4c248af0eb" [label="local://context" shape="ellipse"];
  "sha256:aadc21d282a98bc4b103d14c392a3ccfc42c8a1ce3c327c670dd147401960603" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:646305afac720cb4c490c752925cf13ffa9f849992111b13c44ad4793fde13e2" [label="sha256:646305afac720cb4c490c752925cf13ffa9f849992111b13c44ad4793fde13e2" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:aadc21d282a98bc4b103d14c392a3ccfc42c8a1ce3c327c670dd147401960603" [label=""];
  "sha256:290a1109347624ac43ead57494aac7794a3eace9570e5645eedb8a4c248af0eb" -> "sha256:aadc21d282a98bc4b103d14c392a3ccfc42c8a1ce3c327c670dd147401960603" [label=""];
  "sha256:aadc21d282a98bc4b103d14c392a3ccfc42c8a1ce3c327c670dd147401960603" -> "sha256:646305afac720cb4c490c752925cf13ffa9f849992111b13c44ad4793fde13e2" [label=""];
}

