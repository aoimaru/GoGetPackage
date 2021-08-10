[app/sources/158079478.Dockerfile]
digraph {
  "sha256:4a1464a88920856c9f237d0f8d8754e7be9f64842ebfeccea2d362acf4631943" [label="local://context" shape="ellipse"];
  "sha256:ef78c0b5ad1952c5397bf4f4618dd8e9867c3811bb9fcddf9b608abd4fe61bed" [label="copy{src=/localhost.crt, dest=/localhost.crt}" shape="note"];
  "sha256:28d1b94a2d3f97b4d90fb8a499bd6c4012c4c9842a836940934dcec39a4ce5ab" [label="copy{src=/localhost.key, dest=/localhost.key}" shape="note"];
  "sha256:c01e48577a25c072048a7f856a86062266188a570620a804f0c064dbd5c44ddf" [label="copy{src=/porter, dest=/porter}" shape="note"];
  "sha256:16d537042014ade1b804bba2fea48c57e76a81b81411a6a7be11baefa1515bd5" [label="sha256:16d537042014ade1b804bba2fea48c57e76a81b81411a6a7be11baefa1515bd5" shape="plaintext"];
  "sha256:4a1464a88920856c9f237d0f8d8754e7be9f64842ebfeccea2d362acf4631943" -> "sha256:ef78c0b5ad1952c5397bf4f4618dd8e9867c3811bb9fcddf9b608abd4fe61bed" [label=""];
  "sha256:ef78c0b5ad1952c5397bf4f4618dd8e9867c3811bb9fcddf9b608abd4fe61bed" -> "sha256:28d1b94a2d3f97b4d90fb8a499bd6c4012c4c9842a836940934dcec39a4ce5ab" [label=""];
  "sha256:4a1464a88920856c9f237d0f8d8754e7be9f64842ebfeccea2d362acf4631943" -> "sha256:28d1b94a2d3f97b4d90fb8a499bd6c4012c4c9842a836940934dcec39a4ce5ab" [label=""];
  "sha256:28d1b94a2d3f97b4d90fb8a499bd6c4012c4c9842a836940934dcec39a4ce5ab" -> "sha256:c01e48577a25c072048a7f856a86062266188a570620a804f0c064dbd5c44ddf" [label=""];
  "sha256:4a1464a88920856c9f237d0f8d8754e7be9f64842ebfeccea2d362acf4631943" -> "sha256:c01e48577a25c072048a7f856a86062266188a570620a804f0c064dbd5c44ddf" [label=""];
  "sha256:c01e48577a25c072048a7f856a86062266188a570620a804f0c064dbd5c44ddf" -> "sha256:16d537042014ade1b804bba2fea48c57e76a81b81411a6a7be11baefa1515bd5" [label=""];
}

