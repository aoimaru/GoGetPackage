[app/sources/371730649.Dockerfile]
digraph {
  "sha256:6a775fbb2fa21ce8c0899d89c4e30edaa6fbaeaa61b3df21524d1523f978f025" [label="local://context" shape="ellipse"];
  "sha256:942ef4d6a9792eae469b2a40bf03b09bec35503ac412776cbf197c92c2da08ba" [label="copy{src=/target/x86_64-unknown-linux-musl/release/kaws, dest=/kaws}" shape="note"];
  "sha256:85e988e3a986243cc2ca4e9dddd544933836e72c5ba2b72914343c3af54df7a7" [label="sha256:85e988e3a986243cc2ca4e9dddd544933836e72c5ba2b72914343c3af54df7a7" shape="plaintext"];
  "sha256:6a775fbb2fa21ce8c0899d89c4e30edaa6fbaeaa61b3df21524d1523f978f025" -> "sha256:942ef4d6a9792eae469b2a40bf03b09bec35503ac412776cbf197c92c2da08ba" [label=""];
  "sha256:942ef4d6a9792eae469b2a40bf03b09bec35503ac412776cbf197c92c2da08ba" -> "sha256:85e988e3a986243cc2ca4e9dddd544933836e72c5ba2b72914343c3af54df7a7" [label=""];
}

