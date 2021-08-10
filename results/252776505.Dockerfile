[app/sources/252776505.Dockerfile]
digraph {
  "sha256:5dcf14f7cbf71eaf7aae13860d5e94f7429c9fca62a3a47163a08d6af1490385" [label="docker-image://docker.io/library/python:2-alpine3.7" shape="ellipse"];
  "sha256:b54098833a78bbf090979fdf66817735a6b6d185f6fa6624ac4a2a171e6568a7" [label="/bin/sh -c pip install docker-py" shape="box"];
  "sha256:44a381b1bd128b6a9d823da9ef9cee2344d0660dcddf7b079553a2dc60d9490d" [label="local://context" shape="ellipse"];
  "sha256:caf53f660a7c01a67dab0a7ee8054fd96b82c5f1cc307ccc1b10040c494ef4b1" [label="copy{src=/volume-count.py, dest=/usr/bin/volume-count.py}" shape="note"];
  "sha256:0b65a9fc66ebd044720959349ea952f11707d0fb103cde9513430efd8a36fcb1" [label="sha256:0b65a9fc66ebd044720959349ea952f11707d0fb103cde9513430efd8a36fcb1" shape="plaintext"];
  "sha256:5dcf14f7cbf71eaf7aae13860d5e94f7429c9fca62a3a47163a08d6af1490385" -> "sha256:b54098833a78bbf090979fdf66817735a6b6d185f6fa6624ac4a2a171e6568a7" [label=""];
  "sha256:b54098833a78bbf090979fdf66817735a6b6d185f6fa6624ac4a2a171e6568a7" -> "sha256:caf53f660a7c01a67dab0a7ee8054fd96b82c5f1cc307ccc1b10040c494ef4b1" [label=""];
  "sha256:44a381b1bd128b6a9d823da9ef9cee2344d0660dcddf7b079553a2dc60d9490d" -> "sha256:caf53f660a7c01a67dab0a7ee8054fd96b82c5f1cc307ccc1b10040c494ef4b1" [label=""];
  "sha256:caf53f660a7c01a67dab0a7ee8054fd96b82c5f1cc307ccc1b10040c494ef4b1" -> "sha256:0b65a9fc66ebd044720959349ea952f11707d0fb103cde9513430efd8a36fcb1" [label=""];
}

