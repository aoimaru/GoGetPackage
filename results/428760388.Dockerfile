[app/sources/428760388.Dockerfile]
digraph {
  "sha256:1a5f0c73070d650a8eda7ab3eee52f5cbdcbde49ee5cb562ea94a3c171d9ad69" [label="docker-image://docker.io/library/node:7" shape="ellipse"];
  "sha256:9fcde9da17d8032af231ca9ee3fa07b634a8973befd7e99a92f2b30a12567952" [label="local://context" shape="ellipse"];
  "sha256:b60e48f75528bb7d11866968d81870a391b3c70cff5df9e983e09bdea69128bf" [label="copy{src=/app.js, dest=/app.js}" shape="note"];
  "sha256:cd9e92d1c0b1f3db572039a49cf2156b74422431c942fd86f53118c06ba19989" [label="sha256:cd9e92d1c0b1f3db572039a49cf2156b74422431c942fd86f53118c06ba19989" shape="plaintext"];
  "sha256:1a5f0c73070d650a8eda7ab3eee52f5cbdcbde49ee5cb562ea94a3c171d9ad69" -> "sha256:b60e48f75528bb7d11866968d81870a391b3c70cff5df9e983e09bdea69128bf" [label=""];
  "sha256:9fcde9da17d8032af231ca9ee3fa07b634a8973befd7e99a92f2b30a12567952" -> "sha256:b60e48f75528bb7d11866968d81870a391b3c70cff5df9e983e09bdea69128bf" [label=""];
  "sha256:b60e48f75528bb7d11866968d81870a391b3c70cff5df9e983e09bdea69128bf" -> "sha256:cd9e92d1c0b1f3db572039a49cf2156b74422431c942fd86f53118c06ba19989" [label=""];
}

