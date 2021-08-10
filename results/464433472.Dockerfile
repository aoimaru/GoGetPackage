[app/sources/464433472.Dockerfile]
digraph {
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" [label="docker-image://docker.io/microsoft/dotnet:2.1-aspnetcore-runtime" shape="ellipse"];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label="mkdir{path=/app}" shape="note"];
  "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" [label="mkdir{path=/app}" shape="note"];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk" shape="ellipse"];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label="mkdir{path=/src}" shape="note"];
  "sha256:ac3f0ed995337e19c09a1c22f80524e4ba063f99b4eed4fd474edef707549428" [label="local://context" shape="ellipse"];
  "sha256:2815ed21ee37ca3c4eee2a5a858c564a0a73e3f498c5eed00cb26f3b1b393642" [label="copy{src=/RockPaperScissorsBoom.Server/RockPaperScissorsBoom.Server.csproj, dest=/src/RockPaperScissorsBoom.Server/}" shape="note"];
  "sha256:e40e652e6e1f390fe70e6edb516b0e29d29cf9cc7519251ba7a1b3dbbab2c737" [label="/bin/sh -c dotnet restore RockPaperScissorsBoom.Server/RockPaperScissorsBoom.Server.csproj" shape="box"];
  "sha256:7f67b10bedfffaf6396e571db619484342f3f45cf896c5683a531386d0970d31" [label="copy{src=/RockPaperScissorsBoom.Server, dest=/src/RockPaperScissorsBoom.Server/}" shape="note"];
  "sha256:a0cd015364a4579fd65806e516014e2bde245fda230e3a0b489565e144131bcf" [label="copy{src=/RockPaperScissor.Core, dest=/src/RockPaperScissor.Core/}" shape="note"];
  "sha256:b73081089a4be8bbfff4eb8f2e19fb82389b912f054fdc9037f7333261587913" [label="mkdir{path=/src/RockPaperScissorsBoom.Server}" shape="note"];
  "sha256:869c09f93ed5efcee8e9a99db1ea3b31ff3c052f202deed485fe7171502a031f" [label="/bin/sh -c dotnet build RockPaperScissorsBoom.Server.csproj -c Release -o /app" shape="box"];
  "sha256:114038bd9311a24a3b248c41c8c0d978dbc0a37426d23f44ab43a4ed6fd86758" [label="/bin/sh -c dotnet publish RockPaperScissorsBoom.Server.csproj -c Release -o /app" shape="box"];
  "sha256:706e4f8715024109d4d21b99c007e5cdfb68b6b0e7d922c6965ed949822f681c" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:4cfaf7f143faebc2049dece6e391c9ade5f7e1de4cd677cf40be59aa19695b11" [label="sha256:4cfaf7f143faebc2049dece6e391c9ade5f7e1de4cd677cf40be59aa19695b11" shape="plaintext"];
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" -> "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label=""];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" -> "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" [label=""];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" -> "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label=""];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" -> "sha256:2815ed21ee37ca3c4eee2a5a858c564a0a73e3f498c5eed00cb26f3b1b393642" [label=""];
  "sha256:ac3f0ed995337e19c09a1c22f80524e4ba063f99b4eed4fd474edef707549428" -> "sha256:2815ed21ee37ca3c4eee2a5a858c564a0a73e3f498c5eed00cb26f3b1b393642" [label=""];
  "sha256:2815ed21ee37ca3c4eee2a5a858c564a0a73e3f498c5eed00cb26f3b1b393642" -> "sha256:e40e652e6e1f390fe70e6edb516b0e29d29cf9cc7519251ba7a1b3dbbab2c737" [label=""];
  "sha256:e40e652e6e1f390fe70e6edb516b0e29d29cf9cc7519251ba7a1b3dbbab2c737" -> "sha256:7f67b10bedfffaf6396e571db619484342f3f45cf896c5683a531386d0970d31" [label=""];
  "sha256:ac3f0ed995337e19c09a1c22f80524e4ba063f99b4eed4fd474edef707549428" -> "sha256:7f67b10bedfffaf6396e571db619484342f3f45cf896c5683a531386d0970d31" [label=""];
  "sha256:7f67b10bedfffaf6396e571db619484342f3f45cf896c5683a531386d0970d31" -> "sha256:a0cd015364a4579fd65806e516014e2bde245fda230e3a0b489565e144131bcf" [label=""];
  "sha256:ac3f0ed995337e19c09a1c22f80524e4ba063f99b4eed4fd474edef707549428" -> "sha256:a0cd015364a4579fd65806e516014e2bde245fda230e3a0b489565e144131bcf" [label=""];
  "sha256:a0cd015364a4579fd65806e516014e2bde245fda230e3a0b489565e144131bcf" -> "sha256:b73081089a4be8bbfff4eb8f2e19fb82389b912f054fdc9037f7333261587913" [label=""];
  "sha256:b73081089a4be8bbfff4eb8f2e19fb82389b912f054fdc9037f7333261587913" -> "sha256:869c09f93ed5efcee8e9a99db1ea3b31ff3c052f202deed485fe7171502a031f" [label=""];
  "sha256:869c09f93ed5efcee8e9a99db1ea3b31ff3c052f202deed485fe7171502a031f" -> "sha256:114038bd9311a24a3b248c41c8c0d978dbc0a37426d23f44ab43a4ed6fd86758" [label=""];
  "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" -> "sha256:706e4f8715024109d4d21b99c007e5cdfb68b6b0e7d922c6965ed949822f681c" [label=""];
  "sha256:114038bd9311a24a3b248c41c8c0d978dbc0a37426d23f44ab43a4ed6fd86758" -> "sha256:706e4f8715024109d4d21b99c007e5cdfb68b6b0e7d922c6965ed949822f681c" [label=""];
  "sha256:706e4f8715024109d4d21b99c007e5cdfb68b6b0e7d922c6965ed949822f681c" -> "sha256:4cfaf7f143faebc2049dece6e391c9ade5f7e1de4cd677cf40be59aa19695b11" [label=""];
}

