[app/sources/435910841.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:bb53d194c3fdc6414142e80b3ed1b7785fbbf95a1f4ba2dd91b8c295fa19143f" [label="bash -c for minute in {0..15} ; do echo -n \" $minute \" ; sleep 60 ; done" shape="box"];
  "sha256:af2b4877d84da2afba67bcae6485ab8ba3cfae9fbe9198c87435b78a44de9fb1" [label="sha256:af2b4877d84da2afba67bcae6485ab8ba3cfae9fbe9198c87435b78a44de9fb1" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:bb53d194c3fdc6414142e80b3ed1b7785fbbf95a1f4ba2dd91b8c295fa19143f" [label=""];
  "sha256:bb53d194c3fdc6414142e80b3ed1b7785fbbf95a1f4ba2dd91b8c295fa19143f" -> "sha256:af2b4877d84da2afba67bcae6485ab8ba3cfae9fbe9198c87435b78a44de9fb1" [label=""];
}

