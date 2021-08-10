[app/sources/427015557.Dockerfile]
digraph {
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk" shape="ellipse"];
  "sha256:eb88000050b1ffc2d443458ff3772ca0aa6017219053675cde1867b178f0a4ec" [label="/bin/sh -c mkdir /step-server" shape="box"];
  "sha256:531eb3645b34fc8cb712c4d8b94f7f902ed6c4dab50fbefad71e8e4fdb94710e" [label="mkdir{path=/step-server}" shape="note"];
  "sha256:fffd384e8e9ae581b93412c74882deed3f6f085122a6aa264d28f2d02a62c077" [label="sha256:fffd384e8e9ae581b93412c74882deed3f6f085122a6aa264d28f2d02a62c077" shape="plaintext"];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" -> "sha256:eb88000050b1ffc2d443458ff3772ca0aa6017219053675cde1867b178f0a4ec" [label=""];
  "sha256:eb88000050b1ffc2d443458ff3772ca0aa6017219053675cde1867b178f0a4ec" -> "sha256:531eb3645b34fc8cb712c4d8b94f7f902ed6c4dab50fbefad71e8e4fdb94710e" [label=""];
  "sha256:531eb3645b34fc8cb712c4d8b94f7f902ed6c4dab50fbefad71e8e4fdb94710e" -> "sha256:fffd384e8e9ae581b93412c74882deed3f6f085122a6aa264d28f2d02a62c077" [label=""];
}

