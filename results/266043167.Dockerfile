[app/sources/266043167.Dockerfile]
digraph {
  "sha256:a84d7f0307d15fa15df91a80ecbe319cefacee357631460038ad15f575552abb" [label="docker-image://docker.io/library/elixir:1.4.5" shape="ellipse"];
  "sha256:88797e58c8b22f5beed85c3fd41826ebd4c6da6495df9dae9da70b092048b4a0" [label="/bin/sh -c mix local.hex --force" shape="box"];
  "sha256:3efecb07059b9e0507a3f589bc9a7e8b9d274cd5b3538b95ad89012a18f04cca" [label="/bin/sh -c mix local.rebar" shape="box"];
  "sha256:e17d35c74d8f66eb8441af15df7a947585c789564036eb8c3f6b86d6770e6506" [label="sha256:e17d35c74d8f66eb8441af15df7a947585c789564036eb8c3f6b86d6770e6506" shape="plaintext"];
  "sha256:a84d7f0307d15fa15df91a80ecbe319cefacee357631460038ad15f575552abb" -> "sha256:88797e58c8b22f5beed85c3fd41826ebd4c6da6495df9dae9da70b092048b4a0" [label=""];
  "sha256:88797e58c8b22f5beed85c3fd41826ebd4c6da6495df9dae9da70b092048b4a0" -> "sha256:3efecb07059b9e0507a3f589bc9a7e8b9d274cd5b3538b95ad89012a18f04cca" [label=""];
  "sha256:3efecb07059b9e0507a3f589bc9a7e8b9d274cd5b3538b95ad89012a18f04cca" -> "sha256:e17d35c74d8f66eb8441af15df7a947585c789564036eb8c3f6b86d6770e6506" [label=""];
}

