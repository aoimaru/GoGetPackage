[app/sources/341903864.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:c4c2279cb209b06016b4bb7c50480d52be9c1c141fe45a2adf2515cea021a795" [label="local://context" shape="ellipse"];
  "sha256:fa693d0f87f82efde340de48d456a041f1ea8951926e0677052cea32c059b1e3" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:4fc2caeb2c55c4e45e73b7a0cb1e6e0d295ce50e4815647fd84c7dc2d1fe4418" [label="pip install nltk" shape="box"];
  "sha256:d86d9fbf667ed52ee1ba964c5788e1f2f9fe6136586aaa77ea11c21011e7fdf4" [label="pip install nltk" shape="box"];
  "sha256:6ef13a2462d1b62445d10bc3e9c4f44ed3ccbc86b2d60642e27277cf2ec3802d" [label="pip install nltk" shape="box"];
  "sha256:026602cdc23ee2760c42c8b3b95ec715b6189fdadc9078b990da6cafecf548b0" [label="pip install nltk" shape="box"];
  "sha256:81e16abdfe9e7cb3a3b863d6ea7f2440946cc17bfa89c6e933bd9607a68c0a35" [label="sha256:81e16abdfe9e7cb3a3b863d6ea7f2440946cc17bfa89c6e933bd9607a68c0a35" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:fa693d0f87f82efde340de48d456a041f1ea8951926e0677052cea32c059b1e3" [label=""];
  "sha256:c4c2279cb209b06016b4bb7c50480d52be9c1c141fe45a2adf2515cea021a795" -> "sha256:fa693d0f87f82efde340de48d456a041f1ea8951926e0677052cea32c059b1e3" [label=""];
  "sha256:fa693d0f87f82efde340de48d456a041f1ea8951926e0677052cea32c059b1e3" -> "sha256:4fc2caeb2c55c4e45e73b7a0cb1e6e0d295ce50e4815647fd84c7dc2d1fe4418" [label=""];
  "sha256:4fc2caeb2c55c4e45e73b7a0cb1e6e0d295ce50e4815647fd84c7dc2d1fe4418" -> "sha256:d86d9fbf667ed52ee1ba964c5788e1f2f9fe6136586aaa77ea11c21011e7fdf4" [label=""];
  "sha256:d86d9fbf667ed52ee1ba964c5788e1f2f9fe6136586aaa77ea11c21011e7fdf4" -> "sha256:6ef13a2462d1b62445d10bc3e9c4f44ed3ccbc86b2d60642e27277cf2ec3802d" [label=""];
  "sha256:6ef13a2462d1b62445d10bc3e9c4f44ed3ccbc86b2d60642e27277cf2ec3802d" -> "sha256:026602cdc23ee2760c42c8b3b95ec715b6189fdadc9078b990da6cafecf548b0" [label=""];
  "sha256:026602cdc23ee2760c42c8b3b95ec715b6189fdadc9078b990da6cafecf548b0" -> "sha256:81e16abdfe9e7cb3a3b863d6ea7f2440946cc17bfa89c6e933bd9607a68c0a35" [label=""];
}

