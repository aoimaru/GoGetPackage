[app/sources/140141372.Dockerfile]
digraph {
  "sha256:e6da5158e491e23e4343393b14263b9329d8fcf61298d17baccf14d0f5c4fd22" [label="docker-image://docker.io/library/ubuntu:19.04" shape="ellipse"];
  "sha256:a9d791ad6effd15dad89ebdd8732df393e197719b1307f0a9ada725231909b4e" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   g++   make   file   curl   ca-certificates   python2.7   python2.7-dev   libxml2-dev   libncurses-dev   libedit-dev   swig   doxygen   git   cmake   sudo   gdb   xz-utils   lld   clang" shape="box"];
  "sha256:c9069e050f4681c96baed31735856a26a76bfdb4d6a9b4ffdd4c3afa5e9c1a08" [label="local://context" shape="ellipse"];
  "sha256:39b3955362f0748020ae06017e520cb0416571b90a670e983a37c7dc903147d0" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:2178bf5e4ecd7ca72ac0a9736e743b7ed9956351048d9d8aa3fb3e00c7d4ebc0" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:93bae170e67a64a6843f3b62927bcc426d7418c2fd7c09d5b419ccea967b3b23" [label="sha256:93bae170e67a64a6843f3b62927bcc426d7418c2fd7c09d5b419ccea967b3b23" shape="plaintext"];
  "sha256:e6da5158e491e23e4343393b14263b9329d8fcf61298d17baccf14d0f5c4fd22" -> "sha256:a9d791ad6effd15dad89ebdd8732df393e197719b1307f0a9ada725231909b4e" [label=""];
  "sha256:a9d791ad6effd15dad89ebdd8732df393e197719b1307f0a9ada725231909b4e" -> "sha256:39b3955362f0748020ae06017e520cb0416571b90a670e983a37c7dc903147d0" [label=""];
  "sha256:c9069e050f4681c96baed31735856a26a76bfdb4d6a9b4ffdd4c3afa5e9c1a08" -> "sha256:39b3955362f0748020ae06017e520cb0416571b90a670e983a37c7dc903147d0" [label=""];
  "sha256:39b3955362f0748020ae06017e520cb0416571b90a670e983a37c7dc903147d0" -> "sha256:2178bf5e4ecd7ca72ac0a9736e743b7ed9956351048d9d8aa3fb3e00c7d4ebc0" [label=""];
  "sha256:2178bf5e4ecd7ca72ac0a9736e743b7ed9956351048d9d8aa3fb3e00c7d4ebc0" -> "sha256:93bae170e67a64a6843f3b62927bcc426d7418c2fd7c09d5b419ccea967b3b23" [label=""];
}

