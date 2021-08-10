[app/sources/225956436.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:93be82ae3ac9fccf4257000ca2d4f65d812c6892591d04477db33fee98ff8efa" [label="local://context" shape="ellipse"];
  "sha256:b74a94d67771e52a0c45baa7e1f8a226948eb070748e811d46ec8bbc9a0f422d" [label="copy{src=/authsvc, dest=/}" shape="note"];
  "sha256:ee8029eff941cc30547fa3475d6aa528a5df1149b8cbbe4c86b2837833baeb38" [label="sha256:ee8029eff941cc30547fa3475d6aa528a5df1149b8cbbe4c86b2837833baeb38" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:b74a94d67771e52a0c45baa7e1f8a226948eb070748e811d46ec8bbc9a0f422d" [label=""];
  "sha256:93be82ae3ac9fccf4257000ca2d4f65d812c6892591d04477db33fee98ff8efa" -> "sha256:b74a94d67771e52a0c45baa7e1f8a226948eb070748e811d46ec8bbc9a0f422d" [label=""];
  "sha256:b74a94d67771e52a0c45baa7e1f8a226948eb070748e811d46ec8bbc9a0f422d" -> "sha256:ee8029eff941cc30547fa3475d6aa528a5df1149b8cbbe4c86b2837833baeb38" [label=""];
}

