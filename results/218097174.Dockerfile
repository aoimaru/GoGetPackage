[app/sources/218097174.Dockerfile]
digraph {
  "sha256:1573a92e29dfcd5731b2581aa0ee88ebd4d2a7db366ed06a4c93d127cc68dc64" [label="docker-image://docker.io/accupara/qt5:linux" shape="ellipse"];
  "sha256:34cfc5a9a603d547f3c9989e139668913ff88b95214f138a4d445128b0b05f35" [label="/bin/sh -c sudo apt-get update" shape="box"];
  "sha256:ace211213819ff94acd79d0b775981c08a8bb7c1f32e3537fd60f908051640e8" [label="/bin/sh -c sudo apt-get install -y         libqtwebkit-dev         libqt5webkit5-dev         libtelepathy-qt5-dev         perl         qt5-default" shape="box"];
  "sha256:d7d4fee91837ab892c745d53542dff1bb6d047b5d5e2fece5a6141bd90187b55" [label="sha256:d7d4fee91837ab892c745d53542dff1bb6d047b5d5e2fece5a6141bd90187b55" shape="plaintext"];
  "sha256:1573a92e29dfcd5731b2581aa0ee88ebd4d2a7db366ed06a4c93d127cc68dc64" -> "sha256:34cfc5a9a603d547f3c9989e139668913ff88b95214f138a4d445128b0b05f35" [label=""];
  "sha256:34cfc5a9a603d547f3c9989e139668913ff88b95214f138a4d445128b0b05f35" -> "sha256:ace211213819ff94acd79d0b775981c08a8bb7c1f32e3537fd60f908051640e8" [label=""];
  "sha256:ace211213819ff94acd79d0b775981c08a8bb7c1f32e3537fd60f908051640e8" -> "sha256:d7d4fee91837ab892c745d53542dff1bb6d047b5d5e2fece5a6141bd90187b55" [label=""];
}

