[app/sources/290020356.Dockerfile]
digraph {
  "sha256:156262615be4fdecf638ae32626b88132d4b3e4fa7bc3bff8d210d2361e5b89b" [label="local://context" shape="ellipse"];
  "sha256:fe799cb40aaa575a7e4cab19f93aaf57f18b8778ce8a8c1e082ffc950985b98a" [label="copy{src=/GITHASH.txt, dest=/}" shape="note"];
  "sha256:3716de6a43f0cf760d6b12517349b120be4873b4c8b60c7aa5d05035ca44d358" [label="copy{src=/fakegitserver, dest=/}" shape="note"];
  "sha256:0485d0985a8f0dcf0ebe7b300d46f14370760db935c427feb2adf176427cc8d6" [label="sha256:0485d0985a8f0dcf0ebe7b300d46f14370760db935c427feb2adf176427cc8d6" shape="plaintext"];
  "sha256:156262615be4fdecf638ae32626b88132d4b3e4fa7bc3bff8d210d2361e5b89b" -> "sha256:fe799cb40aaa575a7e4cab19f93aaf57f18b8778ce8a8c1e082ffc950985b98a" [label=""];
  "sha256:fe799cb40aaa575a7e4cab19f93aaf57f18b8778ce8a8c1e082ffc950985b98a" -> "sha256:3716de6a43f0cf760d6b12517349b120be4873b4c8b60c7aa5d05035ca44d358" [label=""];
  "sha256:156262615be4fdecf638ae32626b88132d4b3e4fa7bc3bff8d210d2361e5b89b" -> "sha256:3716de6a43f0cf760d6b12517349b120be4873b4c8b60c7aa5d05035ca44d358" [label=""];
  "sha256:3716de6a43f0cf760d6b12517349b120be4873b4c8b60c7aa5d05035ca44d358" -> "sha256:0485d0985a8f0dcf0ebe7b300d46f14370760db935c427feb2adf176427cc8d6" [label=""];
}

