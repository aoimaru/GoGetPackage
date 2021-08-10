[app/sources/231287834.Dockerfile]
digraph {
  "sha256:a582998c16d728aeda3beafbe0c7ecbc39c767b6ec1a1cbcc4864593507a6615" [label="docker-image://docker.io/library/strato-build:latest" shape="ellipse"];
  "sha256:2bd125bc1a80b896d0a6609d86fe128443e82284fe6ef54d2ca2ecf14a882ec0" [label="/bin/sh -c wget -P /usr/src/ http://kernel.org/pub/linux/utils/net/iproute2/iproute2-${VERSION}.tar.xz" shape="box"];
  "sha256:e487f5420ed6e04d074aaa0f32dfa0350c5cba29eb9fa5069f99d9cfad8d8f2e" [label="/bin/sh -c cd /usr/src/ && tar xf iproute2*" shape="box"];
  "sha256:ab8fa2e50a5e9120803bd77eba7df6307cd8759307a70fdb8118c2ec883f829b" [label="/bin/sh -c cd /usr/src/iproute2*     && ./configure     --prefix=/usr     --sysconfdir=/etc     --mandir=/usr/share/man     --localstatedir=/var     && make" shape="box"];
  "sha256:d8d81dddc236ae0950f7213fdd5637a67363e611eb486d31cf7184e459cd75bd" [label="/bin/sh -c cd /usr/src/iproute2*     && make install" shape="box"];
  "sha256:9bca39b5408a3088f596dc5ca66bd3b4287f0fa21fef8ab67f7809d0721dcbe5" [label="sha256:9bca39b5408a3088f596dc5ca66bd3b4287f0fa21fef8ab67f7809d0721dcbe5" shape="plaintext"];
  "sha256:a582998c16d728aeda3beafbe0c7ecbc39c767b6ec1a1cbcc4864593507a6615" -> "sha256:2bd125bc1a80b896d0a6609d86fe128443e82284fe6ef54d2ca2ecf14a882ec0" [label=""];
  "sha256:2bd125bc1a80b896d0a6609d86fe128443e82284fe6ef54d2ca2ecf14a882ec0" -> "sha256:e487f5420ed6e04d074aaa0f32dfa0350c5cba29eb9fa5069f99d9cfad8d8f2e" [label=""];
  "sha256:e487f5420ed6e04d074aaa0f32dfa0350c5cba29eb9fa5069f99d9cfad8d8f2e" -> "sha256:ab8fa2e50a5e9120803bd77eba7df6307cd8759307a70fdb8118c2ec883f829b" [label=""];
  "sha256:ab8fa2e50a5e9120803bd77eba7df6307cd8759307a70fdb8118c2ec883f829b" -> "sha256:d8d81dddc236ae0950f7213fdd5637a67363e611eb486d31cf7184e459cd75bd" [label=""];
  "sha256:d8d81dddc236ae0950f7213fdd5637a67363e611eb486d31cf7184e459cd75bd" -> "sha256:9bca39b5408a3088f596dc5ca66bd3b4287f0fa21fef8ab67f7809d0721dcbe5" [label=""];
}

