[app/sources/351828414.Dockerfile]
digraph {
  "sha256:40158ffa491d9346788b3c527e895c3a834f96ccf0e31dea482d521b159dd2a3" [label="docker-image://docker.io/library/mysql:5.6" shape="ellipse"];
  "sha256:d75650b8289be84276a73bb8d0a18dbd0d6f3b1b749bba2363d0ded3196328d6" [label="mkdir{path=/mysql}" shape="note"];
  "sha256:4076fd3d25f2314b2cd0fba57546f18cf6f3ca37ccd2a74d7153a0f2b2ba17cd" [label="local://context" shape="ellipse"];
  "sha256:3b7251cef01a6feea7752c51b0824789670335cc815dca6e4cdbd4a5f33fe31c" [label="copy{src=/guestbook.cnf, dest=/etc/mysql/conf.d/}" shape="note"];
  "sha256:4d2b78df7c857b701d06c26c7ad450d4b7138055cec756e565abac0e8c6b6c30" [label="sha256:4d2b78df7c857b701d06c26c7ad450d4b7138055cec756e565abac0e8c6b6c30" shape="plaintext"];
  "sha256:40158ffa491d9346788b3c527e895c3a834f96ccf0e31dea482d521b159dd2a3" -> "sha256:d75650b8289be84276a73bb8d0a18dbd0d6f3b1b749bba2363d0ded3196328d6" [label=""];
  "sha256:d75650b8289be84276a73bb8d0a18dbd0d6f3b1b749bba2363d0ded3196328d6" -> "sha256:3b7251cef01a6feea7752c51b0824789670335cc815dca6e4cdbd4a5f33fe31c" [label=""];
  "sha256:4076fd3d25f2314b2cd0fba57546f18cf6f3ca37ccd2a74d7153a0f2b2ba17cd" -> "sha256:3b7251cef01a6feea7752c51b0824789670335cc815dca6e4cdbd4a5f33fe31c" [label=""];
  "sha256:3b7251cef01a6feea7752c51b0824789670335cc815dca6e4cdbd4a5f33fe31c" -> "sha256:4d2b78df7c857b701d06c26c7ad450d4b7138055cec756e565abac0e8c6b6c30" [label=""];
}

