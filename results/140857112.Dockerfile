[app/sources/140857112.Dockerfile]
digraph {
  "sha256:665e27838b925e6991227a6ce234e6b3c6027ae3eb7cd4bd28ff896146bbf6e1" [label="docker-image://docker.io/whatwedo/nginx:v2.0" shape="ellipse"];
  "sha256:df36a111454419c42f227b6ee22e74f55efed270e9c16f816125aa2c750d5dfb" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:3c12fddc9b5aee0b9351c7e1af56259bf4ee5512fb3863e5665bc691c00e6de5" [label="local://context" shape="ellipse"];
  "sha256:1b38726991770e727d137da0d281a3b97719ab4de04b062201ca7f2393ded4df" [label="copy{src=/, dest=/var/www}" shape="note"];
  "sha256:977ede57b54b881709ab22e4dbee0167707d17da60f5b7901dc0da579bb994aa" [label="sha256:977ede57b54b881709ab22e4dbee0167707d17da60f5b7901dc0da579bb994aa" shape="plaintext"];
  "sha256:665e27838b925e6991227a6ce234e6b3c6027ae3eb7cd4bd28ff896146bbf6e1" -> "sha256:df36a111454419c42f227b6ee22e74f55efed270e9c16f816125aa2c750d5dfb" [label=""];
  "sha256:df36a111454419c42f227b6ee22e74f55efed270e9c16f816125aa2c750d5dfb" -> "sha256:1b38726991770e727d137da0d281a3b97719ab4de04b062201ca7f2393ded4df" [label=""];
  "sha256:3c12fddc9b5aee0b9351c7e1af56259bf4ee5512fb3863e5665bc691c00e6de5" -> "sha256:1b38726991770e727d137da0d281a3b97719ab4de04b062201ca7f2393ded4df" [label=""];
  "sha256:1b38726991770e727d137da0d281a3b97719ab4de04b062201ca7f2393ded4df" -> "sha256:977ede57b54b881709ab22e4dbee0167707d17da60f5b7901dc0da579bb994aa" [label=""];
}

