[app/sources/382094611.Dockerfile]
digraph {
  "sha256:3982dd81e64e285bb067cfc4d89f2e91a0de01048831b6799694d7b0a13000a3" [label="docker-image://docker.io/microsoft/dotnet:3.0-aspnetcore-runtime-stretch-slim@sha256:f8e01a17cfba4b780c9e4ffbe5619466afabdab7df8cb7b5447f8c3d9578c655" shape="ellipse"];
  "sha256:d7536c33203062054ed97767ac8632abd1486dda334ff5e6fb710a679e496530" [label="mkdir{path=/app}" shape="note"];
  "sha256:10d9cdfc29e188d9914fca7be6e23f3d912e381d54fa3c3c8819a67b214602d3" [label="mkdir{path=/app}" shape="note"];
  "sha256:57b9caf73f38b48f163788a8fe7c1c20fc39e9f09f8531002c1e56ba62599168" [label="local://context" shape="ellipse"];
  "sha256:568586e0af81341da40c19ae973c2d213009e14d20a1f06a60fffee7a4c3a9d9" [label="docker-image://docker.io/microsoft/dotnet:3.0-sdk-stretch@sha256:4995834e3c418b7a125cbab14abaaf3906d996cd3ec5b23f9f320a0d8b4717e4" shape="ellipse"];
  "sha256:e35920401edfc3f8c479a4cc52b30224bf808685fb12f5186f66cf5e41f66af8" [label="mkdir{path=/src}" shape="note"];
  "sha256:a33e100fe869b4f26766c9f45787ff7bfabc11fd90d1a19ba85daec9f6fe0c4c" [label="copy{src=/src/Bet.AspNetCore.Sample/Bet.AspNetCore.Sample.csproj, dest=/src/src/Bet.AspNetCore.Sample/}" shape="note"];
  "sha256:c71b1136ba4210a0ee1a9300f3ea9067765d89606ddeba36efd772f3c86af76a" [label="/bin/sh -c dotnet restore \"src/Bet.AspNetCore.Sample/Bet.AspNetCore.Sample.csproj\"" shape="box"];
  "sha256:ddc1d8955eac56da606cf11b8f96fdc8c801c8f7b3d03c60f7538ba34d7361ab" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:1398562f6dfeaa996ebd17f6094c5c5b11aa983815005b37c655efeca8986ff3" [label="mkdir{path=/src/src/Bet.AspNetCore.Sample}" shape="note"];
  "sha256:33e47f1c49736aea507bf002b6bee42958106d7f125e20b21ebe4ffc6362ffab" [label="/bin/sh -c dotnet build \"Bet.AspNetCore.Sample.csproj\" -c Release -o /app" shape="box"];
  "sha256:f620f999c20209b62d40da914db0ea477dc14ce1cc42505e9dd8bafeab932228" [label="/bin/sh -c dotnet publish \"Bet.AspNetCore.Sample.csproj\" -c Release -o /app" shape="box"];
  "sha256:c522d3b9f5d34fc8f286c5bb6a71f6bb5cf37a5ee80aefb8d1e40ff17b527c71" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:a728f267f1e7c210987eb6abf1ff156291a96c99b1bda0fc3fe3ff15bb7abc23" [label="sha256:a728f267f1e7c210987eb6abf1ff156291a96c99b1bda0fc3fe3ff15bb7abc23" shape="plaintext"];
  "sha256:3982dd81e64e285bb067cfc4d89f2e91a0de01048831b6799694d7b0a13000a3" -> "sha256:d7536c33203062054ed97767ac8632abd1486dda334ff5e6fb710a679e496530" [label=""];
  "sha256:d7536c33203062054ed97767ac8632abd1486dda334ff5e6fb710a679e496530" -> "sha256:10d9cdfc29e188d9914fca7be6e23f3d912e381d54fa3c3c8819a67b214602d3" [label=""];
  "sha256:568586e0af81341da40c19ae973c2d213009e14d20a1f06a60fffee7a4c3a9d9" -> "sha256:e35920401edfc3f8c479a4cc52b30224bf808685fb12f5186f66cf5e41f66af8" [label=""];
  "sha256:e35920401edfc3f8c479a4cc52b30224bf808685fb12f5186f66cf5e41f66af8" -> "sha256:a33e100fe869b4f26766c9f45787ff7bfabc11fd90d1a19ba85daec9f6fe0c4c" [label=""];
  "sha256:57b9caf73f38b48f163788a8fe7c1c20fc39e9f09f8531002c1e56ba62599168" -> "sha256:a33e100fe869b4f26766c9f45787ff7bfabc11fd90d1a19ba85daec9f6fe0c4c" [label=""];
  "sha256:a33e100fe869b4f26766c9f45787ff7bfabc11fd90d1a19ba85daec9f6fe0c4c" -> "sha256:c71b1136ba4210a0ee1a9300f3ea9067765d89606ddeba36efd772f3c86af76a" [label=""];
  "sha256:c71b1136ba4210a0ee1a9300f3ea9067765d89606ddeba36efd772f3c86af76a" -> "sha256:ddc1d8955eac56da606cf11b8f96fdc8c801c8f7b3d03c60f7538ba34d7361ab" [label=""];
  "sha256:57b9caf73f38b48f163788a8fe7c1c20fc39e9f09f8531002c1e56ba62599168" -> "sha256:ddc1d8955eac56da606cf11b8f96fdc8c801c8f7b3d03c60f7538ba34d7361ab" [label=""];
  "sha256:ddc1d8955eac56da606cf11b8f96fdc8c801c8f7b3d03c60f7538ba34d7361ab" -> "sha256:1398562f6dfeaa996ebd17f6094c5c5b11aa983815005b37c655efeca8986ff3" [label=""];
  "sha256:1398562f6dfeaa996ebd17f6094c5c5b11aa983815005b37c655efeca8986ff3" -> "sha256:33e47f1c49736aea507bf002b6bee42958106d7f125e20b21ebe4ffc6362ffab" [label=""];
  "sha256:33e47f1c49736aea507bf002b6bee42958106d7f125e20b21ebe4ffc6362ffab" -> "sha256:f620f999c20209b62d40da914db0ea477dc14ce1cc42505e9dd8bafeab932228" [label=""];
  "sha256:10d9cdfc29e188d9914fca7be6e23f3d912e381d54fa3c3c8819a67b214602d3" -> "sha256:c522d3b9f5d34fc8f286c5bb6a71f6bb5cf37a5ee80aefb8d1e40ff17b527c71" [label=""];
  "sha256:f620f999c20209b62d40da914db0ea477dc14ce1cc42505e9dd8bafeab932228" -> "sha256:c522d3b9f5d34fc8f286c5bb6a71f6bb5cf37a5ee80aefb8d1e40ff17b527c71" [label=""];
  "sha256:c522d3b9f5d34fc8f286c5bb6a71f6bb5cf37a5ee80aefb8d1e40ff17b527c71" -> "sha256:a728f267f1e7c210987eb6abf1ff156291a96c99b1bda0fc3fe3ff15bb7abc23" [label=""];
}

