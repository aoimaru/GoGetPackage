[app/sources/206480145.Dockerfile]
digraph {
  "sha256:65bbdfe77e64ec979f43a9674e08ff72a4cfdbd82f9806f25a76c12935615655" [label="local://context" shape="ellipse"];
  "sha256:d2d80d428204b1a344ded97ff7b52722bc36ff5b9bdfa92060612c9f12ebe085" [label="copy{src=/base.tar.xz, dest=/}" shape="note"];
  "sha256:84d6aeb5a3e2bfb2cc7d1015e5870c76e7db4d52cee37b571a23795b9723f5bc" [label="sha256:84d6aeb5a3e2bfb2cc7d1015e5870c76e7db4d52cee37b571a23795b9723f5bc" shape="plaintext"];
  "sha256:65bbdfe77e64ec979f43a9674e08ff72a4cfdbd82f9806f25a76c12935615655" -> "sha256:d2d80d428204b1a344ded97ff7b52722bc36ff5b9bdfa92060612c9f12ebe085" [label=""];
  "sha256:d2d80d428204b1a344ded97ff7b52722bc36ff5b9bdfa92060612c9f12ebe085" -> "sha256:84d6aeb5a3e2bfb2cc7d1015e5870c76e7db4d52cee37b571a23795b9723f5bc" [label=""];
}

