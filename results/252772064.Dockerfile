[app/sources/252772064.Dockerfile]
digraph {
  "sha256:e116edc5dab954560bf7d6b4ac0f92f1b99d49c2cd2d8f90650839ea12cf9eb9" [label="docker-image://docker.io/sstarcher/statsite:latest" shape="ellipse"];
  "sha256:22219101905e19c26b951d6ba2dfe7474ec288b2e72bc04873026f1341f4b0dd" [label="/bin/sh -c apt-get update && apt-get install -y python-pip python-dev build-essential" shape="box"];
  "sha256:c2eac17b801bd2e22a5a5ad36ce18d141e42d5b7ab2fc319ffcb06c1346c288f" [label="/bin/sh -c pip install riak" shape="box"];
  "sha256:9c2239256d392cc82ed28ab6b8102a96a7ffacb69fdc7f709d4fcbbafff55065" [label="local://context" shape="ellipse"];
  "sha256:7a3604ed0005e76153d3baecc676e9160bde689e3e9af8fbc90e3c14036d1e93" [label="copy{src=/riak-ts.py, dest=/}" shape="note"];
  "sha256:bca765ecb89c3af4fd1b1303e77b7d8972437a3e7a516e087e3448ae3211e7d4" [label="copy{src=/statsite.conf.tmpl, dest=/conf}" shape="note"];
  "sha256:a8273cdf307cfb506ac54756d738d4463ca2bf10832ae1b61c982ee56ca338a2" [label="sha256:a8273cdf307cfb506ac54756d738d4463ca2bf10832ae1b61c982ee56ca338a2" shape="plaintext"];
  "sha256:e116edc5dab954560bf7d6b4ac0f92f1b99d49c2cd2d8f90650839ea12cf9eb9" -> "sha256:22219101905e19c26b951d6ba2dfe7474ec288b2e72bc04873026f1341f4b0dd" [label=""];
  "sha256:22219101905e19c26b951d6ba2dfe7474ec288b2e72bc04873026f1341f4b0dd" -> "sha256:c2eac17b801bd2e22a5a5ad36ce18d141e42d5b7ab2fc319ffcb06c1346c288f" [label=""];
  "sha256:c2eac17b801bd2e22a5a5ad36ce18d141e42d5b7ab2fc319ffcb06c1346c288f" -> "sha256:7a3604ed0005e76153d3baecc676e9160bde689e3e9af8fbc90e3c14036d1e93" [label=""];
  "sha256:9c2239256d392cc82ed28ab6b8102a96a7ffacb69fdc7f709d4fcbbafff55065" -> "sha256:7a3604ed0005e76153d3baecc676e9160bde689e3e9af8fbc90e3c14036d1e93" [label=""];
  "sha256:7a3604ed0005e76153d3baecc676e9160bde689e3e9af8fbc90e3c14036d1e93" -> "sha256:bca765ecb89c3af4fd1b1303e77b7d8972437a3e7a516e087e3448ae3211e7d4" [label=""];
  "sha256:9c2239256d392cc82ed28ab6b8102a96a7ffacb69fdc7f709d4fcbbafff55065" -> "sha256:bca765ecb89c3af4fd1b1303e77b7d8972437a3e7a516e087e3448ae3211e7d4" [label=""];
  "sha256:bca765ecb89c3af4fd1b1303e77b7d8972437a3e7a516e087e3448ae3211e7d4" -> "sha256:a8273cdf307cfb506ac54756d738d4463ca2bf10832ae1b61c982ee56ca338a2" [label=""];
}

