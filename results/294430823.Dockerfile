[app/sources/294430823.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:408cb1a47c9b5c0a437dd5fdbc91abe34255a95d3023ff3333024920b42ba5ba" [label="/bin/sh -c apk add --no-cache openssl &&     apk add --no-cache ncurses-libs" shape="box"];
  "sha256:4ec7988910a57c6a49d041aa1a97c8ef0e1b54eed3126b4df5de7030dc5bd222" [label="docker-image://docker.io/library/erlang:alpine" shape="ellipse"];
  "sha256:7c393953a9e55af894489217c26c950cbca327c0d2f73afa02ea6dfd29d801c7" [label="/bin/sh -c mkdir -p /buildroot/rebar3/bin" shape="box"];
  "sha256:00914f36be594d57b8bd2ca3ed934342ea386bb8dd65202e2204f9eab737526f" [label="https://s3.amazonaws.com/rebar3/rebar3" shape="ellipse"];
  "sha256:2c193199792224a994fd32736b28cf85b01dedf7bd1839f1f200925cf781b9f8" [label="copy{src=/rebar3, dest=/buildroot/rebar3/bin/rebar3}" shape="note"];
  "sha256:fac2ff360b83acef984b7bf0923df756367c340ad07a14dfe68cc4285a105532" [label="/bin/sh -c chmod a+x /buildroot/rebar3/bin/rebar3" shape="box"];
  "sha256:3de4eed8f34a523884e68407da0973bdd54cf34c0139d20f1fa8054eb10c7509" [label="mkdir{path=/buildroot}" shape="note"];
  "sha256:59fe8667a80d65a6fa2a3437c7fc0c16e84ecd869fa410240a797c6ff83a3d2e" [label="local://context" shape="ellipse"];
  "sha256:93de4ebf06020d94a0c7158fb0945f4e26c9a6c848503318f43a52cd00ae48c8" [label="copy{src=/backend, dest=/buildroot/backend}" shape="note"];
  "sha256:41bfe582db390bec054b05aa55281a10a05e88a984c0fd9628f6d557075c2f47" [label="mkdir{path=/buildroot/backend}" shape="note"];
  "sha256:7022e50c404a9aaa76ee7feb6692980d45322794d11670b79f6c1f7fe68174f3" [label="/bin/sh -c rebar3 as prod release" shape="box"];
  "sha256:80ec3131a86b1a4912460513c1baf4e37aff36b548c75f3a412de69a299e411a" [label="copy{src=/buildroot/backend/_build/prod/rel/backend, dest=/backend}" shape="note"];
  "sha256:3c8144bcac9f303d2029ac1d31f023cccbdb4298d31115f567f0324b74152324" [label="sha256:3c8144bcac9f303d2029ac1d31f023cccbdb4298d31115f567f0324b74152324" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:408cb1a47c9b5c0a437dd5fdbc91abe34255a95d3023ff3333024920b42ba5ba" [label=""];
  "sha256:4ec7988910a57c6a49d041aa1a97c8ef0e1b54eed3126b4df5de7030dc5bd222" -> "sha256:7c393953a9e55af894489217c26c950cbca327c0d2f73afa02ea6dfd29d801c7" [label=""];
  "sha256:7c393953a9e55af894489217c26c950cbca327c0d2f73afa02ea6dfd29d801c7" -> "sha256:2c193199792224a994fd32736b28cf85b01dedf7bd1839f1f200925cf781b9f8" [label=""];
  "sha256:00914f36be594d57b8bd2ca3ed934342ea386bb8dd65202e2204f9eab737526f" -> "sha256:2c193199792224a994fd32736b28cf85b01dedf7bd1839f1f200925cf781b9f8" [label=""];
  "sha256:2c193199792224a994fd32736b28cf85b01dedf7bd1839f1f200925cf781b9f8" -> "sha256:fac2ff360b83acef984b7bf0923df756367c340ad07a14dfe68cc4285a105532" [label=""];
  "sha256:fac2ff360b83acef984b7bf0923df756367c340ad07a14dfe68cc4285a105532" -> "sha256:3de4eed8f34a523884e68407da0973bdd54cf34c0139d20f1fa8054eb10c7509" [label=""];
  "sha256:3de4eed8f34a523884e68407da0973bdd54cf34c0139d20f1fa8054eb10c7509" -> "sha256:93de4ebf06020d94a0c7158fb0945f4e26c9a6c848503318f43a52cd00ae48c8" [label=""];
  "sha256:59fe8667a80d65a6fa2a3437c7fc0c16e84ecd869fa410240a797c6ff83a3d2e" -> "sha256:93de4ebf06020d94a0c7158fb0945f4e26c9a6c848503318f43a52cd00ae48c8" [label=""];
  "sha256:93de4ebf06020d94a0c7158fb0945f4e26c9a6c848503318f43a52cd00ae48c8" -> "sha256:41bfe582db390bec054b05aa55281a10a05e88a984c0fd9628f6d557075c2f47" [label=""];
  "sha256:41bfe582db390bec054b05aa55281a10a05e88a984c0fd9628f6d557075c2f47" -> "sha256:7022e50c404a9aaa76ee7feb6692980d45322794d11670b79f6c1f7fe68174f3" [label=""];
  "sha256:408cb1a47c9b5c0a437dd5fdbc91abe34255a95d3023ff3333024920b42ba5ba" -> "sha256:80ec3131a86b1a4912460513c1baf4e37aff36b548c75f3a412de69a299e411a" [label=""];
  "sha256:7022e50c404a9aaa76ee7feb6692980d45322794d11670b79f6c1f7fe68174f3" -> "sha256:80ec3131a86b1a4912460513c1baf4e37aff36b548c75f3a412de69a299e411a" [label=""];
  "sha256:80ec3131a86b1a4912460513c1baf4e37aff36b548c75f3a412de69a299e411a" -> "sha256:3c8144bcac9f303d2029ac1d31f023cccbdb4298d31115f567f0324b74152324" [label=""];
}

