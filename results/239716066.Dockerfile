[app/sources/239716066.Dockerfile]
digraph {
  "sha256:9e68b8868d5b861da94467ca6a1e775865da49b50436e280b260905732d06cff" [label="local://context" shape="ellipse"];
  "sha256:8ebfbfbea68b15c9db95878f7c1d6bcb0a33e2bb82309687c25e544ac4da57d2" [label="docker-image://docker.io/egovio/flyway:4.1.2" shape="ellipse"];
  "sha256:34ba7935da3556869ed457b6c1ea55b0f0d53cb8f87aa8fa303320af39c3179e" [label="copy{src=/migration/main, dest=/flyway/sql}" shape="note"];
  "sha256:907d8bed76a0207333bb04ca8f153a365401d83dabd6c0e141da6c7797064455" [label="copy{src=/migration/seed, dest=/flyway/seed}" shape="note"];
  "sha256:24b04bfcbf88808c16add449580a76167e966d66c31d5f71fa3a4c2a79d9dd23" [label="copy{src=/migrate.sh, dest=/usr/bin/migrate.sh}" shape="note"];
  "sha256:b662a766a302afc9db811f2ade5520be78bb3ff70cd1f2d19f334dd9785369ec" [label="/bin/sh -c chmod +x /usr/bin/migrate.sh" shape="box"];
  "sha256:3ddfec24ce6e5bf244131e186e2005691258b0f90d6899fa3291e76b71cc94c5" [label="sha256:3ddfec24ce6e5bf244131e186e2005691258b0f90d6899fa3291e76b71cc94c5" shape="plaintext"];
  "sha256:8ebfbfbea68b15c9db95878f7c1d6bcb0a33e2bb82309687c25e544ac4da57d2" -> "sha256:34ba7935da3556869ed457b6c1ea55b0f0d53cb8f87aa8fa303320af39c3179e" [label=""];
  "sha256:9e68b8868d5b861da94467ca6a1e775865da49b50436e280b260905732d06cff" -> "sha256:34ba7935da3556869ed457b6c1ea55b0f0d53cb8f87aa8fa303320af39c3179e" [label=""];
  "sha256:34ba7935da3556869ed457b6c1ea55b0f0d53cb8f87aa8fa303320af39c3179e" -> "sha256:907d8bed76a0207333bb04ca8f153a365401d83dabd6c0e141da6c7797064455" [label=""];
  "sha256:9e68b8868d5b861da94467ca6a1e775865da49b50436e280b260905732d06cff" -> "sha256:907d8bed76a0207333bb04ca8f153a365401d83dabd6c0e141da6c7797064455" [label=""];
  "sha256:907d8bed76a0207333bb04ca8f153a365401d83dabd6c0e141da6c7797064455" -> "sha256:24b04bfcbf88808c16add449580a76167e966d66c31d5f71fa3a4c2a79d9dd23" [label=""];
  "sha256:9e68b8868d5b861da94467ca6a1e775865da49b50436e280b260905732d06cff" -> "sha256:24b04bfcbf88808c16add449580a76167e966d66c31d5f71fa3a4c2a79d9dd23" [label=""];
  "sha256:24b04bfcbf88808c16add449580a76167e966d66c31d5f71fa3a4c2a79d9dd23" -> "sha256:b662a766a302afc9db811f2ade5520be78bb3ff70cd1f2d19f334dd9785369ec" [label=""];
  "sha256:b662a766a302afc9db811f2ade5520be78bb3ff70cd1f2d19f334dd9785369ec" -> "sha256:3ddfec24ce6e5bf244131e186e2005691258b0f90d6899fa3291e76b71cc94c5" [label=""];
}

