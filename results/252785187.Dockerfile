[app/sources/252785187.Dockerfile]
digraph {
  "sha256:946935cddf9259dd58e4d7a3c76840014d23b1a9a0ecdadee89ea14805ec4b35" [label="docker-image://docker.io/library/python:2.7-onbuild" shape="ellipse"];
  "sha256:b1609fe78f818513b03c3381b4442807622a96977d5876e55293e490145f07ac" [label="/bin/sh -c pip install ." shape="box"];
  "sha256:a8eca1439ada9513cd5a3aec773ea4add19afc16a2648dd9a84d267aefb7216c" [label="sha256:a8eca1439ada9513cd5a3aec773ea4add19afc16a2648dd9a84d267aefb7216c" shape="plaintext"];
  "sha256:946935cddf9259dd58e4d7a3c76840014d23b1a9a0ecdadee89ea14805ec4b35" -> "sha256:b1609fe78f818513b03c3381b4442807622a96977d5876e55293e490145f07ac" [label=""];
  "sha256:b1609fe78f818513b03c3381b4442807622a96977d5876e55293e490145f07ac" -> "sha256:a8eca1439ada9513cd5a3aec773ea4add19afc16a2648dd9a84d267aefb7216c" [label=""];
}

