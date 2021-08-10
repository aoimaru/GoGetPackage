[app/sources/344475269.Dockerfile]
digraph {
  "sha256:44db9070fb0d09dfca23caee677e672cd46d12304fecd23694e348126acc0861" [label="docker-image://docker.io/microsoft/dotnet:2.1-aspnetcore-runtime-stretch-slim" shape="ellipse"];
  "sha256:f24fed4087e5941292dd2d48dc4f2c6c05c15bac9f6d8afe1352b5b971e4b0a3" [label="mkdir{path=/app}" shape="note"];
  "sha256:7da24002353452dd5a1fa3e5702d0d66b18efe04031da9faf2e10367d579971a" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk-stretch" shape="ellipse"];
  "sha256:29bd3c39b1a49c5567fd5de6a0432db3136b859d97005e9c1d051c88a9ae9733" [label="mkdir{path=/app}" shape="note"];
  "sha256:6e76fa9ccb6961bd6656208e8a7c89e1819c8979dfa5dae1f23141605b5a3f05" [label="local://context" shape="ellipse"];
  "sha256:3a0213f4005e35f99ed7a711b78a84f92d72ca1a52a31c53b8d66f0cd8d04ea0" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:9880659e16cf63d7c7577d48d33b6bb761f3a55773fb234eb6138016a0ae03b9" [label="mkdir{path=/app/src/Benchmarks.UI.Server}" shape="note"];
  "sha256:e886fbc6ad6ddccf2e45d5331a2683db54b6ff7b509d8c06ec206f4258e77f2a" [label="/bin/sh -c dotnet publish -c Release -o /app/out" shape="box"];
  "sha256:eb4028ebc7a763401c8b7da38c43b535d75dff4c6d70beea0fcd0c90ee1b7227" [label="copy{src=/app/out, dest=/app/}" shape="note"];
  "sha256:06a0c1d9efcb7a3e16231ba23f4a56236ad7e8d13f4ad27b3a55319f404425d6" [label="mkdir{path=/app/src/BenchmarksDriver}" shape="note"];
  "sha256:a5aabd78044948d770515212bbd2990dfd9a8221c884d1f77059bed960f4339d" [label="/bin/sh -c dotnet publish -c Release -o /app/out" shape="box"];
  "sha256:afb0734310eb5f46fd20196d63246daf28be5d253e0d03c14702b398f6ea0e8b" [label="copy{src=/app/out, dest=/app/driver}" shape="note"];
  "sha256:7a3a844fc0a4646abaf47d6e60e8a903e906101e77b8d2a82a0b6647a8649f1f" [label="sha256:7a3a844fc0a4646abaf47d6e60e8a903e906101e77b8d2a82a0b6647a8649f1f" shape="plaintext"];
  "sha256:44db9070fb0d09dfca23caee677e672cd46d12304fecd23694e348126acc0861" -> "sha256:f24fed4087e5941292dd2d48dc4f2c6c05c15bac9f6d8afe1352b5b971e4b0a3" [label=""];
  "sha256:7da24002353452dd5a1fa3e5702d0d66b18efe04031da9faf2e10367d579971a" -> "sha256:29bd3c39b1a49c5567fd5de6a0432db3136b859d97005e9c1d051c88a9ae9733" [label=""];
  "sha256:29bd3c39b1a49c5567fd5de6a0432db3136b859d97005e9c1d051c88a9ae9733" -> "sha256:3a0213f4005e35f99ed7a711b78a84f92d72ca1a52a31c53b8d66f0cd8d04ea0" [label=""];
  "sha256:6e76fa9ccb6961bd6656208e8a7c89e1819c8979dfa5dae1f23141605b5a3f05" -> "sha256:3a0213f4005e35f99ed7a711b78a84f92d72ca1a52a31c53b8d66f0cd8d04ea0" [label=""];
  "sha256:3a0213f4005e35f99ed7a711b78a84f92d72ca1a52a31c53b8d66f0cd8d04ea0" -> "sha256:9880659e16cf63d7c7577d48d33b6bb761f3a55773fb234eb6138016a0ae03b9" [label=""];
  "sha256:9880659e16cf63d7c7577d48d33b6bb761f3a55773fb234eb6138016a0ae03b9" -> "sha256:e886fbc6ad6ddccf2e45d5331a2683db54b6ff7b509d8c06ec206f4258e77f2a" [label=""];
  "sha256:f24fed4087e5941292dd2d48dc4f2c6c05c15bac9f6d8afe1352b5b971e4b0a3" -> "sha256:eb4028ebc7a763401c8b7da38c43b535d75dff4c6d70beea0fcd0c90ee1b7227" [label=""];
  "sha256:e886fbc6ad6ddccf2e45d5331a2683db54b6ff7b509d8c06ec206f4258e77f2a" -> "sha256:eb4028ebc7a763401c8b7da38c43b535d75dff4c6d70beea0fcd0c90ee1b7227" [label=""];
  "sha256:3a0213f4005e35f99ed7a711b78a84f92d72ca1a52a31c53b8d66f0cd8d04ea0" -> "sha256:06a0c1d9efcb7a3e16231ba23f4a56236ad7e8d13f4ad27b3a55319f404425d6" [label=""];
  "sha256:06a0c1d9efcb7a3e16231ba23f4a56236ad7e8d13f4ad27b3a55319f404425d6" -> "sha256:a5aabd78044948d770515212bbd2990dfd9a8221c884d1f77059bed960f4339d" [label=""];
  "sha256:eb4028ebc7a763401c8b7da38c43b535d75dff4c6d70beea0fcd0c90ee1b7227" -> "sha256:afb0734310eb5f46fd20196d63246daf28be5d253e0d03c14702b398f6ea0e8b" [label=""];
  "sha256:a5aabd78044948d770515212bbd2990dfd9a8221c884d1f77059bed960f4339d" -> "sha256:afb0734310eb5f46fd20196d63246daf28be5d253e0d03c14702b398f6ea0e8b" [label=""];
  "sha256:afb0734310eb5f46fd20196d63246daf28be5d253e0d03c14702b398f6ea0e8b" -> "sha256:7a3a844fc0a4646abaf47d6e60e8a903e906101e77b8d2a82a0b6647a8649f1f" [label=""];
}

