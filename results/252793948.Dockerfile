[app/sources/252793948.Dockerfile]
digraph {
  "sha256:ed63713e1d19bd3546220c7db8501f1247b2300d1d5de2bda92bb5b13245d0b7" [label="local://context" shape="ellipse"];
  "sha256:1cc4edc4810e3d0d92cb09d289f84f09ef307922174bb5d02b013a716b2b64a3" [label="copy{src=/rootfs.tar.xz, dest=/}" shape="note"];
  "sha256:cb84a9a30a3d5a4c66cdd801bdf6db0b916c2b74c8deb7dbd2ce9246d4ff0a25" [label="sha256:cb84a9a30a3d5a4c66cdd801bdf6db0b916c2b74c8deb7dbd2ce9246d4ff0a25" shape="plaintext"];
  "sha256:ed63713e1d19bd3546220c7db8501f1247b2300d1d5de2bda92bb5b13245d0b7" -> "sha256:1cc4edc4810e3d0d92cb09d289f84f09ef307922174bb5d02b013a716b2b64a3" [label=""];
  "sha256:1cc4edc4810e3d0d92cb09d289f84f09ef307922174bb5d02b013a716b2b64a3" -> "sha256:cb84a9a30a3d5a4c66cdd801bdf6db0b916c2b74c8deb7dbd2ce9246d4ff0a25" [label=""];
}

