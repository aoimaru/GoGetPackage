[app/sources/162089067.Dockerfile]
digraph {
  "sha256:dfcd12c90e1d3388251d7805b07a191c4e1fcb8891f495b34dd4b9bac1a23c2b" [label="local://context" shape="ellipse"];
  "sha256:dae0ac82bc34075ec20f2d4859c03b046df2bea89bbbc44716a582abae26668a" [label="copy{src=/bttracker/bttracker, dest=/usr/bin/}" shape="note"];
  "sha256:db5a802c3051839539e806ec03a9033ad7af45a5c79f696e39cb17826d0bf701" [label="sha256:db5a802c3051839539e806ec03a9033ad7af45a5c79f696e39cb17826d0bf701" shape="plaintext"];
  "sha256:dfcd12c90e1d3388251d7805b07a191c4e1fcb8891f495b34dd4b9bac1a23c2b" -> "sha256:dae0ac82bc34075ec20f2d4859c03b046df2bea89bbbc44716a582abae26668a" [label=""];
  "sha256:dae0ac82bc34075ec20f2d4859c03b046df2bea89bbbc44716a582abae26668a" -> "sha256:db5a802c3051839539e806ec03a9033ad7af45a5c79f696e39cb17826d0bf701" [label=""];
}

