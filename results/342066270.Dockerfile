[app/sources/342066270.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:b9fa7f73e8bd20984f5a6ac8595a7b00d42d7e13dde0d2c09212b3c6da9e1b9b" [label="local://context" shape="ellipse"];
  "sha256:1d53270b11fbdbaca729e7be566bcde7df74b0e291a801594cbe4fa0c9d74b3b" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:cd95df974ee89212a4881abc1ffe5bc43bbcd64908ee4ab5fe2771f253c72ff6" [label="pip install flask" shape="box"];
  "sha256:77b85df28fb4c4cc16be6928477f46ed80135f372303b5cb9abfd2a58d72ca43" [label="pip install flask" shape="box"];
  "sha256:8bd867226826f4c2431858674b2362f368d71a3685120e45b3e1fb470174f105" [label="sha256:8bd867226826f4c2431858674b2362f368d71a3685120e45b3e1fb470174f105" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:1d53270b11fbdbaca729e7be566bcde7df74b0e291a801594cbe4fa0c9d74b3b" [label=""];
  "sha256:b9fa7f73e8bd20984f5a6ac8595a7b00d42d7e13dde0d2c09212b3c6da9e1b9b" -> "sha256:1d53270b11fbdbaca729e7be566bcde7df74b0e291a801594cbe4fa0c9d74b3b" [label=""];
  "sha256:1d53270b11fbdbaca729e7be566bcde7df74b0e291a801594cbe4fa0c9d74b3b" -> "sha256:cd95df974ee89212a4881abc1ffe5bc43bbcd64908ee4ab5fe2771f253c72ff6" [label=""];
  "sha256:cd95df974ee89212a4881abc1ffe5bc43bbcd64908ee4ab5fe2771f253c72ff6" -> "sha256:77b85df28fb4c4cc16be6928477f46ed80135f372303b5cb9abfd2a58d72ca43" [label=""];
  "sha256:77b85df28fb4c4cc16be6928477f46ed80135f372303b5cb9abfd2a58d72ca43" -> "sha256:8bd867226826f4c2431858674b2362f368d71a3685120e45b3e1fb470174f105" [label=""];
}

