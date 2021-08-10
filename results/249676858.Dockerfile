[app/sources/249676858.Dockerfile]
digraph {
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" [label="docker-image://docker.io/library/buildpack-deps:jessie" shape="ellipse"];
  "sha256:1c1b01c7f7fec6527d16966fc0d2e4c9373bccee0073ae0f5cb99946acd652ad" [label="local://context" shape="ellipse"];
  "sha256:f52cd3555f8d51db9debb8f56b13d65f5a843220ea48c9829d81152e4a4a42fd" [label="copy{src=/, dest=/usr/src/}" shape="note"];
  "sha256:15a52b1d5ab4cc0d04ebf67b7a3fdb3dbb22fd037a2977beae8ad085e774f55a" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:fdfcacc7149d65de39b3b099dc5cff79c82417c6b0fa7e9e3c27e86137cf1d23" [label="/bin/sh -c gcc -g -Wall -static userns.c -o /usr/bin/userns-test \t&& gcc -g -Wall -static ns.c -o /usr/bin/ns-test \t&& gcc -g -Wall -static acct.c -o /usr/bin/acct-test" shape="box"];
  "sha256:e8c1154ce056ed3fc440331d84ede9a0a360458c320c3887df8e556bc11a9c5a" [label="/bin/sh -c [ \"$(uname -m)\" = \"x86_64\" ] && gcc -s -m32 -nostdlib exit32.s -o /usr/bin/exit32-test || true" shape="box"];
  "sha256:0cae38dac14cb17dccfdf623c8801add92cdf905eec4025f7794cf88071acb41" [label="sha256:0cae38dac14cb17dccfdf623c8801add92cdf905eec4025f7794cf88071acb41" shape="plaintext"];
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" -> "sha256:f52cd3555f8d51db9debb8f56b13d65f5a843220ea48c9829d81152e4a4a42fd" [label=""];
  "sha256:1c1b01c7f7fec6527d16966fc0d2e4c9373bccee0073ae0f5cb99946acd652ad" -> "sha256:f52cd3555f8d51db9debb8f56b13d65f5a843220ea48c9829d81152e4a4a42fd" [label=""];
  "sha256:f52cd3555f8d51db9debb8f56b13d65f5a843220ea48c9829d81152e4a4a42fd" -> "sha256:15a52b1d5ab4cc0d04ebf67b7a3fdb3dbb22fd037a2977beae8ad085e774f55a" [label=""];
  "sha256:15a52b1d5ab4cc0d04ebf67b7a3fdb3dbb22fd037a2977beae8ad085e774f55a" -> "sha256:fdfcacc7149d65de39b3b099dc5cff79c82417c6b0fa7e9e3c27e86137cf1d23" [label=""];
  "sha256:fdfcacc7149d65de39b3b099dc5cff79c82417c6b0fa7e9e3c27e86137cf1d23" -> "sha256:e8c1154ce056ed3fc440331d84ede9a0a360458c320c3887df8e556bc11a9c5a" [label=""];
  "sha256:e8c1154ce056ed3fc440331d84ede9a0a360458c320c3887df8e556bc11a9c5a" -> "sha256:0cae38dac14cb17dccfdf623c8801add92cdf905eec4025f7794cf88071acb41" [label=""];
}

