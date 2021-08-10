[app/sources/475338981.Dockerfile]
digraph {
  "sha256:5504e742eb27bc771682512b58c19cc47e324a1b4abc16536e922542143effbe" [label="local://context" shape="ellipse"];
  "sha256:f8a2f73ec89eaa136ad163933dcb0fb2700ed6de0bed33e3ee01a7dff0ea4b92" [label="copy{src=/kubectl, dest=/kubectl}" shape="note"];
  "sha256:9918c46f0d79f9631129c2fa18e73e9ea8c64eaebbe124531a4238bf34b5bfdb" [label="sha256:9918c46f0d79f9631129c2fa18e73e9ea8c64eaebbe124531a4238bf34b5bfdb" shape="plaintext"];
  "sha256:5504e742eb27bc771682512b58c19cc47e324a1b4abc16536e922542143effbe" -> "sha256:f8a2f73ec89eaa136ad163933dcb0fb2700ed6de0bed33e3ee01a7dff0ea4b92" [label=""];
  "sha256:f8a2f73ec89eaa136ad163933dcb0fb2700ed6de0bed33e3ee01a7dff0ea4b92" -> "sha256:9918c46f0d79f9631129c2fa18e73e9ea8c64eaebbe124531a4238bf34b5bfdb" [label=""];
}

