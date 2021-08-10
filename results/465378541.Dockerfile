[app/sources/465378541.Dockerfile]
digraph {
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk" shape="ellipse"];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label="mkdir{path=/src}" shape="note"];
  "sha256:a7db68472e2a9b560f1d1c0d8ed64342a0744a93794829c113592ff077636fcf" [label="mkdir{path=/src}" shape="note"];
  "sha256:62c1c3625ba7a4e79b9ba87e1dcc3a291d7f0f5d88b7034c978e61e5669263e8" [label="local://context" shape="ellipse"];
  "sha256:42541e0a8a17d02c0df8e266cf7066e7fe0d266f4c66be4a8bd39fe4a327c155" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:e2d952e59a077447a57d6b4b448c642661157f263c6632e492aa59898aa6a036" [label="mkdir{path=/src/src/Web/WebMVC}" shape="note"];
  "sha256:0097454e13b37e4f5999cb4ffd445677295c344e3d9c5aa9434bc4752f460092" [label="/bin/sh -c dotnet restore -nowarn:msb3202,nu1503" shape="box"];
  "sha256:5fa4f241d0640cf6b187733367f33d5d7a516f40f2d9986f8860e3da15432f2d" [label="/bin/sh -c dotnet publish --no-restore -c Release -o /app" shape="box"];
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" [label="docker-image://docker.io/microsoft/dotnet:2.1-aspnetcore-runtime" shape="ellipse"];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label="mkdir{path=/app}" shape="note"];
  "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" [label="mkdir{path=/app}" shape="note"];
  "sha256:e95a0f16f2ebf39c8f2e8665db0ae290a35a0e053e5bf9cfd0e95c881418d3e6" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:8d445b164e6b364597970a791ebabc7970ebee9bcd453c6b25ed0692b31ad789" [label="sha256:8d445b164e6b364597970a791ebabc7970ebee9bcd453c6b25ed0692b31ad789" shape="plaintext"];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" -> "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label=""];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" -> "sha256:a7db68472e2a9b560f1d1c0d8ed64342a0744a93794829c113592ff077636fcf" [label=""];
  "sha256:a7db68472e2a9b560f1d1c0d8ed64342a0744a93794829c113592ff077636fcf" -> "sha256:42541e0a8a17d02c0df8e266cf7066e7fe0d266f4c66be4a8bd39fe4a327c155" [label=""];
  "sha256:62c1c3625ba7a4e79b9ba87e1dcc3a291d7f0f5d88b7034c978e61e5669263e8" -> "sha256:42541e0a8a17d02c0df8e266cf7066e7fe0d266f4c66be4a8bd39fe4a327c155" [label=""];
  "sha256:42541e0a8a17d02c0df8e266cf7066e7fe0d266f4c66be4a8bd39fe4a327c155" -> "sha256:e2d952e59a077447a57d6b4b448c642661157f263c6632e492aa59898aa6a036" [label=""];
  "sha256:e2d952e59a077447a57d6b4b448c642661157f263c6632e492aa59898aa6a036" -> "sha256:0097454e13b37e4f5999cb4ffd445677295c344e3d9c5aa9434bc4752f460092" [label=""];
  "sha256:0097454e13b37e4f5999cb4ffd445677295c344e3d9c5aa9434bc4752f460092" -> "sha256:5fa4f241d0640cf6b187733367f33d5d7a516f40f2d9986f8860e3da15432f2d" [label=""];
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" -> "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label=""];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" -> "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" [label=""];
  "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" -> "sha256:e95a0f16f2ebf39c8f2e8665db0ae290a35a0e053e5bf9cfd0e95c881418d3e6" [label=""];
  "sha256:5fa4f241d0640cf6b187733367f33d5d7a516f40f2d9986f8860e3da15432f2d" -> "sha256:e95a0f16f2ebf39c8f2e8665db0ae290a35a0e053e5bf9cfd0e95c881418d3e6" [label=""];
  "sha256:e95a0f16f2ebf39c8f2e8665db0ae290a35a0e053e5bf9cfd0e95c881418d3e6" -> "sha256:8d445b164e6b364597970a791ebabc7970ebee9bcd453c6b25ed0692b31ad789" [label=""];
}

