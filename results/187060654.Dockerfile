[app/sources/187060654.Dockerfile]
digraph {
  "sha256:696941a8416cb6c3896e9728d5180eafd87e7855855479f072eb4a7718859a09" [label="docker-image://mcr.microsoft.com/dotnet/core/runtime:2.2-stretch-slim@sha256:8f81aab10b63e73c0797fe728f3d0e9134387c02aa4c1c418eb30639f07964e5" shape="ellipse"];
  "sha256:85d00d9acdcaaddeaf78c511679012b9c044d90fda3c9e1bc9028b38f55eb3de" [label="mkdir{path=/app}" shape="note"];
  "sha256:bc5d7ee92cf9e700ca23b5740ec4b41137eaf801d7f275fb52c51effcd7b9518" [label="mkdir{path=/app}" shape="note"];
  "sha256:449268eb8119044e19150895b54f425d1773ac2e0813a522a22768fff7e90652" [label="local://context" shape="ellipse"];
  "sha256:50dc65764c967a2dd575245bf5276c976a63b3834446bad31f4f6f4e527987b1" [label="docker-image://mcr.microsoft.com/dotnet/core/sdk:2.2-stretch@sha256:db9b38d066fdbdd5ac5ce862076c27e4ae17f2b57cbacd03bdc3b24e06696ae8" shape="ellipse"];
  "sha256:2cadb413f6d59dd6c131ac662405ad347fd54c914595fa6fb7761298be00e716" [label="mkdir{path=/src}" shape="note"];
  "sha256:190d584f9d0d4dd0a7009bbcb988ee6c4660e9480b23301628814b9175562d41" [label="copy{src=/Apps/EventStore.App/EventStore.App.csproj, dest=/src/Apps/EventStore.App/}" shape="note"];
  "sha256:03d2c5499e5a580036e2be8dea3f66e9ccde020171ea94a9fc57185e9c5631a3" [label="copy{src=/Infrastructures/EventStore.Middleware/EventStore.Middleware.csproj, dest=/src/Infrastructures/EventStore.Middleware/}" shape="note"];
  "sha256:1d6ed356f5e595c264e919f1f00e3bec6da1187105e031a50de7e033445982f7" [label="copy{src=/Infrastructures/Infrastructure/Infrastructure.csproj, dest=/src/Infrastructures/Infrastructure/}" shape="note"];
  "sha256:59e0b04c15abf53c76f707bdf591de17aaae09e5bc91e606f93a2fb3a9ab93a2" [label="/bin/sh -c dotnet restore \"Apps/EventStore.App/EventStore.App.csproj\"" shape="box"];
  "sha256:c2a366bc5bf348489e487c2cf3975061982f3ca8c6e400ce36e7202cc0469ac9" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:98beeaf45be62d50af7c82d0c22d0c4fb0353d43d802a9ed12938889820b0225" [label="mkdir{path=/src/Apps/EventStore.App}" shape="note"];
  "sha256:a3a4bc0c7db087848258e82c04c014a279b7a22c52d0bf65b586881bb70b2e36" [label="/bin/sh -c dotnet build \"EventStore.App.csproj\" -c Release -o /app" shape="box"];
  "sha256:d7f47c1e50a51c8c0d17acd105eeb7974456a20aa4afdb2cd46b33a6a0a8a718" [label="/bin/sh -c dotnet publish \"EventStore.App.csproj\" -c Release -o /app" shape="box"];
  "sha256:92bc7837323ad32689bfdf9912aeedebed7537239189187908f7bdd7881b88c6" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:299f0de20f1d75c8dc2a01b2a1d9a040722485f55c59088e35dd8eabfe001b2a" [label="sha256:299f0de20f1d75c8dc2a01b2a1d9a040722485f55c59088e35dd8eabfe001b2a" shape="plaintext"];
  "sha256:696941a8416cb6c3896e9728d5180eafd87e7855855479f072eb4a7718859a09" -> "sha256:85d00d9acdcaaddeaf78c511679012b9c044d90fda3c9e1bc9028b38f55eb3de" [label=""];
  "sha256:85d00d9acdcaaddeaf78c511679012b9c044d90fda3c9e1bc9028b38f55eb3de" -> "sha256:bc5d7ee92cf9e700ca23b5740ec4b41137eaf801d7f275fb52c51effcd7b9518" [label=""];
  "sha256:50dc65764c967a2dd575245bf5276c976a63b3834446bad31f4f6f4e527987b1" -> "sha256:2cadb413f6d59dd6c131ac662405ad347fd54c914595fa6fb7761298be00e716" [label=""];
  "sha256:2cadb413f6d59dd6c131ac662405ad347fd54c914595fa6fb7761298be00e716" -> "sha256:190d584f9d0d4dd0a7009bbcb988ee6c4660e9480b23301628814b9175562d41" [label=""];
  "sha256:449268eb8119044e19150895b54f425d1773ac2e0813a522a22768fff7e90652" -> "sha256:190d584f9d0d4dd0a7009bbcb988ee6c4660e9480b23301628814b9175562d41" [label=""];
  "sha256:190d584f9d0d4dd0a7009bbcb988ee6c4660e9480b23301628814b9175562d41" -> "sha256:03d2c5499e5a580036e2be8dea3f66e9ccde020171ea94a9fc57185e9c5631a3" [label=""];
  "sha256:449268eb8119044e19150895b54f425d1773ac2e0813a522a22768fff7e90652" -> "sha256:03d2c5499e5a580036e2be8dea3f66e9ccde020171ea94a9fc57185e9c5631a3" [label=""];
  "sha256:03d2c5499e5a580036e2be8dea3f66e9ccde020171ea94a9fc57185e9c5631a3" -> "sha256:1d6ed356f5e595c264e919f1f00e3bec6da1187105e031a50de7e033445982f7" [label=""];
  "sha256:449268eb8119044e19150895b54f425d1773ac2e0813a522a22768fff7e90652" -> "sha256:1d6ed356f5e595c264e919f1f00e3bec6da1187105e031a50de7e033445982f7" [label=""];
  "sha256:1d6ed356f5e595c264e919f1f00e3bec6da1187105e031a50de7e033445982f7" -> "sha256:59e0b04c15abf53c76f707bdf591de17aaae09e5bc91e606f93a2fb3a9ab93a2" [label=""];
  "sha256:59e0b04c15abf53c76f707bdf591de17aaae09e5bc91e606f93a2fb3a9ab93a2" -> "sha256:c2a366bc5bf348489e487c2cf3975061982f3ca8c6e400ce36e7202cc0469ac9" [label=""];
  "sha256:449268eb8119044e19150895b54f425d1773ac2e0813a522a22768fff7e90652" -> "sha256:c2a366bc5bf348489e487c2cf3975061982f3ca8c6e400ce36e7202cc0469ac9" [label=""];
  "sha256:c2a366bc5bf348489e487c2cf3975061982f3ca8c6e400ce36e7202cc0469ac9" -> "sha256:98beeaf45be62d50af7c82d0c22d0c4fb0353d43d802a9ed12938889820b0225" [label=""];
  "sha256:98beeaf45be62d50af7c82d0c22d0c4fb0353d43d802a9ed12938889820b0225" -> "sha256:a3a4bc0c7db087848258e82c04c014a279b7a22c52d0bf65b586881bb70b2e36" [label=""];
  "sha256:a3a4bc0c7db087848258e82c04c014a279b7a22c52d0bf65b586881bb70b2e36" -> "sha256:d7f47c1e50a51c8c0d17acd105eeb7974456a20aa4afdb2cd46b33a6a0a8a718" [label=""];
  "sha256:bc5d7ee92cf9e700ca23b5740ec4b41137eaf801d7f275fb52c51effcd7b9518" -> "sha256:92bc7837323ad32689bfdf9912aeedebed7537239189187908f7bdd7881b88c6" [label=""];
  "sha256:d7f47c1e50a51c8c0d17acd105eeb7974456a20aa4afdb2cd46b33a6a0a8a718" -> "sha256:92bc7837323ad32689bfdf9912aeedebed7537239189187908f7bdd7881b88c6" [label=""];
  "sha256:92bc7837323ad32689bfdf9912aeedebed7537239189187908f7bdd7881b88c6" -> "sha256:299f0de20f1d75c8dc2a01b2a1d9a040722485f55c59088e35dd8eabfe001b2a" [label=""];
}

