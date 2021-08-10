[app/sources/221660112.Dockerfile]
digraph {
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" [label="docker-image://docker.io/microsoft/dotnet:2.1-aspnetcore-runtime" shape="ellipse"];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label="mkdir{path=/app}" shape="note"];
  "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" [label="mkdir{path=/app}" shape="note"];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk" shape="ellipse"];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label="mkdir{path=/src}" shape="note"];
  "sha256:f5580f9ff98b02b82251a4baf648685064ab6a35d7e1576dd4fedbc0ebe50b7a" [label="local://context" shape="ellipse"];
  "sha256:ea172b924da04b15f030258839eb7a100ffa36437f4c31400d9a153af85541e7" [label="copy{src=/DownstreamService/DownstreamService.csproj, dest=/src/DownstreamService/}" shape="note"];
  "sha256:4afaa961816b3d8a8b555523ae9fcff7dae4f86a1a31c27528067135ab40058d" [label="/bin/sh -c dotnet restore \"DownstreamService/DownstreamService.csproj\"" shape="box"];
  "sha256:c16e9bbb6579eda7d951421aa69435fa1ce88122f6db8d002b3fe8694b580b7c" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:7fabc32d2e12e63690e38a062e6edfcbe6a2f44d57b90adb8f9639369635c1a7" [label="mkdir{path=/src/DownstreamService}" shape="note"];
  "sha256:5fa8483db4071e4594a0f79df3401fb4c2700612c64c92c386df9be0646e1c31" [label="/bin/sh -c dotnet build \"DownstreamService.csproj\" -c Release -o /app" shape="box"];
  "sha256:4594b03db5484e79cf60d0670d131441bef8648f852504c1f2d58392e01e72d3" [label="/bin/sh -c dotnet publish \"DownstreamService.csproj\" -c Release -o /app" shape="box"];
  "sha256:eb733588be770a7bf675a06c3f02677109c242c6b4cef66a57b8e5a206aa9670" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:04d5dba6e4b22f34c25dc259d66d6d7f36da89d988c108450ec93e9a5034dac6" [label="sha256:04d5dba6e4b22f34c25dc259d66d6d7f36da89d988c108450ec93e9a5034dac6" shape="plaintext"];
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" -> "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label=""];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" -> "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" [label=""];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" -> "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label=""];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" -> "sha256:ea172b924da04b15f030258839eb7a100ffa36437f4c31400d9a153af85541e7" [label=""];
  "sha256:f5580f9ff98b02b82251a4baf648685064ab6a35d7e1576dd4fedbc0ebe50b7a" -> "sha256:ea172b924da04b15f030258839eb7a100ffa36437f4c31400d9a153af85541e7" [label=""];
  "sha256:ea172b924da04b15f030258839eb7a100ffa36437f4c31400d9a153af85541e7" -> "sha256:4afaa961816b3d8a8b555523ae9fcff7dae4f86a1a31c27528067135ab40058d" [label=""];
  "sha256:4afaa961816b3d8a8b555523ae9fcff7dae4f86a1a31c27528067135ab40058d" -> "sha256:c16e9bbb6579eda7d951421aa69435fa1ce88122f6db8d002b3fe8694b580b7c" [label=""];
  "sha256:f5580f9ff98b02b82251a4baf648685064ab6a35d7e1576dd4fedbc0ebe50b7a" -> "sha256:c16e9bbb6579eda7d951421aa69435fa1ce88122f6db8d002b3fe8694b580b7c" [label=""];
  "sha256:c16e9bbb6579eda7d951421aa69435fa1ce88122f6db8d002b3fe8694b580b7c" -> "sha256:7fabc32d2e12e63690e38a062e6edfcbe6a2f44d57b90adb8f9639369635c1a7" [label=""];
  "sha256:7fabc32d2e12e63690e38a062e6edfcbe6a2f44d57b90adb8f9639369635c1a7" -> "sha256:5fa8483db4071e4594a0f79df3401fb4c2700612c64c92c386df9be0646e1c31" [label=""];
  "sha256:5fa8483db4071e4594a0f79df3401fb4c2700612c64c92c386df9be0646e1c31" -> "sha256:4594b03db5484e79cf60d0670d131441bef8648f852504c1f2d58392e01e72d3" [label=""];
  "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" -> "sha256:eb733588be770a7bf675a06c3f02677109c242c6b4cef66a57b8e5a206aa9670" [label=""];
  "sha256:4594b03db5484e79cf60d0670d131441bef8648f852504c1f2d58392e01e72d3" -> "sha256:eb733588be770a7bf675a06c3f02677109c242c6b4cef66a57b8e5a206aa9670" [label=""];
  "sha256:eb733588be770a7bf675a06c3f02677109c242c6b4cef66a57b8e5a206aa9670" -> "sha256:04d5dba6e4b22f34c25dc259d66d6d7f36da89d988c108450ec93e9a5034dac6" [label=""];
}

