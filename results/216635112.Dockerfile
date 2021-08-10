[app/sources/216635112.Dockerfile]
digraph {
  "sha256:5400564884d1c79efa2edc772b87235918bc941cc8be201ddb092b542a152a1c" [label="docker-image://docker.io/microsoft/dotnet:latest" shape="ellipse"];
  "sha256:afc512774d511ffab8cd89bb55e655843bf8b3a8fbf01195627ae6d1eea79935" [label="local://context" shape="ellipse"];
  "sha256:d2c8e37e8fcb59b14a35982288cd85418f71266d48b61432b79130a18f323062" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:63345a0391ce488c74bee23c6367ccaaff95d6b30ced16ecb68b9efd28a7ca4e" [label="mkdir{path=/app}" shape="note"];
  "sha256:2ce8356addd583f93ffe928fde36a9c30c4552eb515ccf2ed4684f690422ae5e" [label="dotnet restore" shape="box"];
  "sha256:bfe605139a982addd8b5e5ac82d3e7f3dc5f6848d905462d7622e87a8dd2266b" [label="dotnet build" shape="box"];
  "sha256:bc72b5a0085e05bdee63de1b03079931ba1517f630dbaa12f30d45dc535fe3dc" [label="sha256:bc72b5a0085e05bdee63de1b03079931ba1517f630dbaa12f30d45dc535fe3dc" shape="plaintext"];
  "sha256:5400564884d1c79efa2edc772b87235918bc941cc8be201ddb092b542a152a1c" -> "sha256:d2c8e37e8fcb59b14a35982288cd85418f71266d48b61432b79130a18f323062" [label=""];
  "sha256:afc512774d511ffab8cd89bb55e655843bf8b3a8fbf01195627ae6d1eea79935" -> "sha256:d2c8e37e8fcb59b14a35982288cd85418f71266d48b61432b79130a18f323062" [label=""];
  "sha256:d2c8e37e8fcb59b14a35982288cd85418f71266d48b61432b79130a18f323062" -> "sha256:63345a0391ce488c74bee23c6367ccaaff95d6b30ced16ecb68b9efd28a7ca4e" [label=""];
  "sha256:63345a0391ce488c74bee23c6367ccaaff95d6b30ced16ecb68b9efd28a7ca4e" -> "sha256:2ce8356addd583f93ffe928fde36a9c30c4552eb515ccf2ed4684f690422ae5e" [label=""];
  "sha256:2ce8356addd583f93ffe928fde36a9c30c4552eb515ccf2ed4684f690422ae5e" -> "sha256:bfe605139a982addd8b5e5ac82d3e7f3dc5f6848d905462d7622e87a8dd2266b" [label=""];
  "sha256:bfe605139a982addd8b5e5ac82d3e7f3dc5f6848d905462d7622e87a8dd2266b" -> "sha256:bc72b5a0085e05bdee63de1b03079931ba1517f630dbaa12f30d45dc535fe3dc" [label=""];
}

