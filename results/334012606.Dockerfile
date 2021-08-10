[app/sources/334012606.Dockerfile]
digraph {
  "sha256:a953f0910179fb9ca4f39945ecc60b3a0ca67b0536172699b9bf849fa0c26a1c" [label="local://context" shape="ellipse"];
  "sha256:536136d1e0d2aa10dd153d39cbffc75fe569b0a11daca4e64474607c9e113c58" [label="docker-image://docker.io/tutum/lamp:latest" shape="ellipse"];
  "sha256:21ab0433bfefdc5d493d79a6028bbb46110bb70c71241c37dd0a440379fcafa8" [label="/bin/sh -c rm -fr /app" shape="box"];
  "sha256:f646fc26887978502700c52bb9348a063f264de359f2aba07d43a28552637002" [label="copy{src=/ExamSys, dest=/app}" shape="note"];
  "sha256:d2b3e9c63183aa5a43d062b8f38f48dd14efc1781927c5c10599ed7add681402" [label="copy{src=/mysql-setup.sh, dest=/mysql-setup.sh}" shape="note"];
  "sha256:60d08d79ddacfaee1a61a4eefc9fb04b456b0136bd7592ea86bb127005dc51cc" [label="copy{src=/Create_DB.sql, dest=/Create_DB.sql}" shape="note"];
  "sha256:47fdc44b814bf745f9de792bbde20605e3cc175e7b77cfc4accb40b7f213c7a1" [label="sha256:47fdc44b814bf745f9de792bbde20605e3cc175e7b77cfc4accb40b7f213c7a1" shape="plaintext"];
  "sha256:536136d1e0d2aa10dd153d39cbffc75fe569b0a11daca4e64474607c9e113c58" -> "sha256:21ab0433bfefdc5d493d79a6028bbb46110bb70c71241c37dd0a440379fcafa8" [label=""];
  "sha256:21ab0433bfefdc5d493d79a6028bbb46110bb70c71241c37dd0a440379fcafa8" -> "sha256:f646fc26887978502700c52bb9348a063f264de359f2aba07d43a28552637002" [label=""];
  "sha256:a953f0910179fb9ca4f39945ecc60b3a0ca67b0536172699b9bf849fa0c26a1c" -> "sha256:f646fc26887978502700c52bb9348a063f264de359f2aba07d43a28552637002" [label=""];
  "sha256:f646fc26887978502700c52bb9348a063f264de359f2aba07d43a28552637002" -> "sha256:d2b3e9c63183aa5a43d062b8f38f48dd14efc1781927c5c10599ed7add681402" [label=""];
  "sha256:a953f0910179fb9ca4f39945ecc60b3a0ca67b0536172699b9bf849fa0c26a1c" -> "sha256:d2b3e9c63183aa5a43d062b8f38f48dd14efc1781927c5c10599ed7add681402" [label=""];
  "sha256:d2b3e9c63183aa5a43d062b8f38f48dd14efc1781927c5c10599ed7add681402" -> "sha256:60d08d79ddacfaee1a61a4eefc9fb04b456b0136bd7592ea86bb127005dc51cc" [label=""];
  "sha256:a953f0910179fb9ca4f39945ecc60b3a0ca67b0536172699b9bf849fa0c26a1c" -> "sha256:60d08d79ddacfaee1a61a4eefc9fb04b456b0136bd7592ea86bb127005dc51cc" [label=""];
  "sha256:60d08d79ddacfaee1a61a4eefc9fb04b456b0136bd7592ea86bb127005dc51cc" -> "sha256:47fdc44b814bf745f9de792bbde20605e3cc175e7b77cfc4accb40b7f213c7a1" [label=""];
}

