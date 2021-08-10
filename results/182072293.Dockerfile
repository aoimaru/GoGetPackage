[app/sources/182072293.Dockerfile]
digraph {
  "sha256:327315b3489655c095862c1da1f535b30883a73f1e5d81e73d5858f3725cc472" [label="docker-image://launcher.gcr.io/google/debian9:latest@sha256:8fdb64ef397b81b86fc8a6920045fd277e07d1838885a3b68d5b4dab42822a8b" shape="ellipse"];
  "sha256:c60e932e3bddbd56648bff59a89337808dca9a1b3fc71a1159479e591ab1f409" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends binutils &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:243fd58a71d5478cb5a316512d39d387b7080a119dd8a28a6be9cfb312753594" [label="local://context" shape="ellipse"];
  "sha256:9ea618bacb2e992d337d394fcbd0c66eff7409e9ca7de1159d884ce663b0ff24" [label="/bin/sh -c grep deb /etc/apt/sources.list |     sed 's/^deb/deb-src /g' >> /etc/apt/sources.list" shape="box"];
  "sha256:6dc76e9a68780452ce772cdd18cd368526210fe40515650741ab2004454d6ad9" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends ca-certificates gnupg            build-essential python wget git unzip ninja-build cmake &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:89582255de109b97b0ca846e03dbe4d2e661039dcf53098ee31a496203828b18" [label="copy{src=/source, dest=/tmp/clang-build/src}" shape="note"];
  "sha256:64a849e2ceda3e0dfabc070cbfce064d12062f47cefbd5aec52a1d9322938461" [label="copy{src=/checksums, dest=/tmp/checksums}" shape="note"];
  "sha256:8bb0c250193822928fe3ba7199b8a9c88d4b51e2135e53e88dec53074a99864c" [label="copy{src=/scripts, dest=/tmp/scripts}" shape="note"];
  "sha256:9a842998eeada19a2d8695aca480d4cb3d997ba69d3c719c3d313ba26d76fda6" [label="/bin/sh -c /tmp/scripts/build_install_llvm.sh --to /tmp/clang-install ${buildscript_args}" shape="box"];
  "sha256:62a3feda8fa72c916af52008282b3ba8c5a2d9b6f256f24ab41ed916181d62f5" [label="copy{src=/tmp/clang-install, dest=/usr/local/}" shape="note"];
  "sha256:c21b946b3dfcb02c9f88dd33a03fdf8db41c1414fa1f4e857340cdd27e271aa3" [label="sha256:c21b946b3dfcb02c9f88dd33a03fdf8db41c1414fa1f4e857340cdd27e271aa3" shape="plaintext"];
  "sha256:327315b3489655c095862c1da1f535b30883a73f1e5d81e73d5858f3725cc472" -> "sha256:c60e932e3bddbd56648bff59a89337808dca9a1b3fc71a1159479e591ab1f409" [label=""];
  "sha256:327315b3489655c095862c1da1f535b30883a73f1e5d81e73d5858f3725cc472" -> "sha256:9ea618bacb2e992d337d394fcbd0c66eff7409e9ca7de1159d884ce663b0ff24" [label=""];
  "sha256:9ea618bacb2e992d337d394fcbd0c66eff7409e9ca7de1159d884ce663b0ff24" -> "sha256:6dc76e9a68780452ce772cdd18cd368526210fe40515650741ab2004454d6ad9" [label=""];
  "sha256:6dc76e9a68780452ce772cdd18cd368526210fe40515650741ab2004454d6ad9" -> "sha256:89582255de109b97b0ca846e03dbe4d2e661039dcf53098ee31a496203828b18" [label=""];
  "sha256:243fd58a71d5478cb5a316512d39d387b7080a119dd8a28a6be9cfb312753594" -> "sha256:89582255de109b97b0ca846e03dbe4d2e661039dcf53098ee31a496203828b18" [label=""];
  "sha256:89582255de109b97b0ca846e03dbe4d2e661039dcf53098ee31a496203828b18" -> "sha256:64a849e2ceda3e0dfabc070cbfce064d12062f47cefbd5aec52a1d9322938461" [label=""];
  "sha256:243fd58a71d5478cb5a316512d39d387b7080a119dd8a28a6be9cfb312753594" -> "sha256:64a849e2ceda3e0dfabc070cbfce064d12062f47cefbd5aec52a1d9322938461" [label=""];
  "sha256:64a849e2ceda3e0dfabc070cbfce064d12062f47cefbd5aec52a1d9322938461" -> "sha256:8bb0c250193822928fe3ba7199b8a9c88d4b51e2135e53e88dec53074a99864c" [label=""];
  "sha256:243fd58a71d5478cb5a316512d39d387b7080a119dd8a28a6be9cfb312753594" -> "sha256:8bb0c250193822928fe3ba7199b8a9c88d4b51e2135e53e88dec53074a99864c" [label=""];
  "sha256:8bb0c250193822928fe3ba7199b8a9c88d4b51e2135e53e88dec53074a99864c" -> "sha256:9a842998eeada19a2d8695aca480d4cb3d997ba69d3c719c3d313ba26d76fda6" [label=""];
  "sha256:c60e932e3bddbd56648bff59a89337808dca9a1b3fc71a1159479e591ab1f409" -> "sha256:62a3feda8fa72c916af52008282b3ba8c5a2d9b6f256f24ab41ed916181d62f5" [label=""];
  "sha256:9a842998eeada19a2d8695aca480d4cb3d997ba69d3c719c3d313ba26d76fda6" -> "sha256:62a3feda8fa72c916af52008282b3ba8c5a2d9b6f256f24ab41ed916181d62f5" [label=""];
  "sha256:62a3feda8fa72c916af52008282b3ba8c5a2d9b6f256f24ab41ed916181d62f5" -> "sha256:c21b946b3dfcb02c9f88dd33a03fdf8db41c1414fa1f4e857340cdd27e271aa3" [label=""];
}

