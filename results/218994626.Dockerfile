[app/sources/218994626.Dockerfile]
digraph {
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" [label="docker-image://docker.io/library/ubuntu:18.10" shape="ellipse"];
  "sha256:df6bccc2607f7231072c79f3e55ad40a2cbadcf8c84b369a934f338366f2b1c9" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends     ca-certificates     curl     cmake     gcc     libc6-dev     g++-s390x-linux-gnu     libc6-dev-s390x-cross     qemu-user     make     file" shape="box"];
  "sha256:c8accfb41a9b79449103917e9758d013efb49d0d71ed848622e08b16c8cefa8e" [label="sha256:c8accfb41a9b79449103917e9758d013efb49d0d71ed848622e08b16c8cefa8e" shape="plaintext"];
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" -> "sha256:df6bccc2607f7231072c79f3e55ad40a2cbadcf8c84b369a934f338366f2b1c9" [label=""];
  "sha256:df6bccc2607f7231072c79f3e55ad40a2cbadcf8c84b369a934f338366f2b1c9" -> "sha256:c8accfb41a9b79449103917e9758d013efb49d0d71ed848622e08b16c8cefa8e" [label=""];
}

