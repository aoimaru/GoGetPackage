[app/sources/460084122.Dockerfile]
digraph {
  "sha256:52c2f3c6b559e2ccbc92ad86fbadd056bc978327a1466173ec786731318c0fb3" [label="local://context" shape="ellipse"];
  "sha256:c43ee1d7bf14343055bb95f85193ffb495aa748d564e8048db154a967cbcafe0" [label="copy{src=/ca-certificates.crt, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:18af21b8c62ff7dc7290e9fa4f76985dcd40257bb86ba2505b0212fcf98f423c" [label="copy{src=/h2demo, dest=/}" shape="note"];
  "sha256:23ffc56fe92dcfdbf605e58c08cca3978d1abd63290388843eb19765fbe6954b" [label="sha256:23ffc56fe92dcfdbf605e58c08cca3978d1abd63290388843eb19765fbe6954b" shape="plaintext"];
  "sha256:52c2f3c6b559e2ccbc92ad86fbadd056bc978327a1466173ec786731318c0fb3" -> "sha256:c43ee1d7bf14343055bb95f85193ffb495aa748d564e8048db154a967cbcafe0" [label=""];
  "sha256:c43ee1d7bf14343055bb95f85193ffb495aa748d564e8048db154a967cbcafe0" -> "sha256:18af21b8c62ff7dc7290e9fa4f76985dcd40257bb86ba2505b0212fcf98f423c" [label=""];
  "sha256:52c2f3c6b559e2ccbc92ad86fbadd056bc978327a1466173ec786731318c0fb3" -> "sha256:18af21b8c62ff7dc7290e9fa4f76985dcd40257bb86ba2505b0212fcf98f423c" [label=""];
  "sha256:18af21b8c62ff7dc7290e9fa4f76985dcd40257bb86ba2505b0212fcf98f423c" -> "sha256:23ffc56fe92dcfdbf605e58c08cca3978d1abd63290388843eb19765fbe6954b" [label=""];
}

