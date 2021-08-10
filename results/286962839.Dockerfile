[app/sources/286962839.Dockerfile]
digraph {
  "sha256:32c13510f8c289522d342918aff9635ac084428654ecb18142d16c3af8afaabc" [label="docker-image://docker.io/library/python:2" shape="ellipse"];
  "sha256:a84b5f73bff041808784f135d436173565279da82f6b2f152ee47334e10f6e90" [label="mkdir{path=/src}" shape="note"];
  "sha256:8b2d52015f2b8826824d9c691857aafda579062c78fe676f24276178d18998ae" [label="local://context" shape="ellipse"];
  "sha256:fdbc13d5af8942ec28fbb6c007e1f5a9067bb9406b28665ceb015b9342afdbd1" [label="copy{src=/requirements.txt, dest=/src/}" shape="note"];
  "sha256:608b18ee5ffe495beab01e3039a79aaafd86f9b2e1274f62cb4a7c99febe32c9" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:46b6c6a8def128167413efdee4ab4eb2bfb30a2cee1d2a5a33b3d7c75e711c6b" [label="copy{src=/local_aes, dest=/src/}" shape="note"];
  "sha256:6ff18adcc947aa8de1ad211ea0251bff621b267dc5e01a18f075668004a31ea2" [label="sha256:6ff18adcc947aa8de1ad211ea0251bff621b267dc5e01a18f075668004a31ea2" shape="plaintext"];
  "sha256:32c13510f8c289522d342918aff9635ac084428654ecb18142d16c3af8afaabc" -> "sha256:a84b5f73bff041808784f135d436173565279da82f6b2f152ee47334e10f6e90" [label=""];
  "sha256:a84b5f73bff041808784f135d436173565279da82f6b2f152ee47334e10f6e90" -> "sha256:fdbc13d5af8942ec28fbb6c007e1f5a9067bb9406b28665ceb015b9342afdbd1" [label=""];
  "sha256:8b2d52015f2b8826824d9c691857aafda579062c78fe676f24276178d18998ae" -> "sha256:fdbc13d5af8942ec28fbb6c007e1f5a9067bb9406b28665ceb015b9342afdbd1" [label=""];
  "sha256:fdbc13d5af8942ec28fbb6c007e1f5a9067bb9406b28665ceb015b9342afdbd1" -> "sha256:608b18ee5ffe495beab01e3039a79aaafd86f9b2e1274f62cb4a7c99febe32c9" [label=""];
  "sha256:608b18ee5ffe495beab01e3039a79aaafd86f9b2e1274f62cb4a7c99febe32c9" -> "sha256:46b6c6a8def128167413efdee4ab4eb2bfb30a2cee1d2a5a33b3d7c75e711c6b" [label=""];
  "sha256:8b2d52015f2b8826824d9c691857aafda579062c78fe676f24276178d18998ae" -> "sha256:46b6c6a8def128167413efdee4ab4eb2bfb30a2cee1d2a5a33b3d7c75e711c6b" [label=""];
  "sha256:46b6c6a8def128167413efdee4ab4eb2bfb30a2cee1d2a5a33b3d7c75e711c6b" -> "sha256:6ff18adcc947aa8de1ad211ea0251bff621b267dc5e01a18f075668004a31ea2" [label=""];
}

