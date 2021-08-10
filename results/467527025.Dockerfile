[app/sources/467527025.Dockerfile]
digraph {
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" [label="docker-image://docker.io/microsoft/dotnet:2.1-aspnetcore-runtime" shape="ellipse"];
  "sha256:d6d76cbec3306137911862d1b5276ed5dadd8b33361496779f75dcd3fe22a74f" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:8a78f674a6f54c8699881cd7e9cebe24d4c22e85f54e8e305e313e58dc9ac667" [label="/bin/sh -c apt-get install -y net-tools" shape="box"];
  "sha256:784d9fa80d52a74d7f0aa478a9ad458443832590d88bca1637211a8ae9eed721" [label="/bin/sh -c apt-get install -y netcat" shape="box"];
  "sha256:0129325e01595edef5c5bd2fba2b63e738955b2e65913ad990707a0a0a98b9cc" [label="mkdir{path=/app}" shape="note"];
  "sha256:7c210c3528739cefd3101d058ccf9e1df348a78059f377d742836b980dcc3c03" [label="local://context" shape="ellipse"];
  "sha256:48151d3a59bc2eb10d71f771cfe804e4ef319b4a36a3b2ff5292d7ef817a14d6" [label="copy{src=/wait-for, dest=/app/}" shape="note"];
  "sha256:dda1916b5be5a6b98d30a0cedda194dc2a2159d64c23128b0de51774509f96e7" [label="/bin/sh -c chmod 777 wait-for" shape="box"];
  "sha256:bed7e14a802b924a0160d2c5a3c0073c695b76d6941ba11dbee35c62ced99220" [label="mkdir{path=/app}" shape="note"];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk" shape="ellipse"];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label="mkdir{path=/src}" shape="note"];
  "sha256:da91827a9ca3a716a62739bb119e6780b914c6379de32f5e2ee3ede7fbd0a8dd" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:c169dc3d57a39d0ac7108b4520922b6e88a898b82cb6481dab5cf5ff7136361a" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:d9331cd3550f2be2037f332abf1b98174bb8e45f2355a40787719a3d3ea07c38" [label="mkdir{path=/src/OcelotSample.APIGateway}" shape="note"];
  "sha256:80bca3c669888df7eac13d643d6a720eb995dc640edd55e55fc0306ed67cc618" [label="/bin/sh -c dotnet publish \"OcelotSample.APIGateway.csproj\" -c Release -o /app" shape="box"];
  "sha256:33a4b1a0f0689dfec47a6c249cf2502f859dbb301821746ca2efce26e0b665fe" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:452795f47a53b6db310b315bd1de7860d53c35de70a90babd65fe14568a35836" [label="sha256:452795f47a53b6db310b315bd1de7860d53c35de70a90babd65fe14568a35836" shape="plaintext"];
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" -> "sha256:d6d76cbec3306137911862d1b5276ed5dadd8b33361496779f75dcd3fe22a74f" [label=""];
  "sha256:d6d76cbec3306137911862d1b5276ed5dadd8b33361496779f75dcd3fe22a74f" -> "sha256:8a78f674a6f54c8699881cd7e9cebe24d4c22e85f54e8e305e313e58dc9ac667" [label=""];
  "sha256:8a78f674a6f54c8699881cd7e9cebe24d4c22e85f54e8e305e313e58dc9ac667" -> "sha256:784d9fa80d52a74d7f0aa478a9ad458443832590d88bca1637211a8ae9eed721" [label=""];
  "sha256:784d9fa80d52a74d7f0aa478a9ad458443832590d88bca1637211a8ae9eed721" -> "sha256:0129325e01595edef5c5bd2fba2b63e738955b2e65913ad990707a0a0a98b9cc" [label=""];
  "sha256:0129325e01595edef5c5bd2fba2b63e738955b2e65913ad990707a0a0a98b9cc" -> "sha256:48151d3a59bc2eb10d71f771cfe804e4ef319b4a36a3b2ff5292d7ef817a14d6" [label=""];
  "sha256:7c210c3528739cefd3101d058ccf9e1df348a78059f377d742836b980dcc3c03" -> "sha256:48151d3a59bc2eb10d71f771cfe804e4ef319b4a36a3b2ff5292d7ef817a14d6" [label=""];
  "sha256:48151d3a59bc2eb10d71f771cfe804e4ef319b4a36a3b2ff5292d7ef817a14d6" -> "sha256:dda1916b5be5a6b98d30a0cedda194dc2a2159d64c23128b0de51774509f96e7" [label=""];
  "sha256:dda1916b5be5a6b98d30a0cedda194dc2a2159d64c23128b0de51774509f96e7" -> "sha256:bed7e14a802b924a0160d2c5a3c0073c695b76d6941ba11dbee35c62ced99220" [label=""];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" -> "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label=""];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" -> "sha256:da91827a9ca3a716a62739bb119e6780b914c6379de32f5e2ee3ede7fbd0a8dd" [label=""];
  "sha256:7c210c3528739cefd3101d058ccf9e1df348a78059f377d742836b980dcc3c03" -> "sha256:da91827a9ca3a716a62739bb119e6780b914c6379de32f5e2ee3ede7fbd0a8dd" [label=""];
  "sha256:da91827a9ca3a716a62739bb119e6780b914c6379de32f5e2ee3ede7fbd0a8dd" -> "sha256:c169dc3d57a39d0ac7108b4520922b6e88a898b82cb6481dab5cf5ff7136361a" [label=""];
  "sha256:c169dc3d57a39d0ac7108b4520922b6e88a898b82cb6481dab5cf5ff7136361a" -> "sha256:d9331cd3550f2be2037f332abf1b98174bb8e45f2355a40787719a3d3ea07c38" [label=""];
  "sha256:d9331cd3550f2be2037f332abf1b98174bb8e45f2355a40787719a3d3ea07c38" -> "sha256:80bca3c669888df7eac13d643d6a720eb995dc640edd55e55fc0306ed67cc618" [label=""];
  "sha256:bed7e14a802b924a0160d2c5a3c0073c695b76d6941ba11dbee35c62ced99220" -> "sha256:33a4b1a0f0689dfec47a6c249cf2502f859dbb301821746ca2efce26e0b665fe" [label=""];
  "sha256:80bca3c669888df7eac13d643d6a720eb995dc640edd55e55fc0306ed67cc618" -> "sha256:33a4b1a0f0689dfec47a6c249cf2502f859dbb301821746ca2efce26e0b665fe" [label=""];
  "sha256:33a4b1a0f0689dfec47a6c249cf2502f859dbb301821746ca2efce26e0b665fe" -> "sha256:452795f47a53b6db310b315bd1de7860d53c35de70a90babd65fe14568a35836" [label=""];
}

