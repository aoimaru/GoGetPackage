[app/sources/174660077.Dockerfile]
digraph {
  "sha256:094c88a2f31e6ca9a68587988d5d7f0eb0351b00eb90430452902958bd925669" [label="local://context" shape="ellipse"];
  "sha256:2e0b3e440cf11e92fb1da44ad6fa3307354a5f807a9490d1d228773c96110e21" [label="copy{src=/ca-certificates.crt, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:8577884ea8daab8db8fddcaed48520c114372ac61fcebbd907462ee4f4bb3c35" [label="copy{src=/traefik, dest=/}" shape="note"];
  "sha256:a8b6e293b1162ad460501065aa4a687d8d104fdf33e6ec44889544e57338314a" [label="sha256:a8b6e293b1162ad460501065aa4a687d8d104fdf33e6ec44889544e57338314a" shape="plaintext"];
  "sha256:094c88a2f31e6ca9a68587988d5d7f0eb0351b00eb90430452902958bd925669" -> "sha256:2e0b3e440cf11e92fb1da44ad6fa3307354a5f807a9490d1d228773c96110e21" [label=""];
  "sha256:2e0b3e440cf11e92fb1da44ad6fa3307354a5f807a9490d1d228773c96110e21" -> "sha256:8577884ea8daab8db8fddcaed48520c114372ac61fcebbd907462ee4f4bb3c35" [label=""];
  "sha256:094c88a2f31e6ca9a68587988d5d7f0eb0351b00eb90430452902958bd925669" -> "sha256:8577884ea8daab8db8fddcaed48520c114372ac61fcebbd907462ee4f4bb3c35" [label=""];
  "sha256:8577884ea8daab8db8fddcaed48520c114372ac61fcebbd907462ee4f4bb3c35" -> "sha256:a8b6e293b1162ad460501065aa4a687d8d104fdf33e6ec44889544e57338314a" [label=""];
}
