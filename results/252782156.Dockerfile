[app/sources/252782156.Dockerfile]
digraph {
  "sha256:6a6fa6f026fcd2a0c8593dc809c5465ad749da78442eae3a061b41965456c627" [label="docker-image://docker.io/library/fedora:23" shape="ellipse"];
  "sha256:c1eee3b3cd9f3c740e9eb17ef38a2b64068267a70d7e32f8e4bb3d3f8e871950" [label="/bin/sh -c dnf -y update" shape="box"];
  "sha256:c5f87289f9f415b0bb5f033ebc902f8f74ae8c10cc53d646c53ef41fd23b729e" [label="/bin/sh -c dnf -y install iproute tcpdump iperf bmon iputils bind-utils" shape="box"];
  "sha256:963d9cd3bc1721095c3c2bde4fbc01a663914357caa113063816890d5dab1bc8" [label="sha256:963d9cd3bc1721095c3c2bde4fbc01a663914357caa113063816890d5dab1bc8" shape="plaintext"];
  "sha256:6a6fa6f026fcd2a0c8593dc809c5465ad749da78442eae3a061b41965456c627" -> "sha256:c1eee3b3cd9f3c740e9eb17ef38a2b64068267a70d7e32f8e4bb3d3f8e871950" [label=""];
  "sha256:c1eee3b3cd9f3c740e9eb17ef38a2b64068267a70d7e32f8e4bb3d3f8e871950" -> "sha256:c5f87289f9f415b0bb5f033ebc902f8f74ae8c10cc53d646c53ef41fd23b729e" [label=""];
  "sha256:c5f87289f9f415b0bb5f033ebc902f8f74ae8c10cc53d646c53ef41fd23b729e" -> "sha256:963d9cd3bc1721095c3c2bde4fbc01a663914357caa113063816890d5dab1bc8" [label=""];
}

