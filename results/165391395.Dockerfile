[app/sources/165391395.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:a1885aeec514e6ab0e998433b7e3603b5f5e4a2349497c7c9d13eae7b264d54e" [label="/bin/sh -c apt update -y &&   apt upgrade -y &&   apt install curl -y" shape="box"];
  "sha256:811c44dab5675110c6913a92e9266e02025b6fd43a4324143273f91c7482d0b7" [label="mkdir{path=/app}" shape="note"];
  "sha256:40395d421fafd2cb13ff81748aef0db37b09a0f060a59a0e41d4d1bb6a504554" [label="local://context" shape="ellipse"];
  "sha256:ebcdc1c476ebc4097021e94061559da106ba98247fdf995f9b701cc8878e12bf" [label="copy{src=/gh-md-toc, dest=/app/}" shape="note"];
  "sha256:2a2162007b8f0d6147abc75c3b39bd51deea1ea5e2713be335a71fe93512e9dc" [label="/bin/sh -c chmod +x gh-md-toc" shape="box"];
  "sha256:db52309f22aeb681ddb78738727854ec305bf155b8dbbfb88def375e4ab2e62c" [label="sha256:db52309f22aeb681ddb78738727854ec305bf155b8dbbfb88def375e4ab2e62c" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:a1885aeec514e6ab0e998433b7e3603b5f5e4a2349497c7c9d13eae7b264d54e" [label=""];
  "sha256:a1885aeec514e6ab0e998433b7e3603b5f5e4a2349497c7c9d13eae7b264d54e" -> "sha256:811c44dab5675110c6913a92e9266e02025b6fd43a4324143273f91c7482d0b7" [label=""];
  "sha256:811c44dab5675110c6913a92e9266e02025b6fd43a4324143273f91c7482d0b7" -> "sha256:ebcdc1c476ebc4097021e94061559da106ba98247fdf995f9b701cc8878e12bf" [label=""];
  "sha256:40395d421fafd2cb13ff81748aef0db37b09a0f060a59a0e41d4d1bb6a504554" -> "sha256:ebcdc1c476ebc4097021e94061559da106ba98247fdf995f9b701cc8878e12bf" [label=""];
  "sha256:ebcdc1c476ebc4097021e94061559da106ba98247fdf995f9b701cc8878e12bf" -> "sha256:2a2162007b8f0d6147abc75c3b39bd51deea1ea5e2713be335a71fe93512e9dc" [label=""];
  "sha256:2a2162007b8f0d6147abc75c3b39bd51deea1ea5e2713be335a71fe93512e9dc" -> "sha256:db52309f22aeb681ddb78738727854ec305bf155b8dbbfb88def375e4ab2e62c" [label=""];
}

