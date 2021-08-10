[app/sources/252790356.Dockerfile]
digraph {
  "sha256:a14a505bfed7bacf948da017f99e6fafe889fe296504b815674fd31375fa51a9" [label="local://context" shape="ellipse"];
  "sha256:32c13510f8c289522d342918aff9635ac084428654ecb18142d16c3af8afaabc" [label="docker-image://docker.io/library/python:2" shape="ellipse"];
  "sha256:e2944589b454bc7962b974ee7a3edf78dfd3e92f8eda2c56f87bd900ec78fc8f" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:bef4c499b308bb0f58b77280afe676f6164aeefd355f654e1741333ab1aac884" [label="copy{src=/requirements.txt, dest=/usr/src/app/}" shape="note"];
  "sha256:d6917777a6152410f68e62487092b200a8df0a95b09bab894f6b330af2f0cbf1" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:2320ca290436e96d5914aa45b2d7b9c9e68fcea101429392c9a86662d2646ce3" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:4485f512493209214890da2c82b91bb7391c12c37e6cd3c4d46288c1c10d1549" [label="sha256:4485f512493209214890da2c82b91bb7391c12c37e6cd3c4d46288c1c10d1549" shape="plaintext"];
  "sha256:32c13510f8c289522d342918aff9635ac084428654ecb18142d16c3af8afaabc" -> "sha256:e2944589b454bc7962b974ee7a3edf78dfd3e92f8eda2c56f87bd900ec78fc8f" [label=""];
  "sha256:e2944589b454bc7962b974ee7a3edf78dfd3e92f8eda2c56f87bd900ec78fc8f" -> "sha256:bef4c499b308bb0f58b77280afe676f6164aeefd355f654e1741333ab1aac884" [label=""];
  "sha256:a14a505bfed7bacf948da017f99e6fafe889fe296504b815674fd31375fa51a9" -> "sha256:bef4c499b308bb0f58b77280afe676f6164aeefd355f654e1741333ab1aac884" [label=""];
  "sha256:bef4c499b308bb0f58b77280afe676f6164aeefd355f654e1741333ab1aac884" -> "sha256:d6917777a6152410f68e62487092b200a8df0a95b09bab894f6b330af2f0cbf1" [label=""];
  "sha256:d6917777a6152410f68e62487092b200a8df0a95b09bab894f6b330af2f0cbf1" -> "sha256:2320ca290436e96d5914aa45b2d7b9c9e68fcea101429392c9a86662d2646ce3" [label=""];
  "sha256:a14a505bfed7bacf948da017f99e6fafe889fe296504b815674fd31375fa51a9" -> "sha256:2320ca290436e96d5914aa45b2d7b9c9e68fcea101429392c9a86662d2646ce3" [label=""];
  "sha256:2320ca290436e96d5914aa45b2d7b9c9e68fcea101429392c9a86662d2646ce3" -> "sha256:4485f512493209214890da2c82b91bb7391c12c37e6cd3c4d46288c1c10d1549" [label=""];
}

