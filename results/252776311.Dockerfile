[app/sources/252776311.Dockerfile]
digraph {
  "sha256:65fb2585432088564f9c49d29ec8b6946867b4fad5a14f209f077aaf13853f3a" [label="docker-image://docker.io/library/python:latest" shape="ellipse"];
  "sha256:11defbe8a3734a5f50173500acc5ff0de216b65fb0b3b5593111f53a25188d41" [label="/bin/sh -c mkdir /code" shape="box"];
  "sha256:ec3f9c4ee39d3488b07b4ddfefea90622d7e4fe58e2c93876c2fe7ca78345dd5" [label="mkdir{path=/code}" shape="note"];
  "sha256:55a5608f87dca0cfb49ed965f41a145cfd4dfb39672d597c3853626bc65c1617" [label="local://context" shape="ellipse"];
  "sha256:6480ea363b0d594d2495c1d81f9db7a53ea18e8f61aa49dbbb82fa0fb2a2da77" [label="copy{src=/requirements.txt, dest=/code/}" shape="note"];
  "sha256:dd153841a0f016e0ec160c1d2f910247417e603a7d39a360647a7435cce852e4" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:358b1cc2431f94ea8b14b2656282c2d55e5312637e5b58428d29fa81473afcf2" [label="copy{src=/, dest=/code/}" shape="note"];
  "sha256:8f2e7114df43586265d03b3db8326f1ee563aba17cf80a64c8258df689fd8071" [label="/bin/sh -c python3 test/manage.py migrate" shape="box"];
  "sha256:7eb9173a693e2e5988d2026a6e34ee6f1c5ed7755601f1dda8bc8ca615caf182" [label="sha256:7eb9173a693e2e5988d2026a6e34ee6f1c5ed7755601f1dda8bc8ca615caf182" shape="plaintext"];
  "sha256:65fb2585432088564f9c49d29ec8b6946867b4fad5a14f209f077aaf13853f3a" -> "sha256:11defbe8a3734a5f50173500acc5ff0de216b65fb0b3b5593111f53a25188d41" [label=""];
  "sha256:11defbe8a3734a5f50173500acc5ff0de216b65fb0b3b5593111f53a25188d41" -> "sha256:ec3f9c4ee39d3488b07b4ddfefea90622d7e4fe58e2c93876c2fe7ca78345dd5" [label=""];
  "sha256:ec3f9c4ee39d3488b07b4ddfefea90622d7e4fe58e2c93876c2fe7ca78345dd5" -> "sha256:6480ea363b0d594d2495c1d81f9db7a53ea18e8f61aa49dbbb82fa0fb2a2da77" [label=""];
  "sha256:55a5608f87dca0cfb49ed965f41a145cfd4dfb39672d597c3853626bc65c1617" -> "sha256:6480ea363b0d594d2495c1d81f9db7a53ea18e8f61aa49dbbb82fa0fb2a2da77" [label=""];
  "sha256:6480ea363b0d594d2495c1d81f9db7a53ea18e8f61aa49dbbb82fa0fb2a2da77" -> "sha256:dd153841a0f016e0ec160c1d2f910247417e603a7d39a360647a7435cce852e4" [label=""];
  "sha256:dd153841a0f016e0ec160c1d2f910247417e603a7d39a360647a7435cce852e4" -> "sha256:358b1cc2431f94ea8b14b2656282c2d55e5312637e5b58428d29fa81473afcf2" [label=""];
  "sha256:55a5608f87dca0cfb49ed965f41a145cfd4dfb39672d597c3853626bc65c1617" -> "sha256:358b1cc2431f94ea8b14b2656282c2d55e5312637e5b58428d29fa81473afcf2" [label=""];
  "sha256:358b1cc2431f94ea8b14b2656282c2d55e5312637e5b58428d29fa81473afcf2" -> "sha256:8f2e7114df43586265d03b3db8326f1ee563aba17cf80a64c8258df689fd8071" [label=""];
  "sha256:8f2e7114df43586265d03b3db8326f1ee563aba17cf80a64c8258df689fd8071" -> "sha256:7eb9173a693e2e5988d2026a6e34ee6f1c5ed7755601f1dda8bc8ca615caf182" [label=""];
}

