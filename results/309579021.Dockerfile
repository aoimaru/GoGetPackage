[app/sources/309579021.Dockerfile]
digraph {
  "sha256:efc8f7675bf1a4adefd462817d20b7c7abf089d0f759263cb066cc919a56f3bc" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:a4454be36a66e58f33a8e45459868b48fbf0254401ce7a066ce60b67386c7521" [label="copy{src=/throttle, dest=/throttle}" shape="note"];
  "sha256:aec6c783ab286f9be67514a2a3a78a80ec8a31fcfa57261b7d9d76b52ed3d41b" [label="sha256:aec6c783ab286f9be67514a2a3a78a80ec8a31fcfa57261b7d9d76b52ed3d41b" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:a4454be36a66e58f33a8e45459868b48fbf0254401ce7a066ce60b67386c7521" [label=""];
  "sha256:efc8f7675bf1a4adefd462817d20b7c7abf089d0f759263cb066cc919a56f3bc" -> "sha256:a4454be36a66e58f33a8e45459868b48fbf0254401ce7a066ce60b67386c7521" [label=""];
  "sha256:a4454be36a66e58f33a8e45459868b48fbf0254401ce7a066ce60b67386c7521" -> "sha256:aec6c783ab286f9be67514a2a3a78a80ec8a31fcfa57261b7d9d76b52ed3d41b" [label=""];
}

