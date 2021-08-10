[app/sources/294134580.Dockerfile]
digraph {
  "sha256:aa060e4b66135b9bb584959284114a50af18e81dc38f3b4c7efa577e5c6e9e6a" [label="local://context" shape="ellipse"];
  "sha256:c249296ea16614c08d44b6b565f8cae40157bf899f23415fed54e7aa50548de5" [label="copy{src=/hello, dest=/}" shape="note"];
  "sha256:7f7ed3fad178db59c78b6b0e9b416edbc636e691cb02bfb48ff619ffe3a8c034" [label="copy{src=/templates, dest=/templates}" shape="note"];
  "sha256:273e13cea8e5eee8fd9c63f9170d30d988a40381a93af22b8954c67a80126f79" [label="sha256:273e13cea8e5eee8fd9c63f9170d30d988a40381a93af22b8954c67a80126f79" shape="plaintext"];
  "sha256:aa060e4b66135b9bb584959284114a50af18e81dc38f3b4c7efa577e5c6e9e6a" -> "sha256:c249296ea16614c08d44b6b565f8cae40157bf899f23415fed54e7aa50548de5" [label=""];
  "sha256:c249296ea16614c08d44b6b565f8cae40157bf899f23415fed54e7aa50548de5" -> "sha256:7f7ed3fad178db59c78b6b0e9b416edbc636e691cb02bfb48ff619ffe3a8c034" [label=""];
  "sha256:aa060e4b66135b9bb584959284114a50af18e81dc38f3b4c7efa577e5c6e9e6a" -> "sha256:7f7ed3fad178db59c78b6b0e9b416edbc636e691cb02bfb48ff619ffe3a8c034" [label=""];
  "sha256:7f7ed3fad178db59c78b6b0e9b416edbc636e691cb02bfb48ff619ffe3a8c034" -> "sha256:273e13cea8e5eee8fd9c63f9170d30d988a40381a93af22b8954c67a80126f79" [label=""];
}

