[app/sources/295861986.Dockerfile]
digraph {
  "sha256:eb3e5dfa47312e1e4f54d4eed715aaee74a94856ca97136ea6ce663af0edd347" [label="docker-image://docker.io/library/vic-machine-base:latest" shape="ellipse"];
  "sha256:b40379209e44396f2bb522b363de6b3830c94409847ec9b3339c7ad1adeed187" [label="local://context" shape="ellipse"];
  "sha256:5c4827db0ee08235d53540127e69052fd9f45df55cc68f798cc33d33b5306c34" [label="copy{src=/validate.sh, dest=/},copy{src=/parse.sh, dest=/},copy{src=/map-firewall.json, dest=/}" shape="note"];
  "sha256:279b0a7f8503ef303b774361c1dbce1853db04d766698566a275d87fc9569877" [label="mkdir{path=/config}" shape="note"];
  "sha256:344013ec05ea433c149b2869226c0907d3642b1345ad3f039a8260625e6bfc18" [label="sha256:344013ec05ea433c149b2869226c0907d3642b1345ad3f039a8260625e6bfc18" shape="plaintext"];
  "sha256:eb3e5dfa47312e1e4f54d4eed715aaee74a94856ca97136ea6ce663af0edd347" -> "sha256:5c4827db0ee08235d53540127e69052fd9f45df55cc68f798cc33d33b5306c34" [label=""];
  "sha256:b40379209e44396f2bb522b363de6b3830c94409847ec9b3339c7ad1adeed187" -> "sha256:5c4827db0ee08235d53540127e69052fd9f45df55cc68f798cc33d33b5306c34" [label=""];
  "sha256:5c4827db0ee08235d53540127e69052fd9f45df55cc68f798cc33d33b5306c34" -> "sha256:279b0a7f8503ef303b774361c1dbce1853db04d766698566a275d87fc9569877" [label=""];
  "sha256:279b0a7f8503ef303b774361c1dbce1853db04d766698566a275d87fc9569877" -> "sha256:344013ec05ea433c149b2869226c0907d3642b1345ad3f039a8260625e6bfc18" [label=""];
}

