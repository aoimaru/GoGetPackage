[app/sources/260824516.Dockerfile]
digraph {
  "sha256:824384f3badb1c9ba196768664dfa1bba47d306b5dce24f916b127aaf163d30a" [label="docker-image://docker.io/microsoft/dotnet:2-sdk-jessie" shape="ellipse"];
  "sha256:bf9192bb01aa229c945e49359738b9b27f182535efa6bcdf828c261d24f223a9" [label="mkdir{path=/app}" shape="note"];
  "sha256:fe707d99193dd65f9aa4552f5795422c6b5eeede5086becf170568d02f55b9a2" [label="local://context" shape="ellipse"];
  "sha256:c6c810cf370045ed5cd83766dfc7ece199e423d137369b1955b311c0b3dd2432" [label="copy{src=/obj/Docker/publish, dest=/app/}" shape="note"];
  "sha256:fbf524b32807b89dcdd4c050ae8d94e39c5a6a6e55bf626ec21b5826d1654310" [label="sha256:fbf524b32807b89dcdd4c050ae8d94e39c5a6a6e55bf626ec21b5826d1654310" shape="plaintext"];
  "sha256:824384f3badb1c9ba196768664dfa1bba47d306b5dce24f916b127aaf163d30a" -> "sha256:bf9192bb01aa229c945e49359738b9b27f182535efa6bcdf828c261d24f223a9" [label=""];
  "sha256:bf9192bb01aa229c945e49359738b9b27f182535efa6bcdf828c261d24f223a9" -> "sha256:c6c810cf370045ed5cd83766dfc7ece199e423d137369b1955b311c0b3dd2432" [label=""];
  "sha256:fe707d99193dd65f9aa4552f5795422c6b5eeede5086becf170568d02f55b9a2" -> "sha256:c6c810cf370045ed5cd83766dfc7ece199e423d137369b1955b311c0b3dd2432" [label=""];
  "sha256:c6c810cf370045ed5cd83766dfc7ece199e423d137369b1955b311c0b3dd2432" -> "sha256:fbf524b32807b89dcdd4c050ae8d94e39c5a6a6e55bf626ec21b5826d1654310" [label=""];
}

