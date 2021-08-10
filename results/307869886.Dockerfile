[app/sources/307869886.Dockerfile]
digraph {
  "sha256:d043971fd9e054fad5db7c3cd7ed5cf83f49e7e79f0034b59926a32845077538" [label="docker-image://docker.io/ericwf/builder-base:latest" shape="ellipse"];
  "sha256:d9773b21ec2b64d34d4b40b799fae75bf5ad0e52c2a5094c6fbc045743f09c08" [label="local://context" shape="ellipse"];
  "sha256:f1389d6dc4c6a52d20a426713fc5219b63a34085644ef325bbb33dabaffddf23" [label="copy{src=/scripts/build_llvm_version.sh, dest=/tmp/build_llvm_version.sh}" shape="note"];
  "sha256:2fc815902a49bf308ed9ff665a05ca1a0102ca385245b95a703ae3fe8be6805a" [label="/bin/sh -c /tmp/build_llvm_version.sh --install \"$install_prefix\" --branch \"$branch\"" shape="box"];
  "sha256:d0a1ee82546c53abeb5180d90f8f9957a4698d9c7cf4443dc64d1752d4926c88" [label="sha256:d0a1ee82546c53abeb5180d90f8f9957a4698d9c7cf4443dc64d1752d4926c88" shape="plaintext"];
  "sha256:d043971fd9e054fad5db7c3cd7ed5cf83f49e7e79f0034b59926a32845077538" -> "sha256:f1389d6dc4c6a52d20a426713fc5219b63a34085644ef325bbb33dabaffddf23" [label=""];
  "sha256:d9773b21ec2b64d34d4b40b799fae75bf5ad0e52c2a5094c6fbc045743f09c08" -> "sha256:f1389d6dc4c6a52d20a426713fc5219b63a34085644ef325bbb33dabaffddf23" [label=""];
  "sha256:f1389d6dc4c6a52d20a426713fc5219b63a34085644ef325bbb33dabaffddf23" -> "sha256:2fc815902a49bf308ed9ff665a05ca1a0102ca385245b95a703ae3fe8be6805a" [label=""];
  "sha256:2fc815902a49bf308ed9ff665a05ca1a0102ca385245b95a703ae3fe8be6805a" -> "sha256:d0a1ee82546c53abeb5180d90f8f9957a4698d9c7cf4443dc64d1752d4926c88" [label=""];
}

