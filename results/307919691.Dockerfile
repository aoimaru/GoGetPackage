[app/sources/307919691.Dockerfile]
digraph {
  "sha256:540e8523214fb36574655c4066b143f82602dc80b149ddfa1d50d5fc82644a87" [label="local://context" shape="ellipse"];
  "sha256:0fa2d70e7a6b7f4ea444f08cd3581d426a47abdf10a43732e9ce243abbf8c93e" [label="copy{src=/docs, dest=/docs}" shape="note"];
  "sha256:b5eec215d0e1f57ba326ec6256d6bdb6e45fed1d3b459c3083d37485a65decfb" [label="sha256:b5eec215d0e1f57ba326ec6256d6bdb6e45fed1d3b459c3083d37485a65decfb" shape="plaintext"];
  "sha256:540e8523214fb36574655c4066b143f82602dc80b149ddfa1d50d5fc82644a87" -> "sha256:0fa2d70e7a6b7f4ea444f08cd3581d426a47abdf10a43732e9ce243abbf8c93e" [label=""];
  "sha256:0fa2d70e7a6b7f4ea444f08cd3581d426a47abdf10a43732e9ce243abbf8c93e" -> "sha256:b5eec215d0e1f57ba326ec6256d6bdb6e45fed1d3b459c3083d37485a65decfb" [label=""];
}

