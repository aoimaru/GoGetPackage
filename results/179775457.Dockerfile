[app/sources/179775457.Dockerfile]
digraph {
  "sha256:325a00b6922a2f77b4fbaa5d04d730c8a4077d31ce49278e164ffb13dff4ebe7" [label="docker-image://docker.io/hakobera/locust:latest" shape="ellipse"];
  "sha256:6adb89ca9179646d072d882df610b9de886642795a03f34bdb3b97be2e44288c" [label="local://context" shape="ellipse"];
  "sha256:85f553114e9b9d425f78d138a65078dab2dcd2ce837ef5c23d61ac476fd78616" [label="copy{src=/test, dest=/test}" shape="note"];
  "sha256:45f2766682fc5b8e8c62172369189653dcf7e2c6e8e78f045df6caea5ad1c1e4" [label="sha256:45f2766682fc5b8e8c62172369189653dcf7e2c6e8e78f045df6caea5ad1c1e4" shape="plaintext"];
  "sha256:325a00b6922a2f77b4fbaa5d04d730c8a4077d31ce49278e164ffb13dff4ebe7" -> "sha256:85f553114e9b9d425f78d138a65078dab2dcd2ce837ef5c23d61ac476fd78616" [label=""];
  "sha256:6adb89ca9179646d072d882df610b9de886642795a03f34bdb3b97be2e44288c" -> "sha256:85f553114e9b9d425f78d138a65078dab2dcd2ce837ef5c23d61ac476fd78616" [label=""];
  "sha256:85f553114e9b9d425f78d138a65078dab2dcd2ce837ef5c23d61ac476fd78616" -> "sha256:45f2766682fc5b8e8c62172369189653dcf7e2c6e8e78f045df6caea5ad1c1e4" [label=""];
}

