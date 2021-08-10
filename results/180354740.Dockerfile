[app/sources/180354740.Dockerfile]
digraph {
  "sha256:57acc9dcc02516e344cbcdeb80126c50e30bd49489d48bc4dcbf3a193ff20bde" [label="local://context" shape="ellipse"];
  "sha256:5fae37804560face20e3dc763f041b2998ae88473730ac2764529dfc7da523aa" [label="copy{src=/walk-static, dest=/bin/walk}" shape="note"];
  "sha256:c6c3a6a0d2a8d6c3c083f5a9da865c0d2b539cc9885db83325075a1ba0df4c94" [label="sha256:c6c3a6a0d2a8d6c3c083f5a9da865c0d2b539cc9885db83325075a1ba0df4c94" shape="plaintext"];
  "sha256:57acc9dcc02516e344cbcdeb80126c50e30bd49489d48bc4dcbf3a193ff20bde" -> "sha256:5fae37804560face20e3dc763f041b2998ae88473730ac2764529dfc7da523aa" [label=""];
  "sha256:5fae37804560face20e3dc763f041b2998ae88473730ac2764529dfc7da523aa" -> "sha256:c6c3a6a0d2a8d6c3c083f5a9da865c0d2b539cc9885db83325075a1ba0df4c94" [label=""];
}

