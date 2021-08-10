[app/sources/252792874.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:6578b6619bf553869c702b05063846b78a2324858c51ea62b8dfac7d7dc8dd2a" [label="local://context" shape="ellipse"];
  "sha256:e5b3bada205b334546c094b08e2be0bc25efd6abfd859d40d7a9f2762f291a12" [label="copy{src=/, dest=/dest}" shape="note"];
  "sha256:66969e9094a55586d25164687b4be50232c6875ef10facd6484214087f159846" [label="sha256:66969e9094a55586d25164687b4be50232c6875ef10facd6484214087f159846" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:e5b3bada205b334546c094b08e2be0bc25efd6abfd859d40d7a9f2762f291a12" [label=""];
  "sha256:6578b6619bf553869c702b05063846b78a2324858c51ea62b8dfac7d7dc8dd2a" -> "sha256:e5b3bada205b334546c094b08e2be0bc25efd6abfd859d40d7a9f2762f291a12" [label=""];
  "sha256:e5b3bada205b334546c094b08e2be0bc25efd6abfd859d40d7a9f2762f291a12" -> "sha256:66969e9094a55586d25164687b4be50232c6875ef10facd6484214087f159846" [label=""];
}

