[app/sources/341902260.Dockerfile]
digraph {
  "sha256:2d70ae867d2e6960c97c435efdcfc833e0bfcaad0384b097be6b17db4e23cabb" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:a67aad9695b369b20f9f20c2d1cadc8f13d89c0fab9e2794394c6b935d7457da" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:bb5660251a1a223b8678c5a1dbab19757f1e29fbda2c9b3de9fb9f8213558e2f" [label="pip install console" shape="box"];
  "sha256:48b7c15e0e37b1c1f7459c75188efe80b8c55d22c76a497a4f57ad1eaeda3241" [label="sha256:48b7c15e0e37b1c1f7459c75188efe80b8c55d22c76a497a4f57ad1eaeda3241" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:a67aad9695b369b20f9f20c2d1cadc8f13d89c0fab9e2794394c6b935d7457da" [label=""];
  "sha256:2d70ae867d2e6960c97c435efdcfc833e0bfcaad0384b097be6b17db4e23cabb" -> "sha256:a67aad9695b369b20f9f20c2d1cadc8f13d89c0fab9e2794394c6b935d7457da" [label=""];
  "sha256:a67aad9695b369b20f9f20c2d1cadc8f13d89c0fab9e2794394c6b935d7457da" -> "sha256:bb5660251a1a223b8678c5a1dbab19757f1e29fbda2c9b3de9fb9f8213558e2f" [label=""];
  "sha256:bb5660251a1a223b8678c5a1dbab19757f1e29fbda2c9b3de9fb9f8213558e2f" -> "sha256:48b7c15e0e37b1c1f7459c75188efe80b8c55d22c76a497a4f57ad1eaeda3241" [label=""];
}

