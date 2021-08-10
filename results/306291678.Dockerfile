[app/sources/306291678.Dockerfile]
digraph {
  "sha256:da95d2310eb94e73445288db33658293d7345ff2825918b3f7fada5a5bd47cc3" [label="local://context" shape="ellipse"];
  "sha256:febaddcae3de756942993b5a62c6f0ed76fdb815b76ccd381b199615310ae522" [label="copy{src=/bin/pause-, dest=/pause}" shape="note"];
  "sha256:7920e05588c91e13eadfce8e3dbb688b755ea82bbda150bc1a28ab2b112cd4aa" [label="sha256:7920e05588c91e13eadfce8e3dbb688b755ea82bbda150bc1a28ab2b112cd4aa" shape="plaintext"];
  "sha256:da95d2310eb94e73445288db33658293d7345ff2825918b3f7fada5a5bd47cc3" -> "sha256:febaddcae3de756942993b5a62c6f0ed76fdb815b76ccd381b199615310ae522" [label=""];
  "sha256:febaddcae3de756942993b5a62c6f0ed76fdb815b76ccd381b199615310ae522" -> "sha256:7920e05588c91e13eadfce8e3dbb688b755ea82bbda150bc1a28ab2b112cd4aa" [label=""];
}

