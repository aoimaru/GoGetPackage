[app/sources/483224893.Dockerfile]
digraph {
  "sha256:f6edc1738c6ddefc4ebcd5fb6d61c67b52aceb009c5ebe3587dc8b137e3bdffe" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d58701265fac393e54ef9a17dc05f25d720d51a6440e46d3f9f1ae37da43b90e" [label="mkdir{path=/work/deps}" shape="note"];
  "sha256:fc04313650621a5da0cd88e46a25ca6869dfdc86c3ebf45cc2b2f0063170bd35" [label="/bin/sh -c apt-get update && apt-get -y install sudo" shape="box"];
  "sha256:12513d6671144be91bb0d9310219eeb74e9c5a247e99ea065ff931203347c9c7" [label="copy{src=/install/ubuntu_adduser.sh, dest=/work/}" shape="note"];
  "sha256:e33444cd149cc09bacf5c47727781ff74abcbc004df3b1225a278f6fc47f1097" [label="/bin/sh -c /work/ubuntu_adduser.sh" shape="box"];
  "sha256:90bf5e9c46ca6151740395ee6aa138988aaa9b5846ec4cade61c6297b4d97005" [label="copy{src=/install/ubuntu_runas_sudo.sh, dest=/work/}" shape="note"];
  "sha256:997292f39d615fecfa8ed134a1316ae87d2f551dace54c79c096ad42106fe8a3" [label="/bin/sh -c /work/ubuntu_runas_sudo.sh" shape="box"];
  "sha256:c9f39753a899fb5e60c8252a401cefb8ca6cc95e0fbacd8019c4265d112e2c15" [label="copy{src=/runtime_functions.sh, dest=/work/}" shape="note"];
  "sha256:c04497b7074404366ae7e01b07f07d0674741adc7f7bcdd473842f276fcd58eb" [label="mkdir{path=/work/mxnet}" shape="note"];
  "sha256:56abded83db48f96947097f9047e6afdf3c0e5981e0b9d6e70ccadde9d45f4bc" [label="sha256:56abded83db48f96947097f9047e6afdf3c0e5981e0b9d6e70ccadde9d45f4bc" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d58701265fac393e54ef9a17dc05f25d720d51a6440e46d3f9f1ae37da43b90e" [label=""];
  "sha256:d58701265fac393e54ef9a17dc05f25d720d51a6440e46d3f9f1ae37da43b90e" -> "sha256:fc04313650621a5da0cd88e46a25ca6869dfdc86c3ebf45cc2b2f0063170bd35" [label=""];
  "sha256:fc04313650621a5da0cd88e46a25ca6869dfdc86c3ebf45cc2b2f0063170bd35" -> "sha256:12513d6671144be91bb0d9310219eeb74e9c5a247e99ea065ff931203347c9c7" [label=""];
  "sha256:f6edc1738c6ddefc4ebcd5fb6d61c67b52aceb009c5ebe3587dc8b137e3bdffe" -> "sha256:12513d6671144be91bb0d9310219eeb74e9c5a247e99ea065ff931203347c9c7" [label=""];
  "sha256:12513d6671144be91bb0d9310219eeb74e9c5a247e99ea065ff931203347c9c7" -> "sha256:e33444cd149cc09bacf5c47727781ff74abcbc004df3b1225a278f6fc47f1097" [label=""];
  "sha256:e33444cd149cc09bacf5c47727781ff74abcbc004df3b1225a278f6fc47f1097" -> "sha256:90bf5e9c46ca6151740395ee6aa138988aaa9b5846ec4cade61c6297b4d97005" [label=""];
  "sha256:f6edc1738c6ddefc4ebcd5fb6d61c67b52aceb009c5ebe3587dc8b137e3bdffe" -> "sha256:90bf5e9c46ca6151740395ee6aa138988aaa9b5846ec4cade61c6297b4d97005" [label=""];
  "sha256:90bf5e9c46ca6151740395ee6aa138988aaa9b5846ec4cade61c6297b4d97005" -> "sha256:997292f39d615fecfa8ed134a1316ae87d2f551dace54c79c096ad42106fe8a3" [label=""];
  "sha256:997292f39d615fecfa8ed134a1316ae87d2f551dace54c79c096ad42106fe8a3" -> "sha256:c9f39753a899fb5e60c8252a401cefb8ca6cc95e0fbacd8019c4265d112e2c15" [label=""];
  "sha256:f6edc1738c6ddefc4ebcd5fb6d61c67b52aceb009c5ebe3587dc8b137e3bdffe" -> "sha256:c9f39753a899fb5e60c8252a401cefb8ca6cc95e0fbacd8019c4265d112e2c15" [label=""];
  "sha256:c9f39753a899fb5e60c8252a401cefb8ca6cc95e0fbacd8019c4265d112e2c15" -> "sha256:c04497b7074404366ae7e01b07f07d0674741adc7f7bcdd473842f276fcd58eb" [label=""];
  "sha256:c04497b7074404366ae7e01b07f07d0674741adc7f7bcdd473842f276fcd58eb" -> "sha256:56abded83db48f96947097f9047e6afdf3c0e5981e0b9d6e70ccadde9d45f4bc" [label=""];
}

