[app/sources/252765802.Dockerfile]
digraph {
  "sha256:02c3751636f63d7ff4aa29fdc2e044f008eff8640c4075ebfe8a12dcfdbc2271" [label="local://context" shape="ellipse"];
  "sha256:e23e5c3dcbd1e01e9cd85546ff5b21a4390484f07b375e5607042660a4f812fa" [label="copy{src=/main, dest=/app/}" shape="note"];
  "sha256:4a243b1f84bb99a5c15cb7ef8cb9bbc3eec2fe22cf02d1adbfca51d18320a919" [label="copy{src=/templates, dest=/app/templates}" shape="note"];
  "sha256:aada9050f2fe6d7e32828d667c9fc1da4eb4baa5e835c75fc0bac3a192f54b6d" [label="mkdir{path=/app}" shape="note"];
  "sha256:ddb766f206c40d84622346d3734f716824aed8326b8e1e3c793728b70b0e2261" [label="sha256:ddb766f206c40d84622346d3734f716824aed8326b8e1e3c793728b70b0e2261" shape="plaintext"];
  "sha256:02c3751636f63d7ff4aa29fdc2e044f008eff8640c4075ebfe8a12dcfdbc2271" -> "sha256:e23e5c3dcbd1e01e9cd85546ff5b21a4390484f07b375e5607042660a4f812fa" [label=""];
  "sha256:e23e5c3dcbd1e01e9cd85546ff5b21a4390484f07b375e5607042660a4f812fa" -> "sha256:4a243b1f84bb99a5c15cb7ef8cb9bbc3eec2fe22cf02d1adbfca51d18320a919" [label=""];
  "sha256:02c3751636f63d7ff4aa29fdc2e044f008eff8640c4075ebfe8a12dcfdbc2271" -> "sha256:4a243b1f84bb99a5c15cb7ef8cb9bbc3eec2fe22cf02d1adbfca51d18320a919" [label=""];
  "sha256:4a243b1f84bb99a5c15cb7ef8cb9bbc3eec2fe22cf02d1adbfca51d18320a919" -> "sha256:aada9050f2fe6d7e32828d667c9fc1da4eb4baa5e835c75fc0bac3a192f54b6d" [label=""];
  "sha256:aada9050f2fe6d7e32828d667c9fc1da4eb4baa5e835c75fc0bac3a192f54b6d" -> "sha256:ddb766f206c40d84622346d3734f716824aed8326b8e1e3c793728b70b0e2261" [label=""];
}

