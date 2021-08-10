[app/sources/431434242.Dockerfile]
digraph {
  "sha256:6370f9baa0b6920b313275a0aa6af7a733b1122fa2671f59748a9ecf6964b91a" [label="local://context" shape="ellipse"];
  "sha256:5a14aaeb690730ce67ae40c74b20ed0bc5fd8c6f26bc7024e3d3b0c524aba919" [label="copy{src=/hello, dest=/}" shape="note"];
  "sha256:b6a3544a48c814ab2e099149c5e693842c03e6e5ad8f8b1c908e8c69576938d5" [label="sha256:b6a3544a48c814ab2e099149c5e693842c03e6e5ad8f8b1c908e8c69576938d5" shape="plaintext"];
  "sha256:6370f9baa0b6920b313275a0aa6af7a733b1122fa2671f59748a9ecf6964b91a" -> "sha256:5a14aaeb690730ce67ae40c74b20ed0bc5fd8c6f26bc7024e3d3b0c524aba919" [label=""];
  "sha256:5a14aaeb690730ce67ae40c74b20ed0bc5fd8c6f26bc7024e3d3b0c524aba919" -> "sha256:b6a3544a48c814ab2e099149c5e693842c03e6e5ad8f8b1c908e8c69576938d5" [label=""];
}

