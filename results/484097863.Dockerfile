[app/sources/484097863.Dockerfile]
digraph {
  "sha256:cff94367d1ee7bd8f6d759b9639836cdf105fcf610d669bc8f0a9b4ba976e067" [label="local://context" shape="ellipse"];
  "sha256:77480a35c1291ad97ed7f8551f7568deaadd887e01202be8016824acf5434aea" [label="copy{src=/docs, dest=/docs}" shape="note"];
  "sha256:45aa421bb304ad639cb95b11c3c147ab34bb56cae9f37b0d52b18f961d1deacc" [label="sha256:45aa421bb304ad639cb95b11c3c147ab34bb56cae9f37b0d52b18f961d1deacc" shape="plaintext"];
  "sha256:cff94367d1ee7bd8f6d759b9639836cdf105fcf610d669bc8f0a9b4ba976e067" -> "sha256:77480a35c1291ad97ed7f8551f7568deaadd887e01202be8016824acf5434aea" [label=""];
  "sha256:77480a35c1291ad97ed7f8551f7568deaadd887e01202be8016824acf5434aea" -> "sha256:45aa421bb304ad639cb95b11c3c147ab34bb56cae9f37b0d52b18f961d1deacc" [label=""];
}

