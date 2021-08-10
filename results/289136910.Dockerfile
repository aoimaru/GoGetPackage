[app/sources/289136910.Dockerfile]
digraph {
  "sha256:5de17f2b3847d62fa9f4087929a43bbbcdcf8a56285ae14b47df6ad90be83e3a" [label="local://context" shape="ellipse"];
  "sha256:39c806a2a8043ac6fe4fd57bd00aba022faaebde4f13eb5124bb38ebe4fd35f0" [label="copy{src=/rootfs.tar, dest=/}" shape="note"];
  "sha256:fe0ea2861eccdb49cd82a5919401a903249b297053f996e3c452d862abed3678" [label="sha256:fe0ea2861eccdb49cd82a5919401a903249b297053f996e3c452d862abed3678" shape="plaintext"];
  "sha256:5de17f2b3847d62fa9f4087929a43bbbcdcf8a56285ae14b47df6ad90be83e3a" -> "sha256:39c806a2a8043ac6fe4fd57bd00aba022faaebde4f13eb5124bb38ebe4fd35f0" [label=""];
  "sha256:39c806a2a8043ac6fe4fd57bd00aba022faaebde4f13eb5124bb38ebe4fd35f0" -> "sha256:fe0ea2861eccdb49cd82a5919401a903249b297053f996e3c452d862abed3678" [label=""];
}

