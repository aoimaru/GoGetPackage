[app/sources/367875614.Dockerfile]
digraph {
  "sha256:1045fb8e613b794dace59558cda4a2001e8047ef35e3603e99e51d0534f7b2c3" [label="docker-image://docker.io/sickp/alpine-sshd:latest" shape="ellipse"];
  "sha256:f698741b326bf18e0b83d800fcf7bb4683aada602de846ffe89691737c7609af" [label="/bin/sh -c echo \"root:sunshine\" | chpasswd" shape="box"];
  "sha256:f5efd0a16c227af5850d78ca41cf20766a2308efd32b102c99b73d2d2d7bf0f3" [label="sha256:f5efd0a16c227af5850d78ca41cf20766a2308efd32b102c99b73d2d2d7bf0f3" shape="plaintext"];
  "sha256:1045fb8e613b794dace59558cda4a2001e8047ef35e3603e99e51d0534f7b2c3" -> "sha256:f698741b326bf18e0b83d800fcf7bb4683aada602de846ffe89691737c7609af" [label=""];
  "sha256:f698741b326bf18e0b83d800fcf7bb4683aada602de846ffe89691737c7609af" -> "sha256:f5efd0a16c227af5850d78ca41cf20766a2308efd32b102c99b73d2d2d7bf0f3" [label=""];
}

