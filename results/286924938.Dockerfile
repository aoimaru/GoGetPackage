[app/sources/286924938.Dockerfile]
digraph {
  "sha256:7350de52948afcb2ea039e60ddac41d6cfcec1c086f4c5021c4be8de5b47dd7e" [label="docker-image://docker.io/microsoft/dotnet:2.0.0" shape="ellipse"];
  "sha256:cf6d4392bff997666a3950e764b55d94b30aa8663a133dc3398d73205869e825" [label="mkdir{path=/list}" shape="note"];
  "sha256:bf0b759e66e242403fba492a08e30eae4397bf9b90057e2a386ae5f73aa86265" [label="local://context" shape="ellipse"];
  "sha256:d5b4d30f25d33a112644e1f60795f5ddff942aac045243a5869ec13cba713008" [label="copy{src=/list, dest=/list/}" shape="note"];
  "sha256:88f7ffcc29fc440706e7733c67f1ac16b06cd7d5c0cd64b5514a10b3be2de197" [label="sha256:88f7ffcc29fc440706e7733c67f1ac16b06cd7d5c0cd64b5514a10b3be2de197" shape="plaintext"];
  "sha256:7350de52948afcb2ea039e60ddac41d6cfcec1c086f4c5021c4be8de5b47dd7e" -> "sha256:cf6d4392bff997666a3950e764b55d94b30aa8663a133dc3398d73205869e825" [label=""];
  "sha256:cf6d4392bff997666a3950e764b55d94b30aa8663a133dc3398d73205869e825" -> "sha256:d5b4d30f25d33a112644e1f60795f5ddff942aac045243a5869ec13cba713008" [label=""];
  "sha256:bf0b759e66e242403fba492a08e30eae4397bf9b90057e2a386ae5f73aa86265" -> "sha256:d5b4d30f25d33a112644e1f60795f5ddff942aac045243a5869ec13cba713008" [label=""];
  "sha256:d5b4d30f25d33a112644e1f60795f5ddff942aac045243a5869ec13cba713008" -> "sha256:88f7ffcc29fc440706e7733c67f1ac16b06cd7d5c0cd64b5514a10b3be2de197" [label=""];
}

