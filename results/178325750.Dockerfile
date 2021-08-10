[app/sources/178325750.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:b244fbaa0dd98bed168333461cf34ac1f20bb35b4f7277a87c4bb55f49591616" [label="local://context" shape="ellipse"];
  "sha256:e0e399d7b1e7284e5771acb9322bdc0e6a143c8d9ae5b95b59d50669154ccef5" [label="copy{src=/user-srv, dest=/user-srv}" shape="note"];
  "sha256:fee2a3c625211c1fb98ed637070f7ed1a6332411a47341d1fdd02017e66d4f42" [label="sha256:fee2a3c625211c1fb98ed637070f7ed1a6332411a47341d1fdd02017e66d4f42" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:e0e399d7b1e7284e5771acb9322bdc0e6a143c8d9ae5b95b59d50669154ccef5" [label=""];
  "sha256:b244fbaa0dd98bed168333461cf34ac1f20bb35b4f7277a87c4bb55f49591616" -> "sha256:e0e399d7b1e7284e5771acb9322bdc0e6a143c8d9ae5b95b59d50669154ccef5" [label=""];
  "sha256:e0e399d7b1e7284e5771acb9322bdc0e6a143c8d9ae5b95b59d50669154ccef5" -> "sha256:fee2a3c625211c1fb98ed637070f7ed1a6332411a47341d1fdd02017e66d4f42" [label=""];
}

