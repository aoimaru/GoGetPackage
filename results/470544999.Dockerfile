[app/sources/470544999.Dockerfile]
digraph {
  "sha256:219f959735f4d5bc0c0eda2eb39e4d191acbe10ada8b868cc497acc9d1b3b6f9" [label="local://context" shape="ellipse"];
  "sha256:00a283fbacb85cf7d64d4e14bf973bbc0c81cfb984e59b6eb024c3b9d7970de5" [label="copy{src=/kubectl, dest=/kubectl}" shape="note"];
  "sha256:5f0813c19604fa07860d821ddea9fe1a2a683636d191eaca98002b5bfdc8ae66" [label="sha256:5f0813c19604fa07860d821ddea9fe1a2a683636d191eaca98002b5bfdc8ae66" shape="plaintext"];
  "sha256:219f959735f4d5bc0c0eda2eb39e4d191acbe10ada8b868cc497acc9d1b3b6f9" -> "sha256:00a283fbacb85cf7d64d4e14bf973bbc0c81cfb984e59b6eb024c3b9d7970de5" [label=""];
  "sha256:00a283fbacb85cf7d64d4e14bf973bbc0c81cfb984e59b6eb024c3b9d7970de5" -> "sha256:5f0813c19604fa07860d821ddea9fe1a2a683636d191eaca98002b5bfdc8ae66" [label=""];
}

