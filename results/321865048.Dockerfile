[app/sources/321865048.Dockerfile]
digraph {
  "sha256:4478693d9753495e361295754c566606b7736ef803dc9da8e67d71cf1c04d77d" [label="local://context" shape="ellipse"];
  "sha256:a45b1b76fd42e7c5a2b9259d6cc7429c6e0dfa22d7f4e3a096804e02297c92c3" [label="docker-image://docker.io/library/python:3.6.8-stretch" shape="ellipse"];
  "sha256:f0471c64827d7b43ee9dc896d314197d37d27f08f3a3c5bcdc653c3e1d04078e" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:92cf592a2212bcab857749068aa42703b578a81af7295e58d08a60856e434212" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:6a64daa2ec4fb8904eb82a2120c826e41bb95b07a987f53370c8e5936610dcb4" [label="copy{src=/generate_synthetic_events.py, dest=/}" shape="note"];
  "sha256:ba4f57bbcf5269996cb665e2b760cd753d68d9478599ef6c73ae8d3059433ebe" [label="sha256:ba4f57bbcf5269996cb665e2b760cd753d68d9478599ef6c73ae8d3059433ebe" shape="plaintext"];
  "sha256:a45b1b76fd42e7c5a2b9259d6cc7429c6e0dfa22d7f4e3a096804e02297c92c3" -> "sha256:f0471c64827d7b43ee9dc896d314197d37d27f08f3a3c5bcdc653c3e1d04078e" [label=""];
  "sha256:4478693d9753495e361295754c566606b7736ef803dc9da8e67d71cf1c04d77d" -> "sha256:f0471c64827d7b43ee9dc896d314197d37d27f08f3a3c5bcdc653c3e1d04078e" [label=""];
  "sha256:f0471c64827d7b43ee9dc896d314197d37d27f08f3a3c5bcdc653c3e1d04078e" -> "sha256:92cf592a2212bcab857749068aa42703b578a81af7295e58d08a60856e434212" [label=""];
  "sha256:92cf592a2212bcab857749068aa42703b578a81af7295e58d08a60856e434212" -> "sha256:6a64daa2ec4fb8904eb82a2120c826e41bb95b07a987f53370c8e5936610dcb4" [label=""];
  "sha256:4478693d9753495e361295754c566606b7736ef803dc9da8e67d71cf1c04d77d" -> "sha256:6a64daa2ec4fb8904eb82a2120c826e41bb95b07a987f53370c8e5936610dcb4" [label=""];
  "sha256:6a64daa2ec4fb8904eb82a2120c826e41bb95b07a987f53370c8e5936610dcb4" -> "sha256:ba4f57bbcf5269996cb665e2b760cd753d68d9478599ef6c73ae8d3059433ebe" [label=""];
}

