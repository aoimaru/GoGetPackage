[app/sources/341904459.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:e0647c10f0441c3cd440dcd354f350cfd31b169dba3240f45edc1f4bad286133" [label="local://context" shape="ellipse"];
  "sha256:932bfb7f52020e1093d22aba7e4f20e53a386cfa3ace76b254dd9d085c272517" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:56359455eb1f47c8b45ecb79abd2ae3fdd1b04ad0331cb96fbbcaefbbf58faf2" [label="sha256:56359455eb1f47c8b45ecb79abd2ae3fdd1b04ad0331cb96fbbcaefbbf58faf2" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:932bfb7f52020e1093d22aba7e4f20e53a386cfa3ace76b254dd9d085c272517" [label=""];
  "sha256:e0647c10f0441c3cd440dcd354f350cfd31b169dba3240f45edc1f4bad286133" -> "sha256:932bfb7f52020e1093d22aba7e4f20e53a386cfa3ace76b254dd9d085c272517" [label=""];
  "sha256:932bfb7f52020e1093d22aba7e4f20e53a386cfa3ace76b254dd9d085c272517" -> "sha256:56359455eb1f47c8b45ecb79abd2ae3fdd1b04ad0331cb96fbbcaefbbf58faf2" [label=""];
}

