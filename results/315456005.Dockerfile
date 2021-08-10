[app/sources/315456005.Dockerfile]
digraph {
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk" shape="ellipse"];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label="mkdir{path=/src}" shape="note"];
  "sha256:eed7993f725541bcb83f7e8e912d245b460e32e63d6494915b34a9a723c8ccad" [label="local://context" shape="ellipse"];
  "sha256:fe630c89dc3982b1a4ef5947eb91f8c8e75408c8266c08883fa785348f99e666" [label="copy{src=/app.csproj, dest=/src/}" shape="note"];
  "sha256:4861a3dc530c6239de698cacf95dbda7e45db2357913bb0879cc0af516cc9a86" [label="/bin/sh -c dotnet restore \"app.csproj\"" shape="box"];
  "sha256:964b190f3e555ed03aff11077bd9fe060bf4ada433a12d1499710c958830ea66" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:67fef98950c03469d462355a5e4fe50008d7dcac7a5d7e3c1d03acb9c6f13fc4" [label="/bin/sh -c dotnet build \"app.csproj\" -c Release -o /app" shape="box"];
  "sha256:7625d2fd0a23b8a701b6db02a857c9b81bc28cf76a29dcb3cb0468962a4c8fe9" [label="/bin/sh -c dotnet publish \"app.csproj\" -c Release -o /app" shape="box"];
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" [label="docker-image://docker.io/microsoft/dotnet:2.1-aspnetcore-runtime" shape="ellipse"];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label="mkdir{path=/app}" shape="note"];
  "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" [label="mkdir{path=/app}" shape="note"];
  "sha256:a941265fd45d2f53ea427a60695dbac6b78acde5a64d97e7f03e5050901d1227" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:c24f812842a336fc57f03ae792419e98d1d8a701b69e91b570b28a698db11750" [label="sha256:c24f812842a336fc57f03ae792419e98d1d8a701b69e91b570b28a698db11750" shape="plaintext"];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" -> "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label=""];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" -> "sha256:fe630c89dc3982b1a4ef5947eb91f8c8e75408c8266c08883fa785348f99e666" [label=""];
  "sha256:eed7993f725541bcb83f7e8e912d245b460e32e63d6494915b34a9a723c8ccad" -> "sha256:fe630c89dc3982b1a4ef5947eb91f8c8e75408c8266c08883fa785348f99e666" [label=""];
  "sha256:fe630c89dc3982b1a4ef5947eb91f8c8e75408c8266c08883fa785348f99e666" -> "sha256:4861a3dc530c6239de698cacf95dbda7e45db2357913bb0879cc0af516cc9a86" [label=""];
  "sha256:4861a3dc530c6239de698cacf95dbda7e45db2357913bb0879cc0af516cc9a86" -> "sha256:964b190f3e555ed03aff11077bd9fe060bf4ada433a12d1499710c958830ea66" [label=""];
  "sha256:eed7993f725541bcb83f7e8e912d245b460e32e63d6494915b34a9a723c8ccad" -> "sha256:964b190f3e555ed03aff11077bd9fe060bf4ada433a12d1499710c958830ea66" [label=""];
  "sha256:964b190f3e555ed03aff11077bd9fe060bf4ada433a12d1499710c958830ea66" -> "sha256:67fef98950c03469d462355a5e4fe50008d7dcac7a5d7e3c1d03acb9c6f13fc4" [label=""];
  "sha256:67fef98950c03469d462355a5e4fe50008d7dcac7a5d7e3c1d03acb9c6f13fc4" -> "sha256:7625d2fd0a23b8a701b6db02a857c9b81bc28cf76a29dcb3cb0468962a4c8fe9" [label=""];
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" -> "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label=""];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" -> "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" [label=""];
  "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" -> "sha256:a941265fd45d2f53ea427a60695dbac6b78acde5a64d97e7f03e5050901d1227" [label=""];
  "sha256:7625d2fd0a23b8a701b6db02a857c9b81bc28cf76a29dcb3cb0468962a4c8fe9" -> "sha256:a941265fd45d2f53ea427a60695dbac6b78acde5a64d97e7f03e5050901d1227" [label=""];
  "sha256:a941265fd45d2f53ea427a60695dbac6b78acde5a64d97e7f03e5050901d1227" -> "sha256:c24f812842a336fc57f03ae792419e98d1d8a701b69e91b570b28a698db11750" [label=""];
}

