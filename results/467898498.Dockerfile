[app/sources/467898498.Dockerfile]
digraph {
  "sha256:01d12fce96fc333a8617f8d0181ef0b07a3795f49e38ff99aaaa7329f90371bc" [label="local://context" shape="ellipse"];
  "sha256:5481ec87c30271fc6b8f8b569aab45f4739c5d6309b279d1ca46af23a8787e68" [label="copy{src=/portforwardtester, dest=/portforwardtester}" shape="note"];
  "sha256:db19fca6d99bba0c41edf36b896f60128e24e1783e7b6ca70c1be9e173c2dc93" [label="copy{src=/portforwardtester.go, dest=/portforwardtester.go}" shape="note"];
  "sha256:5384e532c78422f6f60f1422824b02ad84967d33e83485b5ceebab8afcc29a3c" [label="sha256:5384e532c78422f6f60f1422824b02ad84967d33e83485b5ceebab8afcc29a3c" shape="plaintext"];
  "sha256:01d12fce96fc333a8617f8d0181ef0b07a3795f49e38ff99aaaa7329f90371bc" -> "sha256:5481ec87c30271fc6b8f8b569aab45f4739c5d6309b279d1ca46af23a8787e68" [label=""];
  "sha256:5481ec87c30271fc6b8f8b569aab45f4739c5d6309b279d1ca46af23a8787e68" -> "sha256:db19fca6d99bba0c41edf36b896f60128e24e1783e7b6ca70c1be9e173c2dc93" [label=""];
  "sha256:01d12fce96fc333a8617f8d0181ef0b07a3795f49e38ff99aaaa7329f90371bc" -> "sha256:db19fca6d99bba0c41edf36b896f60128e24e1783e7b6ca70c1be9e173c2dc93" [label=""];
  "sha256:db19fca6d99bba0c41edf36b896f60128e24e1783e7b6ca70c1be9e173c2dc93" -> "sha256:5384e532c78422f6f60f1422824b02ad84967d33e83485b5ceebab8afcc29a3c" [label=""];
}

