[app/sources/176029630.Dockerfile]
digraph {
  "sha256:2039ade92e97817839ceb8bd1166eaa2e56df9c18c530c974fe90b287fe8688c" [label="docker-image://docker.io/library/sentry:8.22" shape="ellipse"];
  "sha256:ceffdb25bfbd1cee300cde9a5694972b3047320f0d1e42f5abafbded2dbc96de" [label="local://context" shape="ellipse"];
  "sha256:feea6089568b2992a84796cdb6946ed020db185afc9c1d9258a27bb50e258d24" [label="copy{src=/append-sentry.conf.py, dest=/etc/sentry/}" shape="note"];
  "sha256:074ad8cb4dfc0acebd43abcaed37d4caa6ab40eb82e51837b32ed2573edf23b1" [label="/bin/sh -c pip install https://github.com/getsentry/sentry-auth-google/archive/52020f577f587595fea55f5d05520f1473deaad1.zip     && cd /etc/sentry     && cat append-sentry.conf.py >> sentry.conf.py     && rm append-sentry.conf.py" shape="box"];
  "sha256:32746a850380b4138119121ab905554db539bf93f6d66bbbe41d2db0a3e72d0f" [label="sha256:32746a850380b4138119121ab905554db539bf93f6d66bbbe41d2db0a3e72d0f" shape="plaintext"];
  "sha256:2039ade92e97817839ceb8bd1166eaa2e56df9c18c530c974fe90b287fe8688c" -> "sha256:feea6089568b2992a84796cdb6946ed020db185afc9c1d9258a27bb50e258d24" [label=""];
  "sha256:ceffdb25bfbd1cee300cde9a5694972b3047320f0d1e42f5abafbded2dbc96de" -> "sha256:feea6089568b2992a84796cdb6946ed020db185afc9c1d9258a27bb50e258d24" [label=""];
  "sha256:feea6089568b2992a84796cdb6946ed020db185afc9c1d9258a27bb50e258d24" -> "sha256:074ad8cb4dfc0acebd43abcaed37d4caa6ab40eb82e51837b32ed2573edf23b1" [label=""];
  "sha256:074ad8cb4dfc0acebd43abcaed37d4caa6ab40eb82e51837b32ed2573edf23b1" -> "sha256:32746a850380b4138119121ab905554db539bf93f6d66bbbe41d2db0a3e72d0f" [label=""];
}

