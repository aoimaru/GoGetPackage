[app/sources/408752751.Dockerfile]
digraph {
  "sha256:480b8817157b285d4ca1d7de97c062c3a6aecbd45bd5225fb7dad31fc6381017" [label="docker-image://docker.io/library/cassandra:2.2" shape="ellipse"];
  "sha256:3583e868d8cc27e9dd642c95a48eedd789983bb705226ea8cc4a4e43b286423d" [label="local://context" shape="ellipse"];
  "sha256:12293b6e725fe241b19f55ee9041f5f0546834a2bbe73b9f1a2f56bb86334345" [label="copy{src=/contents, dest=/}" shape="note"];
  "sha256:04d440e343c7be6be00b18be78b31cce52c0b43e3686875dd50e47e8e5a97d2d" [label="sha256:04d440e343c7be6be00b18be78b31cce52c0b43e3686875dd50e47e8e5a97d2d" shape="plaintext"];
  "sha256:480b8817157b285d4ca1d7de97c062c3a6aecbd45bd5225fb7dad31fc6381017" -> "sha256:12293b6e725fe241b19f55ee9041f5f0546834a2bbe73b9f1a2f56bb86334345" [label=""];
  "sha256:3583e868d8cc27e9dd642c95a48eedd789983bb705226ea8cc4a4e43b286423d" -> "sha256:12293b6e725fe241b19f55ee9041f5f0546834a2bbe73b9f1a2f56bb86334345" [label=""];
  "sha256:12293b6e725fe241b19f55ee9041f5f0546834a2bbe73b9f1a2f56bb86334345" -> "sha256:04d440e343c7be6be00b18be78b31cce52c0b43e3686875dd50e47e8e5a97d2d" [label=""];
}

