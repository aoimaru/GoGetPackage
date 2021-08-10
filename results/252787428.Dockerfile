[app/sources/252787428.Dockerfile]
digraph {
  "sha256:0b90280ab284fe0ae48858d09d904f6efcddd8ca418cfd2f9ebfa5615f7e3836" [label="local://context" shape="ellipse"];
  "sha256:89ab4b47fd2d34de1226697641727cce8fd85c1b5e7cc4dc725a30dafe912400" [label="copy{src=/--from=builder, dest=/fastcoll},copy{src=/fastcoll/fastcoll, dest=/fastcoll}" shape="note"];
  "sha256:d1bc110634497763f7ecf5a62f23030a1bd13a063d33a4222abda87f3e0dcff6" [label="sha256:d1bc110634497763f7ecf5a62f23030a1bd13a063d33a4222abda87f3e0dcff6" shape="plaintext"];
  "sha256:0b90280ab284fe0ae48858d09d904f6efcddd8ca418cfd2f9ebfa5615f7e3836" -> "sha256:89ab4b47fd2d34de1226697641727cce8fd85c1b5e7cc4dc725a30dafe912400" [label=""];
  "sha256:89ab4b47fd2d34de1226697641727cce8fd85c1b5e7cc4dc725a30dafe912400" -> "sha256:d1bc110634497763f7ecf5a62f23030a1bd13a063d33a4222abda87f3e0dcff6" [label=""];
}

