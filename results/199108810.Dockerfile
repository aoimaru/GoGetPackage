[app/sources/199108810.Dockerfile]
digraph {
  "sha256:b2005fedc0c0cd2a5d19f6f78362d70c870dfa59181838f9dba8e0a539f555fc" [label="local://context" shape="ellipse"];
  "sha256:6f69ece0bfe811c7c3b2d7dcf965c1ffdf239102a1ef16eb4cd4d25e32193946" [label="copy{src=/gopath/bin/hello, dest=/hello}" shape="note"];
  "sha256:aac45c5cc917e6c503405bce245693584a990387c46bd5b45e08e53269be6e00" [label="sha256:aac45c5cc917e6c503405bce245693584a990387c46bd5b45e08e53269be6e00" shape="plaintext"];
  "sha256:b2005fedc0c0cd2a5d19f6f78362d70c870dfa59181838f9dba8e0a539f555fc" -> "sha256:6f69ece0bfe811c7c3b2d7dcf965c1ffdf239102a1ef16eb4cd4d25e32193946" [label=""];
  "sha256:6f69ece0bfe811c7c3b2d7dcf965c1ffdf239102a1ef16eb4cd4d25e32193946" -> "sha256:aac45c5cc917e6c503405bce245693584a990387c46bd5b45e08e53269be6e00" [label=""];
}

