[app/sources/342068540.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:8d7f75ff7229d6ce14b4d3cbb570ac66e5acc2302b69e2bef5e615dad5ed1504" [label="local://context" shape="ellipse"];
  "sha256:7e56d9b9434218cb79dfc32a67dcaa885f52117a1e0223b086e2ec3a79a8d0cd" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:ca12c03fc51dd97b8ace56f448553b7f821697760a4acbc984c9e9fe89c14493" [label="pip install requests" shape="box"];
  "sha256:d23baedf85c5eb46a19e1d309ec5fe50d540a17611b95b8f9fd908988eb41f9e" [label="sha256:d23baedf85c5eb46a19e1d309ec5fe50d540a17611b95b8f9fd908988eb41f9e" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:7e56d9b9434218cb79dfc32a67dcaa885f52117a1e0223b086e2ec3a79a8d0cd" [label=""];
  "sha256:8d7f75ff7229d6ce14b4d3cbb570ac66e5acc2302b69e2bef5e615dad5ed1504" -> "sha256:7e56d9b9434218cb79dfc32a67dcaa885f52117a1e0223b086e2ec3a79a8d0cd" [label=""];
  "sha256:7e56d9b9434218cb79dfc32a67dcaa885f52117a1e0223b086e2ec3a79a8d0cd" -> "sha256:ca12c03fc51dd97b8ace56f448553b7f821697760a4acbc984c9e9fe89c14493" [label=""];
  "sha256:ca12c03fc51dd97b8ace56f448553b7f821697760a4acbc984c9e9fe89c14493" -> "sha256:d23baedf85c5eb46a19e1d309ec5fe50d540a17611b95b8f9fd908988eb41f9e" [label=""];
}

