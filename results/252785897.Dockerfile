[app/sources/252785897.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:d1b0ea922e74bdda4cf626eee64a773c70ab344722f44ecd785d719eb5965bbd" [label="/bin/sh -c pip install flask" shape="box"];
  "sha256:46690cdd87b75cafea86e159df4f879a93e81c89cfe94e9f9538e04cce72aebb" [label="local://context" shape="ellipse"];
  "sha256:9fb683e4e6d80b0d9b1f47e8bfbfcdaf77ae896d72cddd643021bcd743203e4b" [label="copy{src=/app.py, dest=/app/}" shape="note"];
  "sha256:641b7ca29442bb63029b14c4a00b1bc1c738a61b5802f452c40e089e14a1fa00" [label="sha256:641b7ca29442bb63029b14c4a00b1bc1c738a61b5802f452c40e089e14a1fa00" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:d1b0ea922e74bdda4cf626eee64a773c70ab344722f44ecd785d719eb5965bbd" [label=""];
  "sha256:d1b0ea922e74bdda4cf626eee64a773c70ab344722f44ecd785d719eb5965bbd" -> "sha256:9fb683e4e6d80b0d9b1f47e8bfbfcdaf77ae896d72cddd643021bcd743203e4b" [label=""];
  "sha256:46690cdd87b75cafea86e159df4f879a93e81c89cfe94e9f9538e04cce72aebb" -> "sha256:9fb683e4e6d80b0d9b1f47e8bfbfcdaf77ae896d72cddd643021bcd743203e4b" [label=""];
  "sha256:9fb683e4e6d80b0d9b1f47e8bfbfcdaf77ae896d72cddd643021bcd743203e4b" -> "sha256:641b7ca29442bb63029b14c4a00b1bc1c738a61b5802f452c40e089e14a1fa00" [label=""];
}

