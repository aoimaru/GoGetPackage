[app/sources/179726968.Dockerfile]
digraph {
  "sha256:7ad6de479b381aebcc388805816cc794d8f228fb548c10a2ac09a0759aba5ae1" [label="local://context" shape="ellipse"];
  "sha256:e6da5158e491e23e4343393b14263b9329d8fcf61298d17baccf14d0f5c4fd22" [label="docker-image://docker.io/library/ubuntu:19.04" shape="ellipse"];
  "sha256:1ebf49652f957a30450d8b6a86188dd47eca7b961e96eaff16d036a5888adb37" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         curl ca-certificates         gcc libc6-dev         gcc-sparc64-linux-gnu libc6-dev-sparc64-cross         qemu-system-sparc64 openbios-sparc seabios ipxe-qemu         p7zip-full cpio linux-libc-dev-sparc64-cross" shape="box"];
  "sha256:923f757144780f29590d6a69e5115170b1d61707b929f629b1f826d34fc2d23e" [label="copy{src=/linux-sparc64.sh, dest=/}" shape="note"];
  "sha256:87d02cc04975b2b23cc330bcda20c9f252213f7e88d6da2e83d04f9039be6c97" [label="/bin/sh -c bash /linux-sparc64.sh" shape="box"];
  "sha256:f890553e015a08ce62c6990e2deb1b44acfa7718e87a7f877ecc59924fdd8260" [label="copy{src=/test-runner-linux, dest=/}" shape="note"];
  "sha256:055a6b0df80e687ae1823f2cf608bdf5433e4fe5bca966b2ec0c3502b80e34a3" [label="sha256:055a6b0df80e687ae1823f2cf608bdf5433e4fe5bca966b2ec0c3502b80e34a3" shape="plaintext"];
  "sha256:e6da5158e491e23e4343393b14263b9329d8fcf61298d17baccf14d0f5c4fd22" -> "sha256:1ebf49652f957a30450d8b6a86188dd47eca7b961e96eaff16d036a5888adb37" [label=""];
  "sha256:1ebf49652f957a30450d8b6a86188dd47eca7b961e96eaff16d036a5888adb37" -> "sha256:923f757144780f29590d6a69e5115170b1d61707b929f629b1f826d34fc2d23e" [label=""];
  "sha256:7ad6de479b381aebcc388805816cc794d8f228fb548c10a2ac09a0759aba5ae1" -> "sha256:923f757144780f29590d6a69e5115170b1d61707b929f629b1f826d34fc2d23e" [label=""];
  "sha256:923f757144780f29590d6a69e5115170b1d61707b929f629b1f826d34fc2d23e" -> "sha256:87d02cc04975b2b23cc330bcda20c9f252213f7e88d6da2e83d04f9039be6c97" [label=""];
  "sha256:87d02cc04975b2b23cc330bcda20c9f252213f7e88d6da2e83d04f9039be6c97" -> "sha256:f890553e015a08ce62c6990e2deb1b44acfa7718e87a7f877ecc59924fdd8260" [label=""];
  "sha256:7ad6de479b381aebcc388805816cc794d8f228fb548c10a2ac09a0759aba5ae1" -> "sha256:f890553e015a08ce62c6990e2deb1b44acfa7718e87a7f877ecc59924fdd8260" [label=""];
  "sha256:f890553e015a08ce62c6990e2deb1b44acfa7718e87a7f877ecc59924fdd8260" -> "sha256:055a6b0df80e687ae1823f2cf608bdf5433e4fe5bca966b2ec0c3502b80e34a3" [label=""];
}

