[app/sources/401208868.Dockerfile]
digraph {
  "sha256:21f6a2045375d6409a8eff7dea3f1c903ca5081f52383d24a77c099a355fc4a0" [label="docker-image://docker.io/opensuse/python:latest" shape="ellipse"];
  "sha256:8289c76f76d7642bb75a657b68f13c7bbde6dc31aa7412672513ae30c13dfaf6" [label="/bin/sh -c useradd -m daniel" shape="box"];
  "sha256:2eec6e5ab5328a20c1942f9ef6fdebf1628413215e7d37d66f609a6c092e859b" [label="sha256:2eec6e5ab5328a20c1942f9ef6fdebf1628413215e7d37d66f609a6c092e859b" shape="plaintext"];
  "sha256:21f6a2045375d6409a8eff7dea3f1c903ca5081f52383d24a77c099a355fc4a0" -> "sha256:8289c76f76d7642bb75a657b68f13c7bbde6dc31aa7412672513ae30c13dfaf6" [label=""];
  "sha256:8289c76f76d7642bb75a657b68f13c7bbde6dc31aa7412672513ae30c13dfaf6" -> "sha256:2eec6e5ab5328a20c1942f9ef6fdebf1628413215e7d37d66f609a6c092e859b" [label=""];
}

