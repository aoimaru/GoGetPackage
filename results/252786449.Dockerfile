[app/sources/252786449.Dockerfile]
digraph {
  "sha256:b54d6b125c86da04a9df6cf5de8d0b99eabb781eb3dc98082b5460145166f0e2" [label="docker-image://docker.io/library/php:7.0-alpine" shape="ellipse"];
  "sha256:5ef8898f5ebe06a41826956468b871ec3f5544ce15d04c0cc293eb802fb316ce" [label="local://context" shape="ellipse"];
  "sha256:8938eb8bc40ed9a83a68edf35a574581941135b665920c0c61b10a0646fa826f" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:71a53f3e8ba34a88e91e507879cfef156fa6224d9f4183649cc9da52b92ea559" [label="mkdir{path=/app}" shape="note"];
  "sha256:6fbc6b4bd32fd82d102316794f800ef47b7fc3ce50404390a8f00971c798bbc2" [label="sha256:6fbc6b4bd32fd82d102316794f800ef47b7fc3ce50404390a8f00971c798bbc2" shape="plaintext"];
  "sha256:b54d6b125c86da04a9df6cf5de8d0b99eabb781eb3dc98082b5460145166f0e2" -> "sha256:8938eb8bc40ed9a83a68edf35a574581941135b665920c0c61b10a0646fa826f" [label=""];
  "sha256:5ef8898f5ebe06a41826956468b871ec3f5544ce15d04c0cc293eb802fb316ce" -> "sha256:8938eb8bc40ed9a83a68edf35a574581941135b665920c0c61b10a0646fa826f" [label=""];
  "sha256:8938eb8bc40ed9a83a68edf35a574581941135b665920c0c61b10a0646fa826f" -> "sha256:71a53f3e8ba34a88e91e507879cfef156fa6224d9f4183649cc9da52b92ea559" [label=""];
  "sha256:71a53f3e8ba34a88e91e507879cfef156fa6224d9f4183649cc9da52b92ea559" -> "sha256:6fbc6b4bd32fd82d102316794f800ef47b7fc3ce50404390a8f00971c798bbc2" [label=""];
}

