[app/sources/465833543.Dockerfile]
digraph {
  "sha256:dd9209daeb88f0d784849446527b53f751241c549fff4624421910efa9666f0e" [label="docker-image://docker.io/microsoft/aspnetcore:2.0.1" shape="ellipse"];
  "sha256:8ba03f315f3515bc69c808d8cf076299f16bc02ed69c69258d627f12ca2b5c23" [label="mkdir{path=/app}" shape="note"];
  "sha256:a63315c095c5ee8861d3df207869f46489d5ac750213e232f168945bbc5cb10c" [label="local://context" shape="ellipse"];
  "sha256:4e821f8e17f880ebfc8cdae6e4d048b4d5bad1dcbb6e656148589b957434227d" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:ceef107e5bf7d9b88183adb449940d487aa57e58c6a232b45371b7869762edec" [label="sha256:ceef107e5bf7d9b88183adb449940d487aa57e58c6a232b45371b7869762edec" shape="plaintext"];
  "sha256:dd9209daeb88f0d784849446527b53f751241c549fff4624421910efa9666f0e" -> "sha256:8ba03f315f3515bc69c808d8cf076299f16bc02ed69c69258d627f12ca2b5c23" [label=""];
  "sha256:8ba03f315f3515bc69c808d8cf076299f16bc02ed69c69258d627f12ca2b5c23" -> "sha256:4e821f8e17f880ebfc8cdae6e4d048b4d5bad1dcbb6e656148589b957434227d" [label=""];
  "sha256:a63315c095c5ee8861d3df207869f46489d5ac750213e232f168945bbc5cb10c" -> "sha256:4e821f8e17f880ebfc8cdae6e4d048b4d5bad1dcbb6e656148589b957434227d" [label=""];
  "sha256:4e821f8e17f880ebfc8cdae6e4d048b4d5bad1dcbb6e656148589b957434227d" -> "sha256:ceef107e5bf7d9b88183adb449940d487aa57e58c6a232b45371b7869762edec" [label=""];
}

