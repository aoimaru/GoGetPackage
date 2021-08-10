[app/sources/430204251.Dockerfile]
digraph {
  "sha256:32c13510f8c289522d342918aff9635ac084428654ecb18142d16c3af8afaabc" [label="docker-image://docker.io/library/python:2" shape="ellipse"];
  "sha256:a0d99eb136fc83e48a02a502f805eb8703fcf740be1bca541d52d8f130f2562b" [label="local://context" shape="ellipse"];
  "sha256:7c89fd43fb3bb02655d6d1c9d97e085924d4a1935f91c9b7b58ddadb9d13b7f1" [label="copy{src=/test.py, dest=/opt/test.py}" shape="note"];
  "sha256:a71fbc5fc1b401556954b13b6d192ff08b720faafd738145817c221fad95af3b" [label="sha256:a71fbc5fc1b401556954b13b6d192ff08b720faafd738145817c221fad95af3b" shape="plaintext"];
  "sha256:32c13510f8c289522d342918aff9635ac084428654ecb18142d16c3af8afaabc" -> "sha256:7c89fd43fb3bb02655d6d1c9d97e085924d4a1935f91c9b7b58ddadb9d13b7f1" [label=""];
  "sha256:a0d99eb136fc83e48a02a502f805eb8703fcf740be1bca541d52d8f130f2562b" -> "sha256:7c89fd43fb3bb02655d6d1c9d97e085924d4a1935f91c9b7b58ddadb9d13b7f1" [label=""];
  "sha256:7c89fd43fb3bb02655d6d1c9d97e085924d4a1935f91c9b7b58ddadb9d13b7f1" -> "sha256:a71fbc5fc1b401556954b13b6d192ff08b720faafd738145817c221fad95af3b" [label=""];
}

