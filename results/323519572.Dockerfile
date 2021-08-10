[app/sources/323519572.Dockerfile]
digraph {
  "sha256:0c736d3ba4c5b7f6a1157d1e42e06323663133228cc97a3ccc9b5dc4290a1537" [label="docker-image://docker.io/library/python:3-alpine" shape="ellipse"];
  "sha256:14105a7c1ab3ad410a6c61b2bc68e6364d9ec4da82681da767eff57cefb538c3" [label="local://context" shape="ellipse"];
  "sha256:d01282770aab27fb0c30cc0e3645cfce8ce87a91090164c90a01c88cd6dfafe7" [label="copy{src=/requirements.txt, dest=/requirements.txt}" shape="note"];
  "sha256:d74433c3ad7c860867ff950cf7f0d2a81c2fa14b2574bd5a289425f2db2af9fd" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:b637bb1b1756cfd2511bd1deddd017e708ec7621fe313b19525a1517627e983c" [label="mkdir{path=/app}" shape="note"];
  "sha256:624e4b5317dcf167034e8aa0a58295a4ec88498fc3238e5d2482331dafbc4fbf" [label="copy{src=/auth-webhook.py, dest=/app/auth-webhook.py}" shape="note"];
  "sha256:80e04fc7b455cd37eb39aaadfe91d4be08e05a41806361a2c955c18385a1df23" [label="sha256:80e04fc7b455cd37eb39aaadfe91d4be08e05a41806361a2c955c18385a1df23" shape="plaintext"];
  "sha256:0c736d3ba4c5b7f6a1157d1e42e06323663133228cc97a3ccc9b5dc4290a1537" -> "sha256:d01282770aab27fb0c30cc0e3645cfce8ce87a91090164c90a01c88cd6dfafe7" [label=""];
  "sha256:14105a7c1ab3ad410a6c61b2bc68e6364d9ec4da82681da767eff57cefb538c3" -> "sha256:d01282770aab27fb0c30cc0e3645cfce8ce87a91090164c90a01c88cd6dfafe7" [label=""];
  "sha256:d01282770aab27fb0c30cc0e3645cfce8ce87a91090164c90a01c88cd6dfafe7" -> "sha256:d74433c3ad7c860867ff950cf7f0d2a81c2fa14b2574bd5a289425f2db2af9fd" [label=""];
  "sha256:d74433c3ad7c860867ff950cf7f0d2a81c2fa14b2574bd5a289425f2db2af9fd" -> "sha256:b637bb1b1756cfd2511bd1deddd017e708ec7621fe313b19525a1517627e983c" [label=""];
  "sha256:b637bb1b1756cfd2511bd1deddd017e708ec7621fe313b19525a1517627e983c" -> "sha256:624e4b5317dcf167034e8aa0a58295a4ec88498fc3238e5d2482331dafbc4fbf" [label=""];
  "sha256:14105a7c1ab3ad410a6c61b2bc68e6364d9ec4da82681da767eff57cefb538c3" -> "sha256:624e4b5317dcf167034e8aa0a58295a4ec88498fc3238e5d2482331dafbc4fbf" [label=""];
  "sha256:624e4b5317dcf167034e8aa0a58295a4ec88498fc3238e5d2482331dafbc4fbf" -> "sha256:80e04fc7b455cd37eb39aaadfe91d4be08e05a41806361a2c955c18385a1df23" [label=""];
}

