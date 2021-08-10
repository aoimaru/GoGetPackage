[app/sources/145440212.Dockerfile]
digraph {
  "sha256:0083753dee51424135921d9ac0a0e47fa630e553b2ad641d1e843526a78e9d01" [label="docker-image://docker.io/microsoft/dotnet:2.0-runtime" shape="ellipse"];
  "sha256:57e834924beb40cf4a2a13965c5af62cfbebb73377abaf987afc28552135bf01" [label="mkdir{path=/app}" shape="note"];
  "sha256:c416a40b4a4c29150159c9098595d24fbb07b7e057ce7278e145c4e52ef31eda" [label="docker-image://docker.io/microsoft/dotnet:2.0-sdk" shape="ellipse"];
  "sha256:994520f6e52aeb005a04b198260bcbb2c24b6d8725eb1b414259bb3627efdf8e" [label="mkdir{path=/app}" shape="note"];
  "sha256:4defc57b7dbfdf23a6a387670a9340fb12db95248e10c1192badeaaca9eab344" [label="local://context" shape="ellipse"];
  "sha256:41b080bb060e314d5f78bacbfe6e74b621f27826ae0ad621b927a785448e8a89" [label="copy{src=/*.csproj, dest=/app/}" shape="note"];
  "sha256:919dd7232240c73d3aae6dbf2982f701b591b0f26663f7941354ac978a1c7b75" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:7435f6b5786ace9377c07bbae2a8f5a35f4f1db81efc85a33d919d85b9c6258c" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:f4457a175fd8e4ccc703b3547ad7f6a20e9daa133586e9c0fe8c6da328c1a622" [label="/bin/sh -c dotnet publish -c Release -o out" shape="box"];
  "sha256:6c8c6764130b6c34915f17d54e49ff128128d45b386d09574fb3cc2df21a098e" [label="copy{src=/app/out, dest=/app/}" shape="note"];
  "sha256:98c97ecf5731e7356fc69624686fa1fa53140d7611e378b207b3770815764786" [label="sha256:98c97ecf5731e7356fc69624686fa1fa53140d7611e378b207b3770815764786" shape="plaintext"];
  "sha256:0083753dee51424135921d9ac0a0e47fa630e553b2ad641d1e843526a78e9d01" -> "sha256:57e834924beb40cf4a2a13965c5af62cfbebb73377abaf987afc28552135bf01" [label=""];
  "sha256:c416a40b4a4c29150159c9098595d24fbb07b7e057ce7278e145c4e52ef31eda" -> "sha256:994520f6e52aeb005a04b198260bcbb2c24b6d8725eb1b414259bb3627efdf8e" [label=""];
  "sha256:994520f6e52aeb005a04b198260bcbb2c24b6d8725eb1b414259bb3627efdf8e" -> "sha256:41b080bb060e314d5f78bacbfe6e74b621f27826ae0ad621b927a785448e8a89" [label=""];
  "sha256:4defc57b7dbfdf23a6a387670a9340fb12db95248e10c1192badeaaca9eab344" -> "sha256:41b080bb060e314d5f78bacbfe6e74b621f27826ae0ad621b927a785448e8a89" [label=""];
  "sha256:41b080bb060e314d5f78bacbfe6e74b621f27826ae0ad621b927a785448e8a89" -> "sha256:919dd7232240c73d3aae6dbf2982f701b591b0f26663f7941354ac978a1c7b75" [label=""];
  "sha256:919dd7232240c73d3aae6dbf2982f701b591b0f26663f7941354ac978a1c7b75" -> "sha256:7435f6b5786ace9377c07bbae2a8f5a35f4f1db81efc85a33d919d85b9c6258c" [label=""];
  "sha256:4defc57b7dbfdf23a6a387670a9340fb12db95248e10c1192badeaaca9eab344" -> "sha256:7435f6b5786ace9377c07bbae2a8f5a35f4f1db81efc85a33d919d85b9c6258c" [label=""];
  "sha256:7435f6b5786ace9377c07bbae2a8f5a35f4f1db81efc85a33d919d85b9c6258c" -> "sha256:f4457a175fd8e4ccc703b3547ad7f6a20e9daa133586e9c0fe8c6da328c1a622" [label=""];
  "sha256:57e834924beb40cf4a2a13965c5af62cfbebb73377abaf987afc28552135bf01" -> "sha256:6c8c6764130b6c34915f17d54e49ff128128d45b386d09574fb3cc2df21a098e" [label=""];
  "sha256:f4457a175fd8e4ccc703b3547ad7f6a20e9daa133586e9c0fe8c6da328c1a622" -> "sha256:6c8c6764130b6c34915f17d54e49ff128128d45b386d09574fb3cc2df21a098e" [label=""];
  "sha256:6c8c6764130b6c34915f17d54e49ff128128d45b386d09574fb3cc2df21a098e" -> "sha256:98c97ecf5731e7356fc69624686fa1fa53140d7611e378b207b3770815764786" [label=""];
}

