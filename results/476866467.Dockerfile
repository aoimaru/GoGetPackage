[app/sources/476866467.Dockerfile]
digraph {
  "sha256:6a6fa6f026fcd2a0c8593dc809c5465ad749da78442eae3a061b41965456c627" [label="docker-image://docker.io/library/fedora:23" shape="ellipse"];
  "sha256:e76cc604d60b1e6a856ebd6d417002a8022d551d8d2b0a0abe7f7e41830d47e0" [label="/bin/sh -c echo Hello > /marker" shape="box"];
  "sha256:14e23eb81defbc921c982f599202fddc0a1ad93bf9e93b8ea773bf2b6b6da52e" [label="sha256:14e23eb81defbc921c982f599202fddc0a1ad93bf9e93b8ea773bf2b6b6da52e" shape="plaintext"];
  "sha256:6a6fa6f026fcd2a0c8593dc809c5465ad749da78442eae3a061b41965456c627" -> "sha256:e76cc604d60b1e6a856ebd6d417002a8022d551d8d2b0a0abe7f7e41830d47e0" [label=""];
  "sha256:e76cc604d60b1e6a856ebd6d417002a8022d551d8d2b0a0abe7f7e41830d47e0" -> "sha256:14e23eb81defbc921c982f599202fddc0a1ad93bf9e93b8ea773bf2b6b6da52e" [label=""];
}

