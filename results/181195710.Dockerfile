[app/sources/181195710.Dockerfile]
digraph {
  "sha256:62c08c9775512102e8f4dacc7dd9a16a9527350d62a6fd57120efd0382c79bdf" [label="local://context" shape="ellipse"];
  "sha256:381e54d6541db139d93393f166bd7bdd3f29739a6ede49f37d87e16b655b3066" [label="copy{src=/rootfs.tar.xz, dest=/}" shape="note"];
  "sha256:a0092d13062962166a12456fdcb626cff937847e8e1cb34bd0239946764ab0c5" [label="sha256:a0092d13062962166a12456fdcb626cff937847e8e1cb34bd0239946764ab0c5" shape="plaintext"];
  "sha256:62c08c9775512102e8f4dacc7dd9a16a9527350d62a6fd57120efd0382c79bdf" -> "sha256:381e54d6541db139d93393f166bd7bdd3f29739a6ede49f37d87e16b655b3066" [label=""];
  "sha256:381e54d6541db139d93393f166bd7bdd3f29739a6ede49f37d87e16b655b3066" -> "sha256:a0092d13062962166a12456fdcb626cff937847e8e1cb34bd0239946764ab0c5" [label=""];
}

