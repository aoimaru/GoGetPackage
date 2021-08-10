[app/sources/292516078.Dockerfile]
digraph {
  "sha256:9dd28bc018f57b5b3b5cf9e3c4a0b8425908a9dd71e32f439e3528265c543155" [label="docker-image://docker.io/library/notary:server-0.5.0" shape="ellipse"];
  "sha256:b5e868dc7db9e21b635a623ce7e5d2648756dbb862f80022da9791c711ff9cc9" [label="local://context" shape="ellipse"];
  "sha256:cef02c1f733eb1cbfa52931c8a2a37ab6a7ac76e42a0fd14defba2edec2b09c5" [label="copy{src=/notary, dest=/fixtures/}" shape="note"];
  "sha256:a4563329a25e9d4cc241affda1b151c6abda8876fa5ec617bddd4b9ef39bb9de" [label="sha256:a4563329a25e9d4cc241affda1b151c6abda8876fa5ec617bddd4b9ef39bb9de" shape="plaintext"];
  "sha256:9dd28bc018f57b5b3b5cf9e3c4a0b8425908a9dd71e32f439e3528265c543155" -> "sha256:cef02c1f733eb1cbfa52931c8a2a37ab6a7ac76e42a0fd14defba2edec2b09c5" [label=""];
  "sha256:b5e868dc7db9e21b635a623ce7e5d2648756dbb862f80022da9791c711ff9cc9" -> "sha256:cef02c1f733eb1cbfa52931c8a2a37ab6a7ac76e42a0fd14defba2edec2b09c5" [label=""];
  "sha256:cef02c1f733eb1cbfa52931c8a2a37ab6a7ac76e42a0fd14defba2edec2b09c5" -> "sha256:a4563329a25e9d4cc241affda1b151c6abda8876fa5ec617bddd4b9ef39bb9de" [label=""];
}

