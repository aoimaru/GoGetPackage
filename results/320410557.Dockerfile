[app/sources/320410557.Dockerfile]
digraph {
  "sha256:3e8b14c1ee67e93c6d965fbc7819462f4f1120944f41dafb7b2870f4fbb30dbe" [label="docker-image://docker.io/bitnami/minideb:jessie@sha256:095c0610f92c0d9ad329902d7a4989596c0ca28ebeefc844b2ec0ea5ce50a7d8" shape="ellipse"];
  "sha256:8fc2fa509911d21df7cf01a2b2cbc592d7cd40cc0180f2da1f26438250560eca" [label="local://context" shape="ellipse"];
  "sha256:a02070fde72ca886f6fb3d4fc7a46f8ad7eb71f74e1dec25a6a23fb3ec70284b" [label="copy{src=/kafka-controller, dest=/kafka-controller}" shape="note"];
  "sha256:708de95cdbb9a02fe87b7fc734a34872980f7a162916a8b9c429520c16fc5c36" [label="sha256:708de95cdbb9a02fe87b7fc734a34872980f7a162916a8b9c429520c16fc5c36" shape="plaintext"];
  "sha256:3e8b14c1ee67e93c6d965fbc7819462f4f1120944f41dafb7b2870f4fbb30dbe" -> "sha256:a02070fde72ca886f6fb3d4fc7a46f8ad7eb71f74e1dec25a6a23fb3ec70284b" [label=""];
  "sha256:8fc2fa509911d21df7cf01a2b2cbc592d7cd40cc0180f2da1f26438250560eca" -> "sha256:a02070fde72ca886f6fb3d4fc7a46f8ad7eb71f74e1dec25a6a23fb3ec70284b" [label=""];
  "sha256:a02070fde72ca886f6fb3d4fc7a46f8ad7eb71f74e1dec25a6a23fb3ec70284b" -> "sha256:708de95cdbb9a02fe87b7fc734a34872980f7a162916a8b9c429520c16fc5c36" [label=""];
}

