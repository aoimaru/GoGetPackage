[app/sources/252768691.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:9599aed4dbf73af92813d9d9208342fb8d5d081ca781eab8f3211e47ea972120" [label="local://context" shape="ellipse"];
  "sha256:a9f8bda9e8b9f03d92e0236143a1ddab65682d8601fe62d26959c1112e2bdb49" [label="copy{src=/, dest=/esi-swagger-specs/}" shape="note"];
  "sha256:97b16da37235ed26f6dda2228f8926f4dfc2290265c58e96c2dfd385709e24bb" [label="sha256:97b16da37235ed26f6dda2228f8926f4dfc2290265c58e96c2dfd385709e24bb" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:a9f8bda9e8b9f03d92e0236143a1ddab65682d8601fe62d26959c1112e2bdb49" [label=""];
  "sha256:9599aed4dbf73af92813d9d9208342fb8d5d081ca781eab8f3211e47ea972120" -> "sha256:a9f8bda9e8b9f03d92e0236143a1ddab65682d8601fe62d26959c1112e2bdb49" [label=""];
  "sha256:a9f8bda9e8b9f03d92e0236143a1ddab65682d8601fe62d26959c1112e2bdb49" -> "sha256:97b16da37235ed26f6dda2228f8926f4dfc2290265c58e96c2dfd385709e24bb" [label=""];
}

