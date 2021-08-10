[app/sources/252778374.Dockerfile]
digraph {
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" [label="docker-image://docker.io/library/mysql:5.7" shape="ellipse"];
  "sha256:e00e9d9a06d30c9ecfb1acafe35ddc4544e7c52d316f160849a2137aa41d7d91" [label="local://context" shape="ellipse"];
  "sha256:f92f74b3e5e39b9c1413d4b526a87a69272c8afdda35ae402f666e08d4836305" [label="copy{src=/low-memory-my.cnf, dest=/etc/mysql/my.cnf}" shape="note"];
  "sha256:7bc3f9a4ec43f23987377257dd1ecf72a8e6e32d9ab42e3ef704f5847f7b0991" [label="sha256:7bc3f9a4ec43f23987377257dd1ecf72a8e6e32d9ab42e3ef704f5847f7b0991" shape="plaintext"];
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" -> "sha256:f92f74b3e5e39b9c1413d4b526a87a69272c8afdda35ae402f666e08d4836305" [label=""];
  "sha256:e00e9d9a06d30c9ecfb1acafe35ddc4544e7c52d316f160849a2137aa41d7d91" -> "sha256:f92f74b3e5e39b9c1413d4b526a87a69272c8afdda35ae402f666e08d4836305" [label=""];
  "sha256:f92f74b3e5e39b9c1413d4b526a87a69272c8afdda35ae402f666e08d4836305" -> "sha256:7bc3f9a4ec43f23987377257dd1ecf72a8e6e32d9ab42e3ef704f5847f7b0991" [label=""];
}

