[app/sources/285663729.Dockerfile]
digraph {
  "sha256:361f77107c8ad232f83312c1f5399f6b3cafe0a9750cbd992f2b94687ae1db3f" [label="local://context" shape="ellipse"];
  "sha256:c9bd6d36ef4ff75a72ac6ce0c6890ec82f0520f1175b07f26520feef8069571b" [label="copy{src=/goproxy, dest=/goproxy}" shape="note"];
  "sha256:531d30453a573759a0c6f462f5a1f5734509705ff8a8a8ff6b1de97879133fb5" [label="sha256:531d30453a573759a0c6f462f5a1f5734509705ff8a8a8ff6b1de97879133fb5" shape="plaintext"];
  "sha256:361f77107c8ad232f83312c1f5399f6b3cafe0a9750cbd992f2b94687ae1db3f" -> "sha256:c9bd6d36ef4ff75a72ac6ce0c6890ec82f0520f1175b07f26520feef8069571b" [label=""];
  "sha256:c9bd6d36ef4ff75a72ac6ce0c6890ec82f0520f1175b07f26520feef8069571b" -> "sha256:531d30453a573759a0c6f462f5a1f5734509705ff8a8a8ff6b1de97879133fb5" [label=""];
}

