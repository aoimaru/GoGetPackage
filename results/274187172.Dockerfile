[app/sources/274187172.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:141dba42743009e630e6671163770883e727cede97acbaba3290ea47227ab994" [label="local://context" shape="ellipse"];
  "sha256:152c1498e69d2ad657467e6d2c01d5facf53a4dc3783a4536aedd80b4fcbcc22" [label="copy{src=/mcp-api, dest=/}" shape="note"];
  "sha256:78e3bf735043ebc29bb7f98681a5b940133ae83a880d70c47f1d5cdbcea42186" [label="sha256:78e3bf735043ebc29bb7f98681a5b940133ae83a880d70c47f1d5cdbcea42186" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:152c1498e69d2ad657467e6d2c01d5facf53a4dc3783a4536aedd80b4fcbcc22" [label=""];
  "sha256:141dba42743009e630e6671163770883e727cede97acbaba3290ea47227ab994" -> "sha256:152c1498e69d2ad657467e6d2c01d5facf53a4dc3783a4536aedd80b4fcbcc22" [label=""];
  "sha256:152c1498e69d2ad657467e6d2c01d5facf53a4dc3783a4536aedd80b4fcbcc22" -> "sha256:78e3bf735043ebc29bb7f98681a5b940133ae83a880d70c47f1d5cdbcea42186" [label=""];
}

