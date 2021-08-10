[app/sources/256069613.Dockerfile]
digraph {
  "sha256:6f8dff26936074b270e4c02a6b3c1215cc0a79157f2a3b4decca57e8a24d236a" [label="docker-image://docker.io/microsoft/aspnet:3.5" shape="ellipse"];
  "sha256:646ea31777ac7bd6f32c4504e8b32243bfeb5538d4223a18de2fb336e0a6e9d4" [label="local://context" shape="ellipse"];
  "sha256:dc6ee86f74d8a3f41e982d765e5aa214c94ed3bbcf6043229b1893ececdfacdc" [label="copy{src=/, dest=/inetpub/wwwroot}" shape="note"];
  "sha256:553a97a14db984ccb24a1d847ecf1ac3e7bdd376ed749ba5095746a5a7d31564" [label="sha256:553a97a14db984ccb24a1d847ecf1ac3e7bdd376ed749ba5095746a5a7d31564" shape="plaintext"];
  "sha256:6f8dff26936074b270e4c02a6b3c1215cc0a79157f2a3b4decca57e8a24d236a" -> "sha256:dc6ee86f74d8a3f41e982d765e5aa214c94ed3bbcf6043229b1893ececdfacdc" [label=""];
  "sha256:646ea31777ac7bd6f32c4504e8b32243bfeb5538d4223a18de2fb336e0a6e9d4" -> "sha256:dc6ee86f74d8a3f41e982d765e5aa214c94ed3bbcf6043229b1893ececdfacdc" [label=""];
  "sha256:dc6ee86f74d8a3f41e982d765e5aa214c94ed3bbcf6043229b1893ececdfacdc" -> "sha256:553a97a14db984ccb24a1d847ecf1ac3e7bdd376ed749ba5095746a5a7d31564" [label=""];
}

