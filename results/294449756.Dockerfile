[app/sources/294449756.Dockerfile]
digraph {
  "sha256:f9e5b1bf9fb187e3b4b076e32f918f03bd5394a577cb25ad1aca7c892ca7dd0c" [label="docker-image://docker.io/metasfresh/metasfresh-db:5.108" shape="ellipse"];
  "sha256:4d63c0e3a3cd1b841ee4cb00d0f031d31e0f7a9e988bca1cd6553fbc2e3e912f" [label="/bin/sh -c localedef -i de_DE -c -f UTF-8 -A /usr/share/locale/locale.alias de_DE.UTF-8" shape="box"];
  "sha256:2a8390bccb7c37cc28d857e5e5c378c85d76016cfa041888075544f363033c5f" [label="/bin/sh -c localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8" shape="box"];
  "sha256:5fda8d39495afaf2248b00832b962573e8b377f5e634cb2e1ecda0f277d8397e" [label="sha256:5fda8d39495afaf2248b00832b962573e8b377f5e634cb2e1ecda0f277d8397e" shape="plaintext"];
  "sha256:f9e5b1bf9fb187e3b4b076e32f918f03bd5394a577cb25ad1aca7c892ca7dd0c" -> "sha256:4d63c0e3a3cd1b841ee4cb00d0f031d31e0f7a9e988bca1cd6553fbc2e3e912f" [label=""];
  "sha256:4d63c0e3a3cd1b841ee4cb00d0f031d31e0f7a9e988bca1cd6553fbc2e3e912f" -> "sha256:2a8390bccb7c37cc28d857e5e5c378c85d76016cfa041888075544f363033c5f" [label=""];
  "sha256:2a8390bccb7c37cc28d857e5e5c378c85d76016cfa041888075544f363033c5f" -> "sha256:5fda8d39495afaf2248b00832b962573e8b377f5e634cb2e1ecda0f277d8397e" [label=""];
}

