[app/sources/306109156.Dockerfile]
digraph {
  "sha256:2b3930e5132845be3cb01c5a04107b369f29d0dfb21e793d9bbf8d45ee351bc1" [label="local://context" shape="ellipse"];
  "sha256:e63f66f679d2dd0137ed76ffcc2cea05e9a4036573be1776f7f831cb9931d017" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:586e14dba20f48ed005019a94e7f6db2eb993fd9db7254a7567e9145e97cfac0" [label="sha256:586e14dba20f48ed005019a94e7f6db2eb993fd9db7254a7567e9145e97cfac0" shape="plaintext"];
  "sha256:2b3930e5132845be3cb01c5a04107b369f29d0dfb21e793d9bbf8d45ee351bc1" -> "sha256:e63f66f679d2dd0137ed76ffcc2cea05e9a4036573be1776f7f831cb9931d017" [label=""];
  "sha256:e63f66f679d2dd0137ed76ffcc2cea05e9a4036573be1776f7f831cb9931d017" -> "sha256:586e14dba20f48ed005019a94e7f6db2eb993fd9db7254a7567e9145e97cfac0" [label=""];
}

