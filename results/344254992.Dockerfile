[app/sources/344254992.Dockerfile]
digraph {
  "sha256:7a2a4da75d5ba949655e5eea6cf5b456ee9d162f83ceabf20e467eaeb51b4078" [label="docker-image://docker.io/library/fxa-auth-db-mysql:build" shape="ellipse"];
  "sha256:ad01831e7815bcc17ddb00b4dfb5d78629448e1afff62401d6ab4317750832f0" [label="/bin/sh -c npm install" shape="box"];
  "sha256:88552fc60e3280b533f3fa6d34273678666893fc1a382b03bf38790d19856671" [label="sha256:88552fc60e3280b533f3fa6d34273678666893fc1a382b03bf38790d19856671" shape="plaintext"];
  "sha256:7a2a4da75d5ba949655e5eea6cf5b456ee9d162f83ceabf20e467eaeb51b4078" -> "sha256:ad01831e7815bcc17ddb00b4dfb5d78629448e1afff62401d6ab4317750832f0" [label=""];
  "sha256:ad01831e7815bcc17ddb00b4dfb5d78629448e1afff62401d6ab4317750832f0" -> "sha256:88552fc60e3280b533f3fa6d34273678666893fc1a382b03bf38790d19856671" [label=""];
}

