[app/sources/467527047.Dockerfile]
digraph {
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" [label="docker-image://docker.io/microsoft/dotnet:2.1-aspnetcore-runtime" shape="ellipse"];
  "sha256:d6d76cbec3306137911862d1b5276ed5dadd8b33361496779f75dcd3fe22a74f" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:8a78f674a6f54c8699881cd7e9cebe24d4c22e85f54e8e305e313e58dc9ac667" [label="/bin/sh -c apt-get install -y net-tools" shape="box"];
  "sha256:784d9fa80d52a74d7f0aa478a9ad458443832590d88bca1637211a8ae9eed721" [label="/bin/sh -c apt-get install -y netcat" shape="box"];
  "sha256:0129325e01595edef5c5bd2fba2b63e738955b2e65913ad990707a0a0a98b9cc" [label="mkdir{path=/app}" shape="note"];
  "sha256:e044ea21b6783e5cf4d6f9e13666482317adf1ae7da7da4bba2cf2864a91a99a" [label="local://context" shape="ellipse"];
  "sha256:cb0f4a9eaddf126637b6e14c6a662140b2aed59256b1b8c68298a58c69bf2094" [label="copy{src=/wait-for, dest=/app/}" shape="note"];
  "sha256:5f9d1f4fe511742735a11388c656f965ce8b1b56aa7269848728b52d7090e491" [label="/bin/sh -c chmod 777 wait-for" shape="box"];
  "sha256:9b7081ccb36f3a83766517980fda9aa181b12ae422b6a948772cafb57674a8a5" [label="mkdir{path=/app}" shape="note"];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk" shape="ellipse"];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label="mkdir{path=/src}" shape="note"];
  "sha256:81a22dd4b6da7dee8ddcb30a47d6085f8a86e31d6b4ee9a5edf3ed13d3b672bf" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:5aa81abcc796e3fd3438d087f97d9d7182fcdbab2327a74d1e6d57a2fa284698" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:90bdc122799b9b8e69bc23e24c0636d63cc6b6b440b70ff4da7d80f5c939b610" [label="mkdir{path=/src/OcelotSample.WeatherService}" shape="note"];
  "sha256:c6c3e5db551004ad6aafab70eb4945c9d20abe6fb24a65929bf3e84c13ef973f" [label="/bin/sh -c dotnet publish \"OcelotSample.WeatherService.csproj\" -c Release -o /app" shape="box"];
  "sha256:c99843db56f98183583d2faa390cc93c21bf0bc2a0679bfee886bae4a5f8e435" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:bce0f2a28c5e3debd60b516f8c5bffed529b4270fdec10f776143f9f010e3888" [label="sha256:bce0f2a28c5e3debd60b516f8c5bffed529b4270fdec10f776143f9f010e3888" shape="plaintext"];
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" -> "sha256:d6d76cbec3306137911862d1b5276ed5dadd8b33361496779f75dcd3fe22a74f" [label=""];
  "sha256:d6d76cbec3306137911862d1b5276ed5dadd8b33361496779f75dcd3fe22a74f" -> "sha256:8a78f674a6f54c8699881cd7e9cebe24d4c22e85f54e8e305e313e58dc9ac667" [label=""];
  "sha256:8a78f674a6f54c8699881cd7e9cebe24d4c22e85f54e8e305e313e58dc9ac667" -> "sha256:784d9fa80d52a74d7f0aa478a9ad458443832590d88bca1637211a8ae9eed721" [label=""];
  "sha256:784d9fa80d52a74d7f0aa478a9ad458443832590d88bca1637211a8ae9eed721" -> "sha256:0129325e01595edef5c5bd2fba2b63e738955b2e65913ad990707a0a0a98b9cc" [label=""];
  "sha256:0129325e01595edef5c5bd2fba2b63e738955b2e65913ad990707a0a0a98b9cc" -> "sha256:cb0f4a9eaddf126637b6e14c6a662140b2aed59256b1b8c68298a58c69bf2094" [label=""];
  "sha256:e044ea21b6783e5cf4d6f9e13666482317adf1ae7da7da4bba2cf2864a91a99a" -> "sha256:cb0f4a9eaddf126637b6e14c6a662140b2aed59256b1b8c68298a58c69bf2094" [label=""];
  "sha256:cb0f4a9eaddf126637b6e14c6a662140b2aed59256b1b8c68298a58c69bf2094" -> "sha256:5f9d1f4fe511742735a11388c656f965ce8b1b56aa7269848728b52d7090e491" [label=""];
  "sha256:5f9d1f4fe511742735a11388c656f965ce8b1b56aa7269848728b52d7090e491" -> "sha256:9b7081ccb36f3a83766517980fda9aa181b12ae422b6a948772cafb57674a8a5" [label=""];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" -> "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label=""];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" -> "sha256:81a22dd4b6da7dee8ddcb30a47d6085f8a86e31d6b4ee9a5edf3ed13d3b672bf" [label=""];
  "sha256:e044ea21b6783e5cf4d6f9e13666482317adf1ae7da7da4bba2cf2864a91a99a" -> "sha256:81a22dd4b6da7dee8ddcb30a47d6085f8a86e31d6b4ee9a5edf3ed13d3b672bf" [label=""];
  "sha256:81a22dd4b6da7dee8ddcb30a47d6085f8a86e31d6b4ee9a5edf3ed13d3b672bf" -> "sha256:5aa81abcc796e3fd3438d087f97d9d7182fcdbab2327a74d1e6d57a2fa284698" [label=""];
  "sha256:5aa81abcc796e3fd3438d087f97d9d7182fcdbab2327a74d1e6d57a2fa284698" -> "sha256:90bdc122799b9b8e69bc23e24c0636d63cc6b6b440b70ff4da7d80f5c939b610" [label=""];
  "sha256:90bdc122799b9b8e69bc23e24c0636d63cc6b6b440b70ff4da7d80f5c939b610" -> "sha256:c6c3e5db551004ad6aafab70eb4945c9d20abe6fb24a65929bf3e84c13ef973f" [label=""];
  "sha256:9b7081ccb36f3a83766517980fda9aa181b12ae422b6a948772cafb57674a8a5" -> "sha256:c99843db56f98183583d2faa390cc93c21bf0bc2a0679bfee886bae4a5f8e435" [label=""];
  "sha256:c6c3e5db551004ad6aafab70eb4945c9d20abe6fb24a65929bf3e84c13ef973f" -> "sha256:c99843db56f98183583d2faa390cc93c21bf0bc2a0679bfee886bae4a5f8e435" [label=""];
  "sha256:c99843db56f98183583d2faa390cc93c21bf0bc2a0679bfee886bae4a5f8e435" -> "sha256:bce0f2a28c5e3debd60b516f8c5bffed529b4270fdec10f776143f9f010e3888" [label=""];
}

