[app/sources/316055729.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:57e231cc327da44881582e288e8b196125c165ae02765664a5e37e2cfeb5a378" [label="local://context" shape="ellipse"];
  "sha256:b0bce78be8a70720b77c6184bfae600145d95f9457c668c1144ee9ccef79282c" [label="copy{src=/kubemark, dest=/kubemark}" shape="note"];
  "sha256:3af9793f900622911550b8065a20965700f4276c5c7a2150d4e51c1426df55d2" [label="sha256:3af9793f900622911550b8065a20965700f4276c5c7a2150d4e51c1426df55d2" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:b0bce78be8a70720b77c6184bfae600145d95f9457c668c1144ee9ccef79282c" [label=""];
  "sha256:57e231cc327da44881582e288e8b196125c165ae02765664a5e37e2cfeb5a378" -> "sha256:b0bce78be8a70720b77c6184bfae600145d95f9457c668c1144ee9ccef79282c" [label=""];
  "sha256:b0bce78be8a70720b77c6184bfae600145d95f9457c668c1144ee9ccef79282c" -> "sha256:3af9793f900622911550b8065a20965700f4276c5c7a2150d4e51c1426df55d2" [label=""];
}
