[app/sources/280555689.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:86d168ee028d25f530189ce801f2777b99351dfe20973012a15c514f897ed794" [label="local://context" shape="ellipse"];
  "sha256:61de518034af326185fbf53264365d67cf5eb9c8c76e5b9b032f1bf9c4e0d024" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:97fb8afbec5eaf6eda523130d98d43a0aa1cb73f77a3aeb246d4952e42a58ef2" [label="sha256:97fb8afbec5eaf6eda523130d98d43a0aa1cb73f77a3aeb246d4952e42a58ef2" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:61de518034af326185fbf53264365d67cf5eb9c8c76e5b9b032f1bf9c4e0d024" [label=""];
  "sha256:86d168ee028d25f530189ce801f2777b99351dfe20973012a15c514f897ed794" -> "sha256:61de518034af326185fbf53264365d67cf5eb9c8c76e5b9b032f1bf9c4e0d024" [label=""];
  "sha256:61de518034af326185fbf53264365d67cf5eb9c8c76e5b9b032f1bf9c4e0d024" -> "sha256:97fb8afbec5eaf6eda523130d98d43a0aa1cb73f77a3aeb246d4952e42a58ef2" [label=""];
}

