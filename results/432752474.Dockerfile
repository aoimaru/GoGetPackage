[app/sources/432752474.Dockerfile]
digraph {
  "sha256:9f24d5c345f71481c82945a47d3455afce6f00f30b1cb672e3d457017d568865" [label="docker-image://docker.io/selenium/standalone-chrome-debug:3.141.59-oxygen" shape="ellipse"];
  "sha256:4f0524be55ceda23488213b29e0ca353e749a0b86758cdcf46b66c3bbae18764" [label="local://context" shape="ellipse"];
  "sha256:c0ad089d27bee7fdb29e86b191ae8c47afbb1904b275d2c4f257248b41932d04" [label="copy{src=/entry_point.sh, dest=/opt/bin/custom_entry_point.sh}" shape="note"];
  "sha256:348fbe1e35a6ba6572965dc3629101d4b8204c8bd7105053effcd08484502cfd" [label="/bin/sh -c chmod +x /opt/bin/custom_entry_point.sh" shape="box"];
  "sha256:95194594913146c7d1e48cfd0e286b8ea5f720a5cfaadbd83b052900edeea6a9" [label="sha256:95194594913146c7d1e48cfd0e286b8ea5f720a5cfaadbd83b052900edeea6a9" shape="plaintext"];
  "sha256:9f24d5c345f71481c82945a47d3455afce6f00f30b1cb672e3d457017d568865" -> "sha256:c0ad089d27bee7fdb29e86b191ae8c47afbb1904b275d2c4f257248b41932d04" [label=""];
  "sha256:4f0524be55ceda23488213b29e0ca353e749a0b86758cdcf46b66c3bbae18764" -> "sha256:c0ad089d27bee7fdb29e86b191ae8c47afbb1904b275d2c4f257248b41932d04" [label=""];
  "sha256:c0ad089d27bee7fdb29e86b191ae8c47afbb1904b275d2c4f257248b41932d04" -> "sha256:348fbe1e35a6ba6572965dc3629101d4b8204c8bd7105053effcd08484502cfd" [label=""];
  "sha256:348fbe1e35a6ba6572965dc3629101d4b8204c8bd7105053effcd08484502cfd" -> "sha256:95194594913146c7d1e48cfd0e286b8ea5f720a5cfaadbd83b052900edeea6a9" [label=""];
}

