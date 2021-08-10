[app/sources/291962819.Dockerfile]
digraph {
  "sha256:496db3af86f57a248470499c2daae0a15b7aa6a5abcff7d3defc4ddb746a90c7" [label="local://context" shape="ellipse"];
  "sha256:17f3ede10f186c3995560f9cf2d0cc48cb44ef9d45cefb224b851d5ae63d9dcc" [label="copy{src=/ca-certificates.crt, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:791ce1e07d519b2a20410f53527828881a8d8d7ba549e52da4528b6f8351447a" [label="copy{src=/h2demo, dest=/}" shape="note"];
  "sha256:0640bd26e470abdaf61e7ec1fff49944c3a96b22b54f08c803442c8c8040cbc9" [label="sha256:0640bd26e470abdaf61e7ec1fff49944c3a96b22b54f08c803442c8c8040cbc9" shape="plaintext"];
  "sha256:496db3af86f57a248470499c2daae0a15b7aa6a5abcff7d3defc4ddb746a90c7" -> "sha256:17f3ede10f186c3995560f9cf2d0cc48cb44ef9d45cefb224b851d5ae63d9dcc" [label=""];
  "sha256:17f3ede10f186c3995560f9cf2d0cc48cb44ef9d45cefb224b851d5ae63d9dcc" -> "sha256:791ce1e07d519b2a20410f53527828881a8d8d7ba549e52da4528b6f8351447a" [label=""];
  "sha256:496db3af86f57a248470499c2daae0a15b7aa6a5abcff7d3defc4ddb746a90c7" -> "sha256:791ce1e07d519b2a20410f53527828881a8d8d7ba549e52da4528b6f8351447a" [label=""];
  "sha256:791ce1e07d519b2a20410f53527828881a8d8d7ba549e52da4528b6f8351447a" -> "sha256:0640bd26e470abdaf61e7ec1fff49944c3a96b22b54f08c803442c8c8040cbc9" [label=""];
}

