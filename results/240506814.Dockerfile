[app/sources/240506814.Dockerfile]
digraph {
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" [label="docker-image://docker.io/microsoft/dotnet:2.1-aspnetcore-runtime" shape="ellipse"];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label="mkdir{path=/app}" shape="note"];
  "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" [label="mkdir{path=/app}" shape="note"];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk" shape="ellipse"];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label="mkdir{path=/src}" shape="note"];
  "sha256:8a179218128c0654cc8ee72b10311d7c872ff751c83b9929048d24a5d85789cd" [label="local://context" shape="ellipse"];
  "sha256:448661c6de0c5989fd308585210c029856462657743d3b470ac702df607f6c66" [label="copy{src=/SmartHive.RoomSchedulerSvc/SmartHive.RoomSchedulerSvc.csproj, dest=/src/SmartHive.RoomSchedulerSvc/}" shape="note"];
  "sha256:27c9f69f9eaf547a95780746eec7d80f798b7161b168f2d36ac57a00abf77b12" [label="/bin/sh -c dotnet restore \"$PROJECT_DIR/SmartHive.RoomSchedulerSvc.csproj\"" shape="box"];
  "sha256:47f408caf401da50af15a6e030d8f456c893b1a75a54179f4c499121716a3f39" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:81c21dad6ebdcc5160fe67a14cf1d0e536ad26f60bdb61a7f4a73114b276f962" [label="mkdir{path=/src/SmartHive.RoomSchedulerSvc}" shape="note"];
  "sha256:8c3022a99bc5efcf93c7bdff34b984ede3a483b907f9cbd780d48338bb9d2ce7" [label="/bin/sh -c dotnet build \"SmartHive.RoomSchedulerSvc.csproj\" -c Release -o /app" shape="box"];
  "sha256:d4ba8c3f01092fc9a07dc3ee728c75fc3247ade9ee7c945765d4aa655ce263ef" [label="/bin/sh -c dotnet publish \"SmartHive.RoomSchedulerSvc.csproj\" -c Release -o /app" shape="box"];
  "sha256:9673d3922a11b5c4872cd5d8e81c7be80266e28d48573fad277d41c6bc08edbe" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:b627075ed69eb252941687a9c7cfaffe0483cad684f019d388a187a2bac781e1" [label="sha256:b627075ed69eb252941687a9c7cfaffe0483cad684f019d388a187a2bac781e1" shape="plaintext"];
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" -> "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label=""];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" -> "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" [label=""];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" -> "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label=""];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" -> "sha256:448661c6de0c5989fd308585210c029856462657743d3b470ac702df607f6c66" [label=""];
  "sha256:8a179218128c0654cc8ee72b10311d7c872ff751c83b9929048d24a5d85789cd" -> "sha256:448661c6de0c5989fd308585210c029856462657743d3b470ac702df607f6c66" [label=""];
  "sha256:448661c6de0c5989fd308585210c029856462657743d3b470ac702df607f6c66" -> "sha256:27c9f69f9eaf547a95780746eec7d80f798b7161b168f2d36ac57a00abf77b12" [label=""];
  "sha256:27c9f69f9eaf547a95780746eec7d80f798b7161b168f2d36ac57a00abf77b12" -> "sha256:47f408caf401da50af15a6e030d8f456c893b1a75a54179f4c499121716a3f39" [label=""];
  "sha256:8a179218128c0654cc8ee72b10311d7c872ff751c83b9929048d24a5d85789cd" -> "sha256:47f408caf401da50af15a6e030d8f456c893b1a75a54179f4c499121716a3f39" [label=""];
  "sha256:47f408caf401da50af15a6e030d8f456c893b1a75a54179f4c499121716a3f39" -> "sha256:81c21dad6ebdcc5160fe67a14cf1d0e536ad26f60bdb61a7f4a73114b276f962" [label=""];
  "sha256:81c21dad6ebdcc5160fe67a14cf1d0e536ad26f60bdb61a7f4a73114b276f962" -> "sha256:8c3022a99bc5efcf93c7bdff34b984ede3a483b907f9cbd780d48338bb9d2ce7" [label=""];
  "sha256:8c3022a99bc5efcf93c7bdff34b984ede3a483b907f9cbd780d48338bb9d2ce7" -> "sha256:d4ba8c3f01092fc9a07dc3ee728c75fc3247ade9ee7c945765d4aa655ce263ef" [label=""];
  "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" -> "sha256:9673d3922a11b5c4872cd5d8e81c7be80266e28d48573fad277d41c6bc08edbe" [label=""];
  "sha256:d4ba8c3f01092fc9a07dc3ee728c75fc3247ade9ee7c945765d4aa655ce263ef" -> "sha256:9673d3922a11b5c4872cd5d8e81c7be80266e28d48573fad277d41c6bc08edbe" [label=""];
  "sha256:9673d3922a11b5c4872cd5d8e81c7be80266e28d48573fad277d41c6bc08edbe" -> "sha256:b627075ed69eb252941687a9c7cfaffe0483cad684f019d388a187a2bac781e1" [label=""];
}

