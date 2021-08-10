[app/sources/472185995.Dockerfile]
digraph {
  "sha256:6a6fa6f026fcd2a0c8593dc809c5465ad749da78442eae3a061b41965456c627" [label="docker-image://docker.io/library/fedora:23" shape="ellipse"];
  "sha256:461732f845f0b4d872f275923149563839db6bb80f1939d26ee6076b5ac16524" [label="/bin/sh -c dnf -y update && dnf clean all" shape="box"];
  "sha256:1443403963c88c773c836f90f214f1297987625339fdc53ea38c0ace98faf7ee" [label="/bin/sh -c dnf -y install     which findutils binutils gcc tar gzip     zip unzip java java-devel git clang zlib-devel     && dnf clean all" shape="box"];
  "sha256:1ecc22f75c395df56b8bf42a1505fef30b2b3aaa92eb4a6d2e6d282c31680d8f" [label="sha256:1ecc22f75c395df56b8bf42a1505fef30b2b3aaa92eb4a6d2e6d282c31680d8f" shape="plaintext"];
  "sha256:6a6fa6f026fcd2a0c8593dc809c5465ad749da78442eae3a061b41965456c627" -> "sha256:461732f845f0b4d872f275923149563839db6bb80f1939d26ee6076b5ac16524" [label=""];
  "sha256:461732f845f0b4d872f275923149563839db6bb80f1939d26ee6076b5ac16524" -> "sha256:1443403963c88c773c836f90f214f1297987625339fdc53ea38c0ace98faf7ee" [label=""];
  "sha256:1443403963c88c773c836f90f214f1297987625339fdc53ea38c0ace98faf7ee" -> "sha256:1ecc22f75c395df56b8bf42a1505fef30b2b3aaa92eb4a6d2e6d282c31680d8f" [label=""];
}

