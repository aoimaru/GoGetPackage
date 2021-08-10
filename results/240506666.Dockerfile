[app/sources/240506666.Dockerfile]
digraph {
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" [label="docker-image://docker.io/microsoft/dotnet:2.1-aspnetcore-runtime" shape="ellipse"];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label="mkdir{path=/app}" shape="note"];
  "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" [label="mkdir{path=/app}" shape="note"];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk" shape="ellipse"];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label="mkdir{path=/src}" shape="note"];
  "sha256:88011fff8d517e3f0aa866897ca7583f6d14ef3056f3f3717a0c39c2efafecda" [label="local://context" shape="ellipse"];
  "sha256:fca550f992a7c14cc31a5b9cdc0135b719c69ad5a3748c7c36a615b4200e975b" [label="copy{src=/SmartHive.RoomManagerSvc/SmartHive.RoomManagerSvc.csproj, dest=/src/SmartHive.RoomManagerSvc/}" shape="note"];
  "sha256:b50bfe912355f9dad3e4e90a8c60243e2d78506464788393f5a6bc02142b0f36" [label="/bin/sh -c sudo apt-get install -y sqlite3 libsqlite3-dev" shape="box"];
  "sha256:a769b24863026122f5c825b6e42a93ba2c4b44d9459c12930a9e33065d6ca2ae" [label="/bin/sh -c mkdir /db" shape="box"];
  "sha256:c6365da759514dcca262770cbedecc00fe59c3e4b8428e509ac523fe6bc924f3" [label="/bin/sh -c /usr/bin/sqlite3 /db/smarthive.db" shape="box"];
  "sha256:89602e71c9fb805d2801a5a1e510a7cc1e94aeff863660e238ced560540b48c6" [label="/bin/sh -c dotnet restore \"$PROJECT_DIR/SmartHive.RoomManagerSvc.csproj\"" shape="box"];
  "sha256:9e855c17eeb6bfd4d842c1093e45d1040f72666a2824e4cecfd736166305f486" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:cab9e81da46bf24e73a5454a56ccba1034f49ab074084b73e33cbb3ebe0f3832" [label="mkdir{path=/src/SmartHive.RoomManagerSvc}" shape="note"];
  "sha256:64a6df244743f2ccc963b54fbee873189c8364ce5289d6b9a11c2c924b4dc733" [label="/bin/sh -c dotnet build \"SmartHive.RoomManagerSvc.csproj\" -c Release -o /app" shape="box"];
  "sha256:fac3c76898f59e0f017e4f0a2233759c38ac305a2aba7c5da13b4080a5a60b11" [label="/bin/sh -c dotnet publish \"SmartHive.RoomManagerSvc.csproj\" -c Release -o /app" shape="box"];
  "sha256:9eeb7b680242760353583d3524ebf659146e97ccab3de14aa6639bbcd6f81146" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:2a86f858f93c62eacf75c51b1aceac5eb3d57f9f56caad31b86a21fa9c18e836" [label="sha256:2a86f858f93c62eacf75c51b1aceac5eb3d57f9f56caad31b86a21fa9c18e836" shape="plaintext"];
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" -> "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label=""];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" -> "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" [label=""];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" -> "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label=""];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" -> "sha256:fca550f992a7c14cc31a5b9cdc0135b719c69ad5a3748c7c36a615b4200e975b" [label=""];
  "sha256:88011fff8d517e3f0aa866897ca7583f6d14ef3056f3f3717a0c39c2efafecda" -> "sha256:fca550f992a7c14cc31a5b9cdc0135b719c69ad5a3748c7c36a615b4200e975b" [label=""];
  "sha256:fca550f992a7c14cc31a5b9cdc0135b719c69ad5a3748c7c36a615b4200e975b" -> "sha256:b50bfe912355f9dad3e4e90a8c60243e2d78506464788393f5a6bc02142b0f36" [label=""];
  "sha256:b50bfe912355f9dad3e4e90a8c60243e2d78506464788393f5a6bc02142b0f36" -> "sha256:a769b24863026122f5c825b6e42a93ba2c4b44d9459c12930a9e33065d6ca2ae" [label=""];
  "sha256:a769b24863026122f5c825b6e42a93ba2c4b44d9459c12930a9e33065d6ca2ae" -> "sha256:c6365da759514dcca262770cbedecc00fe59c3e4b8428e509ac523fe6bc924f3" [label=""];
  "sha256:c6365da759514dcca262770cbedecc00fe59c3e4b8428e509ac523fe6bc924f3" -> "sha256:89602e71c9fb805d2801a5a1e510a7cc1e94aeff863660e238ced560540b48c6" [label=""];
  "sha256:89602e71c9fb805d2801a5a1e510a7cc1e94aeff863660e238ced560540b48c6" -> "sha256:9e855c17eeb6bfd4d842c1093e45d1040f72666a2824e4cecfd736166305f486" [label=""];
  "sha256:88011fff8d517e3f0aa866897ca7583f6d14ef3056f3f3717a0c39c2efafecda" -> "sha256:9e855c17eeb6bfd4d842c1093e45d1040f72666a2824e4cecfd736166305f486" [label=""];
  "sha256:9e855c17eeb6bfd4d842c1093e45d1040f72666a2824e4cecfd736166305f486" -> "sha256:cab9e81da46bf24e73a5454a56ccba1034f49ab074084b73e33cbb3ebe0f3832" [label=""];
  "sha256:cab9e81da46bf24e73a5454a56ccba1034f49ab074084b73e33cbb3ebe0f3832" -> "sha256:64a6df244743f2ccc963b54fbee873189c8364ce5289d6b9a11c2c924b4dc733" [label=""];
  "sha256:64a6df244743f2ccc963b54fbee873189c8364ce5289d6b9a11c2c924b4dc733" -> "sha256:fac3c76898f59e0f017e4f0a2233759c38ac305a2aba7c5da13b4080a5a60b11" [label=""];
  "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" -> "sha256:9eeb7b680242760353583d3524ebf659146e97ccab3de14aa6639bbcd6f81146" [label=""];
  "sha256:fac3c76898f59e0f017e4f0a2233759c38ac305a2aba7c5da13b4080a5a60b11" -> "sha256:9eeb7b680242760353583d3524ebf659146e97ccab3de14aa6639bbcd6f81146" [label=""];
  "sha256:9eeb7b680242760353583d3524ebf659146e97ccab3de14aa6639bbcd6f81146" -> "sha256:2a86f858f93c62eacf75c51b1aceac5eb3d57f9f56caad31b86a21fa9c18e836" [label=""];
}

