[app/sources/201839096.Dockerfile]
digraph {
  "sha256:3769059b85eaaadfe3468d7cd0e9ca9dfa12dff5cb8dd18c8dfecb8aa6424e80" [label="docker-image://docker.io/library/java:8@sha256:c1ff613e8ba25833d2e1940da0940c3824f03f802c449f3d1815a66b7f8c0e9d" shape="ellipse"];
  "sha256:ab71232ad0e7ce2f2d067284489ba289929781da247ed6d4f0524efa2042617a" [label="local://context" shape="ellipse"];
  "sha256:becbeaa18fc6dd7e3113ed219e4672bd0a5c7d20f082d713ade3fe924be5b239" [label="copy{src=/, dest=/opt/distributedlog-trunk/}" shape="note"];
  "sha256:fa6ada74614990d62a559f8b78d96c3422ed475a1bbce05c2bdd3aadf154c78f" [label="sha256:fa6ada74614990d62a559f8b78d96c3422ed475a1bbce05c2bdd3aadf154c78f" shape="plaintext"];
  "sha256:3769059b85eaaadfe3468d7cd0e9ca9dfa12dff5cb8dd18c8dfecb8aa6424e80" -> "sha256:becbeaa18fc6dd7e3113ed219e4672bd0a5c7d20f082d713ade3fe924be5b239" [label=""];
  "sha256:ab71232ad0e7ce2f2d067284489ba289929781da247ed6d4f0524efa2042617a" -> "sha256:becbeaa18fc6dd7e3113ed219e4672bd0a5c7d20f082d713ade3fe924be5b239" [label=""];
  "sha256:becbeaa18fc6dd7e3113ed219e4672bd0a5c7d20f082d713ade3fe924be5b239" -> "sha256:fa6ada74614990d62a559f8b78d96c3422ed475a1bbce05c2bdd3aadf154c78f" [label=""];
}

