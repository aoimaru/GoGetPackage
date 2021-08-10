[app/sources/268886262.Dockerfile]
digraph {
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk" shape="ellipse"];
  "sha256:c22a011455b3129604a5858da1e44531da1c7223490eb9588b8165a4f57f2f2e" [label="/bin/sh -c apt-get update && apt-get install -y     libleveldb-dev     sqlite3     libsqlite3-dev     libunwind8-dev     wget     expect     screen     zip" shape="box"];
  "sha256:5a3b53c967e17179de86973bac810e22cde4bc957f7da680c85ca92b103d93cb" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2f3080bcb4b0fb5ff205c48b4eb1065cb949a6c98b4c7380c6b90d4a7bee9156" [label="mkdir{path=/opt}" shape="note"];
  "sha256:3da45a01ec3be22a47f986797b837910dd58355bdce8abf6384aa0b6e5ce9f89" [label="local://context" shape="ellipse"];
  "sha256:0ef7fb173e0b8f25ae17abeaf76cae5c51a302535abd36a305a01faee9b29472" [label="copy{src=/neo-cli, dest=/opt/neo-cli-github}" shape="note"];
  "sha256:6e1ee2d21499c765251f6f80694d5bbf45aefbc53304c59b8c9a62ab2346931e" [label="copy{src=/ci, dest=/opt/ci}" shape="note"];
  "sha256:272e19ec25f66299c792f0040988e2abbaca9820cd056b2843b8d5d499a0901c" [label="mkdir{path=/opt/neo-cli-github}" shape="note"];
  "sha256:e260dbb6c0f5358f9a3fbbf66aaeec6a8cc5f85a46007bea2fa9174785e58286" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:5add489ea509a09df3a34ce020053380d9abb222756f2fc2914cd35b69e9c2cb" [label="/bin/sh -c dotnet publish -c Release" shape="box"];
  "sha256:9c657d1bea1dcf8636ec64735aa19dfefa5df30353b8e2de7e2dd4451caa0f53" [label="/bin/sh -c mv bin/Release/netcoreapp2.1/publish /opt/neo-cli" shape="box"];
  "sha256:99381516a79a84b907d6a0ea55866b59f90cba9a537c52ae672b58715bb24ede" [label="mkdir{path=/opt}" shape="note"];
  "sha256:922648211e24fa375043008a63a93cce7673f5095f4144b063e520c8ab2bdd38" [label="sha256:922648211e24fa375043008a63a93cce7673f5095f4144b063e520c8ab2bdd38" shape="plaintext"];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" -> "sha256:c22a011455b3129604a5858da1e44531da1c7223490eb9588b8165a4f57f2f2e" [label=""];
  "sha256:c22a011455b3129604a5858da1e44531da1c7223490eb9588b8165a4f57f2f2e" -> "sha256:5a3b53c967e17179de86973bac810e22cde4bc957f7da680c85ca92b103d93cb" [label=""];
  "sha256:5a3b53c967e17179de86973bac810e22cde4bc957f7da680c85ca92b103d93cb" -> "sha256:2f3080bcb4b0fb5ff205c48b4eb1065cb949a6c98b4c7380c6b90d4a7bee9156" [label=""];
  "sha256:2f3080bcb4b0fb5ff205c48b4eb1065cb949a6c98b4c7380c6b90d4a7bee9156" -> "sha256:0ef7fb173e0b8f25ae17abeaf76cae5c51a302535abd36a305a01faee9b29472" [label=""];
  "sha256:3da45a01ec3be22a47f986797b837910dd58355bdce8abf6384aa0b6e5ce9f89" -> "sha256:0ef7fb173e0b8f25ae17abeaf76cae5c51a302535abd36a305a01faee9b29472" [label=""];
  "sha256:0ef7fb173e0b8f25ae17abeaf76cae5c51a302535abd36a305a01faee9b29472" -> "sha256:6e1ee2d21499c765251f6f80694d5bbf45aefbc53304c59b8c9a62ab2346931e" [label=""];
  "sha256:3da45a01ec3be22a47f986797b837910dd58355bdce8abf6384aa0b6e5ce9f89" -> "sha256:6e1ee2d21499c765251f6f80694d5bbf45aefbc53304c59b8c9a62ab2346931e" [label=""];
  "sha256:6e1ee2d21499c765251f6f80694d5bbf45aefbc53304c59b8c9a62ab2346931e" -> "sha256:272e19ec25f66299c792f0040988e2abbaca9820cd056b2843b8d5d499a0901c" [label=""];
  "sha256:272e19ec25f66299c792f0040988e2abbaca9820cd056b2843b8d5d499a0901c" -> "sha256:e260dbb6c0f5358f9a3fbbf66aaeec6a8cc5f85a46007bea2fa9174785e58286" [label=""];
  "sha256:e260dbb6c0f5358f9a3fbbf66aaeec6a8cc5f85a46007bea2fa9174785e58286" -> "sha256:5add489ea509a09df3a34ce020053380d9abb222756f2fc2914cd35b69e9c2cb" [label=""];
  "sha256:5add489ea509a09df3a34ce020053380d9abb222756f2fc2914cd35b69e9c2cb" -> "sha256:9c657d1bea1dcf8636ec64735aa19dfefa5df30353b8e2de7e2dd4451caa0f53" [label=""];
  "sha256:9c657d1bea1dcf8636ec64735aa19dfefa5df30353b8e2de7e2dd4451caa0f53" -> "sha256:99381516a79a84b907d6a0ea55866b59f90cba9a537c52ae672b58715bb24ede" [label=""];
  "sha256:99381516a79a84b907d6a0ea55866b59f90cba9a537c52ae672b58715bb24ede" -> "sha256:922648211e24fa375043008a63a93cce7673f5095f4144b063e520c8ab2bdd38" [label=""];
}

