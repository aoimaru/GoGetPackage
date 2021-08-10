[app/sources/252773032.Dockerfile]
digraph {
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:8d4853a5dd031f84d32cfbb2555017ba5931a8df64adf070239ba565ad5f5010" [label="local://context" shape="ellipse"];
  "sha256:1caa3bdb4f7a4e5c27dc74a3748273c6ad557ed97498c568b55dd6fb68221355" [label="copy{src=/, dest=/usr/local/nginx/html}" shape="note"];
  "sha256:52f79b2ef3ba321b2394fabb9e85a969167858bd83d2f6176bd3418cf83ae7d8" [label="sha256:52f79b2ef3ba321b2394fabb9e85a969167858bd83d2f6176bd3418cf83ae7d8" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:1caa3bdb4f7a4e5c27dc74a3748273c6ad557ed97498c568b55dd6fb68221355" [label=""];
  "sha256:8d4853a5dd031f84d32cfbb2555017ba5931a8df64adf070239ba565ad5f5010" -> "sha256:1caa3bdb4f7a4e5c27dc74a3748273c6ad557ed97498c568b55dd6fb68221355" [label=""];
  "sha256:1caa3bdb4f7a4e5c27dc74a3748273c6ad557ed97498c568b55dd6fb68221355" -> "sha256:52f79b2ef3ba321b2394fabb9e85a969167858bd83d2f6176bd3418cf83ae7d8" [label=""];
}

