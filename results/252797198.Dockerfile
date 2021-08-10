[app/sources/252797198.Dockerfile]
digraph {
  "sha256:03878c1b6cff099e2bee836bb8b2f694ad9967c9900786c15f46a356f8c031a3" [label="docker-image://docker.io/library/nginx:1.8.1-alpine" shape="ellipse"];
  "sha256:f863a4e7391de635e24882e145484f8c7b2bcb129f61561e3378c67586c6055c" [label="/bin/sh -c rm /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:c49fae30323e20d994c9a2638331dabfcf2d0ca798343cbe69f3c5bf56c0f119" [label="local://context" shape="ellipse"];
  "sha256:4c4717982e497728a452cdd8154eec944c9f7a3f57f5742a39f2fdbcc73fdd42" [label="copy{src=/bin/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:0d0594607123342b03efc9bd185cb80e70d7b3570bc7aaeb24f20a3e0f00f972" [label="copy{src=/etc/nginx.conf.tmpl, dest=/etc/nginx/}" shape="note"];
  "sha256:65423fdc98de3b6a8dee6c44521c4c5d0a97d6fbf89b14d72ba46fa78e535def" [label="copy{src=/etc/app.conf, dest=/etc/nginx/conf.d/}" shape="note"];
  "sha256:b075ef7bafdb93187c563d4d902ef41bd1b2addd67c389a42e721115298114a8" [label="sha256:b075ef7bafdb93187c563d4d902ef41bd1b2addd67c389a42e721115298114a8" shape="plaintext"];
  "sha256:03878c1b6cff099e2bee836bb8b2f694ad9967c9900786c15f46a356f8c031a3" -> "sha256:f863a4e7391de635e24882e145484f8c7b2bcb129f61561e3378c67586c6055c" [label=""];
  "sha256:f863a4e7391de635e24882e145484f8c7b2bcb129f61561e3378c67586c6055c" -> "sha256:4c4717982e497728a452cdd8154eec944c9f7a3f57f5742a39f2fdbcc73fdd42" [label=""];
  "sha256:c49fae30323e20d994c9a2638331dabfcf2d0ca798343cbe69f3c5bf56c0f119" -> "sha256:4c4717982e497728a452cdd8154eec944c9f7a3f57f5742a39f2fdbcc73fdd42" [label=""];
  "sha256:4c4717982e497728a452cdd8154eec944c9f7a3f57f5742a39f2fdbcc73fdd42" -> "sha256:0d0594607123342b03efc9bd185cb80e70d7b3570bc7aaeb24f20a3e0f00f972" [label=""];
  "sha256:c49fae30323e20d994c9a2638331dabfcf2d0ca798343cbe69f3c5bf56c0f119" -> "sha256:0d0594607123342b03efc9bd185cb80e70d7b3570bc7aaeb24f20a3e0f00f972" [label=""];
  "sha256:0d0594607123342b03efc9bd185cb80e70d7b3570bc7aaeb24f20a3e0f00f972" -> "sha256:65423fdc98de3b6a8dee6c44521c4c5d0a97d6fbf89b14d72ba46fa78e535def" [label=""];
  "sha256:c49fae30323e20d994c9a2638331dabfcf2d0ca798343cbe69f3c5bf56c0f119" -> "sha256:65423fdc98de3b6a8dee6c44521c4c5d0a97d6fbf89b14d72ba46fa78e535def" [label=""];
  "sha256:65423fdc98de3b6a8dee6c44521c4c5d0a97d6fbf89b14d72ba46fa78e535def" -> "sha256:b075ef7bafdb93187c563d4d902ef41bd1b2addd67c389a42e721115298114a8" [label=""];
}

