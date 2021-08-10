[app/sources/482483347.Dockerfile]
digraph {
  "sha256:2ab116027a0bdf78df1414f504eb8d0255c9fe48f92f51e05022dd9f0cfd4060" [label="docker-image://docker.io/microsoft/aspnetcore:1.1" shape="ellipse"];
  "sha256:eb6a6641d7cb61decf1dbcd799278d7b21a50fbf483443889730ca3b6cb37ee3" [label="mkdir{path=/app}" shape="note"];
  "sha256:278d88155b1eb3c72911095bf11d12f59716147104f0570317fe644a9cdeadf8" [label="local://context" shape="ellipse"];
  "sha256:4942fbc983d81cb24348a87f399a2d898326fbfa939b558ee2f4bf6fa53c4637" [label="copy{src=/obj/Docker/publish, dest=/app/}" shape="note"];
  "sha256:dea5a1229583d34cd8bb965610943d298ad1b3a21c3c8f7ee39237f52b548c8f" [label="sha256:dea5a1229583d34cd8bb965610943d298ad1b3a21c3c8f7ee39237f52b548c8f" shape="plaintext"];
  "sha256:2ab116027a0bdf78df1414f504eb8d0255c9fe48f92f51e05022dd9f0cfd4060" -> "sha256:eb6a6641d7cb61decf1dbcd799278d7b21a50fbf483443889730ca3b6cb37ee3" [label=""];
  "sha256:eb6a6641d7cb61decf1dbcd799278d7b21a50fbf483443889730ca3b6cb37ee3" -> "sha256:4942fbc983d81cb24348a87f399a2d898326fbfa939b558ee2f4bf6fa53c4637" [label=""];
  "sha256:278d88155b1eb3c72911095bf11d12f59716147104f0570317fe644a9cdeadf8" -> "sha256:4942fbc983d81cb24348a87f399a2d898326fbfa939b558ee2f4bf6fa53c4637" [label=""];
  "sha256:4942fbc983d81cb24348a87f399a2d898326fbfa939b558ee2f4bf6fa53c4637" -> "sha256:dea5a1229583d34cd8bb965610943d298ad1b3a21c3c8f7ee39237f52b548c8f" [label=""];
}

