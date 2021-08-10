[app/sources/308823971.Dockerfile]
digraph {
  "sha256:ecce79e3ecf05254931091285dbd503a3f6f0138a7e11d33163ed2700875cd8d" [label="docker-image://mcr.microsoft.com/dotnet/core/aspnet:2.2-stretch-slim@sha256:ae9a94a778b4c4656f036e1dd858d6c972f6ad4423bdf9c5022e16f28fee5cf9" shape="ellipse"];
  "sha256:3535d893442a94ac30c7d90470ffff1085d01fc2ac703ad8581670b7105e5fe2" [label="mkdir{path=/app}" shape="note"];
  "sha256:de42654d176b37414672a355dcd7b1bc58cd0f6d6cc46fcf48728963b47feaed" [label="mkdir{path=/app}" shape="note"];
  "sha256:50dc65764c967a2dd575245bf5276c976a63b3834446bad31f4f6f4e527987b1" [label="docker-image://mcr.microsoft.com/dotnet/core/sdk:2.2-stretch@sha256:db9b38d066fdbdd5ac5ce862076c27e4ae17f2b57cbacd03bdc3b24e06696ae8" shape="ellipse"];
  "sha256:2cadb413f6d59dd6c131ac662405ad347fd54c914595fa6fb7761298be00e716" [label="mkdir{path=/src}" shape="note"];
  "sha256:366d8e6ecfa47d58a2fd4bb46b8aded2346713041cd41bc54e5650a7c7abf24f" [label="local://context" shape="ellipse"];
  "sha256:5e2099d7a58aa59677fd16cfa758cf9f4df0aa38b74f09dcc3330091f0726f33" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:688449dec885ef7e6f707292b0db53867df4f8de0df49b066bba8a58923245d5" [label="mkdir{path=/src/ExternalSystem/PaymentService}" shape="note"];
  "sha256:6c74c64638e40f9c0cddcb76fe134757c4190c09395cde9824d887431c2a519e" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:03dad5818f2e8b201132671719aaf37f7b27073280beca6fb9ecf13eee62fe2d" [label="/bin/sh -c dotnet build --no-restore -c Release -o /app" shape="box"];
  "sha256:cdc34aabffddeea611bf2f694d07e3ba0e71c30007d69170c3c207ecde349ac5" [label="/bin/sh -c dotnet publish -c Release -o /app" shape="box"];
  "sha256:e8850769abc7312f0c3a262ee9d120049e5b1c400ca9c0c94807baca79c9101e" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:f5539f1b523f77ff2b8dab87b32438bf97f91bb0cdc1131d824e966c21f7c7a5" [label="sha256:f5539f1b523f77ff2b8dab87b32438bf97f91bb0cdc1131d824e966c21f7c7a5" shape="plaintext"];
  "sha256:ecce79e3ecf05254931091285dbd503a3f6f0138a7e11d33163ed2700875cd8d" -> "sha256:3535d893442a94ac30c7d90470ffff1085d01fc2ac703ad8581670b7105e5fe2" [label=""];
  "sha256:3535d893442a94ac30c7d90470ffff1085d01fc2ac703ad8581670b7105e5fe2" -> "sha256:de42654d176b37414672a355dcd7b1bc58cd0f6d6cc46fcf48728963b47feaed" [label=""];
  "sha256:50dc65764c967a2dd575245bf5276c976a63b3834446bad31f4f6f4e527987b1" -> "sha256:2cadb413f6d59dd6c131ac662405ad347fd54c914595fa6fb7761298be00e716" [label=""];
  "sha256:2cadb413f6d59dd6c131ac662405ad347fd54c914595fa6fb7761298be00e716" -> "sha256:5e2099d7a58aa59677fd16cfa758cf9f4df0aa38b74f09dcc3330091f0726f33" [label=""];
  "sha256:366d8e6ecfa47d58a2fd4bb46b8aded2346713041cd41bc54e5650a7c7abf24f" -> "sha256:5e2099d7a58aa59677fd16cfa758cf9f4df0aa38b74f09dcc3330091f0726f33" [label=""];
  "sha256:5e2099d7a58aa59677fd16cfa758cf9f4df0aa38b74f09dcc3330091f0726f33" -> "sha256:688449dec885ef7e6f707292b0db53867df4f8de0df49b066bba8a58923245d5" [label=""];
  "sha256:688449dec885ef7e6f707292b0db53867df4f8de0df49b066bba8a58923245d5" -> "sha256:6c74c64638e40f9c0cddcb76fe134757c4190c09395cde9824d887431c2a519e" [label=""];
  "sha256:6c74c64638e40f9c0cddcb76fe134757c4190c09395cde9824d887431c2a519e" -> "sha256:03dad5818f2e8b201132671719aaf37f7b27073280beca6fb9ecf13eee62fe2d" [label=""];
  "sha256:03dad5818f2e8b201132671719aaf37f7b27073280beca6fb9ecf13eee62fe2d" -> "sha256:cdc34aabffddeea611bf2f694d07e3ba0e71c30007d69170c3c207ecde349ac5" [label=""];
  "sha256:de42654d176b37414672a355dcd7b1bc58cd0f6d6cc46fcf48728963b47feaed" -> "sha256:e8850769abc7312f0c3a262ee9d120049e5b1c400ca9c0c94807baca79c9101e" [label=""];
  "sha256:cdc34aabffddeea611bf2f694d07e3ba0e71c30007d69170c3c207ecde349ac5" -> "sha256:e8850769abc7312f0c3a262ee9d120049e5b1c400ca9c0c94807baca79c9101e" [label=""];
  "sha256:e8850769abc7312f0c3a262ee9d120049e5b1c400ca9c0c94807baca79c9101e" -> "sha256:f5539f1b523f77ff2b8dab87b32438bf97f91bb0cdc1131d824e966c21f7c7a5" [label=""];
}

