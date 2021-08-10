[app/sources/396948177.Dockerfile]
digraph {
  "sha256:536136d1e0d2aa10dd153d39cbffc75fe569b0a11daca4e64474607c9e113c58" [label="docker-image://docker.io/tutum/lamp:latest" shape="ellipse"];
  "sha256:2bc81f0c323aa42e0d4ae9909c895c8ec7094035d082b2ab77be08d01588f29a" [label="/bin/sh -c apt-get -y update && apt-get -y install gccgo-go" shape="box"];
  "sha256:a27ea03243221e9c517b7ae427a48cc84ea381049f2d298750e6cbfcc3096fea" [label="/bin/sh -c rm -rf /app && git clone https://github.com/gerryyang/goinaction.git /app" shape="box"];
  "sha256:57afcbf877e96dc855fecf73f03bea4e4c8b04513faf85f6eea27718cd6c4387" [label="/bin/sh -c cd /app/src/http && go build http_svr_v1.go" shape="box"];
  "sha256:ff6f004d581085de02ef55159e8d191fe9acde0c4bec3866377ad12c1286b79a" [label="local://context" shape="ellipse"];
  "sha256:baa73f4ef525385c674524d21cb23af252995b701b3c27f06bc334a51b80cf9b" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:5b890741e75cf0470ca3732ecd1a2479884dd7109ff2a12be654f2f0c8e83d06" [label="/bin/sh -c chmod 755 /*.sh" shape="box"];
  "sha256:f26906a5190d9837d105f11bfeff5c57da1ce3050c3b26539415f864a694fdd5" [label="sha256:f26906a5190d9837d105f11bfeff5c57da1ce3050c3b26539415f864a694fdd5" shape="plaintext"];
  "sha256:536136d1e0d2aa10dd153d39cbffc75fe569b0a11daca4e64474607c9e113c58" -> "sha256:2bc81f0c323aa42e0d4ae9909c895c8ec7094035d082b2ab77be08d01588f29a" [label=""];
  "sha256:2bc81f0c323aa42e0d4ae9909c895c8ec7094035d082b2ab77be08d01588f29a" -> "sha256:a27ea03243221e9c517b7ae427a48cc84ea381049f2d298750e6cbfcc3096fea" [label=""];
  "sha256:a27ea03243221e9c517b7ae427a48cc84ea381049f2d298750e6cbfcc3096fea" -> "sha256:57afcbf877e96dc855fecf73f03bea4e4c8b04513faf85f6eea27718cd6c4387" [label=""];
  "sha256:57afcbf877e96dc855fecf73f03bea4e4c8b04513faf85f6eea27718cd6c4387" -> "sha256:baa73f4ef525385c674524d21cb23af252995b701b3c27f06bc334a51b80cf9b" [label=""];
  "sha256:ff6f004d581085de02ef55159e8d191fe9acde0c4bec3866377ad12c1286b79a" -> "sha256:baa73f4ef525385c674524d21cb23af252995b701b3c27f06bc334a51b80cf9b" [label=""];
  "sha256:baa73f4ef525385c674524d21cb23af252995b701b3c27f06bc334a51b80cf9b" -> "sha256:5b890741e75cf0470ca3732ecd1a2479884dd7109ff2a12be654f2f0c8e83d06" [label=""];
  "sha256:5b890741e75cf0470ca3732ecd1a2479884dd7109ff2a12be654f2f0c8e83d06" -> "sha256:f26906a5190d9837d105f11bfeff5c57da1ce3050c3b26539415f864a694fdd5" [label=""];
}

