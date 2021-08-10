[app/sources/165822539.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:79d3255ea297a26c2d0860f91c187fa4f4e883c5113bb0453125792ae7a4bc22" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:09cf9eb9dc6c691d2131e4cc558be2601f00b64a9c602c7c96b16c7ee8513705" [label="/bin/sh -c apt-get -y upgrade" shape="box"];
  "sha256:16c56da675b7737c90d0298db47513ee3c25579d247c8e226489b643823ff80c" [label="/bin/sh -c apt-get install -y nginx" shape="box"];
  "sha256:986cfba93bacdd9d20e64c2fc63a1d58367e9f1d5a061e3f6a0b6bf6eb91bfe8" [label="local://context" shape="ellipse"];
  "sha256:8bb6055cf9d98dc8b77c227e12ed39d21d5464a9ecfa595c3e6e6397312f1a5f" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:622518c53b1a175776cfb1444e8e56f5c90e387987b22a9e569b4f82245f42de" [label="/bin/sh -c apt-get install -y openbsd-inetd" shape="box"];
  "sha256:54015e19077c46b43509fdc0d67766d9d5e24d5e59a9854ad8130a79b80f92ce" [label="copy{src=/inetd.conf, dest=/etc/inetd.conf}" shape="note"];
  "sha256:ed3c87b3c276dd4f041814e1e5dfe46475ea57f4580e485e4c4fe26361bf686b" [label="sha256:ed3c87b3c276dd4f041814e1e5dfe46475ea57f4580e485e4c4fe26361bf686b" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:79d3255ea297a26c2d0860f91c187fa4f4e883c5113bb0453125792ae7a4bc22" [label=""];
  "sha256:79d3255ea297a26c2d0860f91c187fa4f4e883c5113bb0453125792ae7a4bc22" -> "sha256:09cf9eb9dc6c691d2131e4cc558be2601f00b64a9c602c7c96b16c7ee8513705" [label=""];
  "sha256:09cf9eb9dc6c691d2131e4cc558be2601f00b64a9c602c7c96b16c7ee8513705" -> "sha256:16c56da675b7737c90d0298db47513ee3c25579d247c8e226489b643823ff80c" [label=""];
  "sha256:16c56da675b7737c90d0298db47513ee3c25579d247c8e226489b643823ff80c" -> "sha256:8bb6055cf9d98dc8b77c227e12ed39d21d5464a9ecfa595c3e6e6397312f1a5f" [label=""];
  "sha256:986cfba93bacdd9d20e64c2fc63a1d58367e9f1d5a061e3f6a0b6bf6eb91bfe8" -> "sha256:8bb6055cf9d98dc8b77c227e12ed39d21d5464a9ecfa595c3e6e6397312f1a5f" [label=""];
  "sha256:8bb6055cf9d98dc8b77c227e12ed39d21d5464a9ecfa595c3e6e6397312f1a5f" -> "sha256:622518c53b1a175776cfb1444e8e56f5c90e387987b22a9e569b4f82245f42de" [label=""];
  "sha256:622518c53b1a175776cfb1444e8e56f5c90e387987b22a9e569b4f82245f42de" -> "sha256:54015e19077c46b43509fdc0d67766d9d5e24d5e59a9854ad8130a79b80f92ce" [label=""];
  "sha256:986cfba93bacdd9d20e64c2fc63a1d58367e9f1d5a061e3f6a0b6bf6eb91bfe8" -> "sha256:54015e19077c46b43509fdc0d67766d9d5e24d5e59a9854ad8130a79b80f92ce" [label=""];
  "sha256:54015e19077c46b43509fdc0d67766d9d5e24d5e59a9854ad8130a79b80f92ce" -> "sha256:ed3c87b3c276dd4f041814e1e5dfe46475ea57f4580e485e4c4fe26361bf686b" [label=""];
}

