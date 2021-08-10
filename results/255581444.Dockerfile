[app/sources/255581444.Dockerfile]
digraph {
  "sha256:d9ef35c0531530ed5e228d926e6a561d63f5e42ae44be20e011cf3c972bc6110" [label="local://context" shape="ellipse"];
  "sha256:b094568d2ef41888c91111f9942e3c3a1a87528f7bc0debb488c28b1b6024aad" [label="copy{src=/build/main, dest=/}" shape="note"];
  "sha256:c0a054ea55c6e6e0080da2596a1f5a4301f4ca7d5a322a2aeb09c7c1c4ab3011" [label="sha256:c0a054ea55c6e6e0080da2596a1f5a4301f4ca7d5a322a2aeb09c7c1c4ab3011" shape="plaintext"];
  "sha256:d9ef35c0531530ed5e228d926e6a561d63f5e42ae44be20e011cf3c972bc6110" -> "sha256:b094568d2ef41888c91111f9942e3c3a1a87528f7bc0debb488c28b1b6024aad" [label=""];
  "sha256:b094568d2ef41888c91111f9942e3c3a1a87528f7bc0debb488c28b1b6024aad" -> "sha256:c0a054ea55c6e6e0080da2596a1f5a4301f4ca7d5a322a2aeb09c7c1c4ab3011" [label=""];
}

