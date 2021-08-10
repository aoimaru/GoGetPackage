[app/sources/310173242.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:86c471a3f2297dbb4170814826c9b2ab57c11e174192dec7b9f036b66d4cb213" [label="local://context" shape="ellipse"];
  "sha256:4cb0e6ccc5f80030682e2ebd2c4f175764a80b4e7001870ad22c8153b3af9d70" [label="copy{src=/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:21891a7678db3907f947b86770b2b587b31decff4e0253db4b296fd4ffa14b1e" [label="sha256:21891a7678db3907f947b86770b2b587b31decff4e0253db4b296fd4ffa14b1e" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:4cb0e6ccc5f80030682e2ebd2c4f175764a80b4e7001870ad22c8153b3af9d70" [label=""];
  "sha256:86c471a3f2297dbb4170814826c9b2ab57c11e174192dec7b9f036b66d4cb213" -> "sha256:4cb0e6ccc5f80030682e2ebd2c4f175764a80b4e7001870ad22c8153b3af9d70" [label=""];
  "sha256:4cb0e6ccc5f80030682e2ebd2c4f175764a80b4e7001870ad22c8153b3af9d70" -> "sha256:21891a7678db3907f947b86770b2b587b31decff4e0253db4b296fd4ffa14b1e" [label=""];
}

