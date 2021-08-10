[app/sources/275050696.Dockerfile]
digraph {
  "sha256:97ea4e0329c8766752a14da5b4966054c29a3aee58b1f563e86eb33c3683a4f8" [label="docker-image://docker.io/microsoft/dotnet:2.2.0-aspnetcore-runtime-bionic" shape="ellipse"];
  "sha256:7b2108781877419209ca4321e1880f620381dd1f9c01221efaff65ef97a94820" [label="mkdir{path=/app}" shape="note"];
  "sha256:f116a2874b4d28010d8450060cf331285822dd5fd9e5a5a1d40824d0c180d6a3" [label="local://context" shape="ellipse"];
  "sha256:d11a34f663c78e802f2484fc9186a7190af8c70e8ee1b4806c969e4bfe7433f5" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:c89f99ac6fb5303fb4a08895d106de2862db90028e3fbe0a55910d7a21d0ff71" [label="/bin/sh -c mkdir /app/data" shape="box"];
  "sha256:dfd3b49c5a60c7e8aed48fdc8495f98941dd1660fec120df2c0eb24be17e566b" [label="sha256:dfd3b49c5a60c7e8aed48fdc8495f98941dd1660fec120df2c0eb24be17e566b" shape="plaintext"];
  "sha256:97ea4e0329c8766752a14da5b4966054c29a3aee58b1f563e86eb33c3683a4f8" -> "sha256:7b2108781877419209ca4321e1880f620381dd1f9c01221efaff65ef97a94820" [label=""];
  "sha256:7b2108781877419209ca4321e1880f620381dd1f9c01221efaff65ef97a94820" -> "sha256:d11a34f663c78e802f2484fc9186a7190af8c70e8ee1b4806c969e4bfe7433f5" [label=""];
  "sha256:f116a2874b4d28010d8450060cf331285822dd5fd9e5a5a1d40824d0c180d6a3" -> "sha256:d11a34f663c78e802f2484fc9186a7190af8c70e8ee1b4806c969e4bfe7433f5" [label=""];
  "sha256:d11a34f663c78e802f2484fc9186a7190af8c70e8ee1b4806c969e4bfe7433f5" -> "sha256:c89f99ac6fb5303fb4a08895d106de2862db90028e3fbe0a55910d7a21d0ff71" [label=""];
  "sha256:c89f99ac6fb5303fb4a08895d106de2862db90028e3fbe0a55910d7a21d0ff71" -> "sha256:dfd3b49c5a60c7e8aed48fdc8495f98941dd1660fec120df2c0eb24be17e566b" [label=""];
}

