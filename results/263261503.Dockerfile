[app/sources/263261503.Dockerfile]
digraph {
  "sha256:93b70d1b5326339db52f12a0f6cc73051c080257df73f37e34ce3de2e4cf14fc" [label="local://context" shape="ellipse"];
  "sha256:0ebebb31ce899a548b2519283ccc786727efb2b3cdb0394cf50674e7311fcaba" [label="copy{src=/centos6-32-minimal-base.tar, dest=/}" shape="note"];
  "sha256:0c74aabe450013f7013f3bb2a8caa25fd2392eb4a13823caf5680d255948fd12" [label="sha256:0c74aabe450013f7013f3bb2a8caa25fd2392eb4a13823caf5680d255948fd12" shape="plaintext"];
  "sha256:93b70d1b5326339db52f12a0f6cc73051c080257df73f37e34ce3de2e4cf14fc" -> "sha256:0ebebb31ce899a548b2519283ccc786727efb2b3cdb0394cf50674e7311fcaba" [label=""];
  "sha256:0ebebb31ce899a548b2519283ccc786727efb2b3cdb0394cf50674e7311fcaba" -> "sha256:0c74aabe450013f7013f3bb2a8caa25fd2392eb4a13823caf5680d255948fd12" [label=""];
}

