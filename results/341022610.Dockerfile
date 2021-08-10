[app/sources/341022610.Dockerfile]
digraph {
  "sha256:ffd9a9f6fe27068e7866e71e96c20b3e28edcd4743c39ba2f5c9e81d761e6c00" [label="docker-image://docker.io/chapdev/chaperone-lamp:latest" shape="ellipse"];
  "sha256:6294eac92b6694e1dc5dedebe53da20d882692bbcaa2a855c465e59999349013" [label="local://context" shape="ellipse"];
  "sha256:568b6dd1dffc096aa30d15a12dbe4d47d7585331590c8c8510b6f7dc7eb1c877" [label="copy{src=/, dest=/setup/}" shape="note"];
  "sha256:ba1cf6907cc774b97a189ef177caf9bdbbe9df1fa88497710c1a0f7b9e4c2884" [label="/bin/sh -c /setup/build/install.sh" shape="box"];
  "sha256:1f6e109025af7bff32dfa0585bf6cdacd2eedb96455c8a9b8336ed5a94e4ca0c" [label="sha256:1f6e109025af7bff32dfa0585bf6cdacd2eedb96455c8a9b8336ed5a94e4ca0c" shape="plaintext"];
  "sha256:ffd9a9f6fe27068e7866e71e96c20b3e28edcd4743c39ba2f5c9e81d761e6c00" -> "sha256:568b6dd1dffc096aa30d15a12dbe4d47d7585331590c8c8510b6f7dc7eb1c877" [label=""];
  "sha256:6294eac92b6694e1dc5dedebe53da20d882692bbcaa2a855c465e59999349013" -> "sha256:568b6dd1dffc096aa30d15a12dbe4d47d7585331590c8c8510b6f7dc7eb1c877" [label=""];
  "sha256:568b6dd1dffc096aa30d15a12dbe4d47d7585331590c8c8510b6f7dc7eb1c877" -> "sha256:ba1cf6907cc774b97a189ef177caf9bdbbe9df1fa88497710c1a0f7b9e4c2884" [label=""];
  "sha256:ba1cf6907cc774b97a189ef177caf9bdbbe9df1fa88497710c1a0f7b9e4c2884" -> "sha256:1f6e109025af7bff32dfa0585bf6cdacd2eedb96455c8a9b8336ed5a94e4ca0c" [label=""];
}

