[app/sources/333677302.Dockerfile]
digraph {
  "sha256:f7c1a009de7bf06427317825797bbe8d0b9fd5701de94457267339313081f0da" [label="docker-image://docker.io/library/nginx:1.13.8" shape="ellipse"];
  "sha256:c9e452c4a85f54329ae4ed2baa2589e4f4d46a90466d417157d7596c520dff0e" [label="/bin/sh -c rm /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:f33fd1947fa472f1d2e2c9e5fc241e241deda9c82c0b92c0da20070f8007cd29" [label="local://context" shape="ellipse"];
  "sha256:8ddf499228e7dcf1514bb0f5e560a3ef05db171d57e294959869c3c6f4fab456" [label="copy{src=/prod.conf, dest=/etc/nginx/conf.d}" shape="note"];
  "sha256:6fd331b51e05c8afbc9c482fdb438ddc9cc59295da5a762f0d937728388992e6" [label="sha256:6fd331b51e05c8afbc9c482fdb438ddc9cc59295da5a762f0d937728388992e6" shape="plaintext"];
  "sha256:f7c1a009de7bf06427317825797bbe8d0b9fd5701de94457267339313081f0da" -> "sha256:c9e452c4a85f54329ae4ed2baa2589e4f4d46a90466d417157d7596c520dff0e" [label=""];
  "sha256:c9e452c4a85f54329ae4ed2baa2589e4f4d46a90466d417157d7596c520dff0e" -> "sha256:8ddf499228e7dcf1514bb0f5e560a3ef05db171d57e294959869c3c6f4fab456" [label=""];
  "sha256:f33fd1947fa472f1d2e2c9e5fc241e241deda9c82c0b92c0da20070f8007cd29" -> "sha256:8ddf499228e7dcf1514bb0f5e560a3ef05db171d57e294959869c3c6f4fab456" [label=""];
  "sha256:8ddf499228e7dcf1514bb0f5e560a3ef05db171d57e294959869c3c6f4fab456" -> "sha256:6fd331b51e05c8afbc9c482fdb438ddc9cc59295da5a762f0d937728388992e6" [label=""];
}

