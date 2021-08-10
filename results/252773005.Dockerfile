[app/sources/252773005.Dockerfile]
digraph {
  "sha256:75b4693547ff717633ccb7f4759e81d59e4ccd70d0cb6263d0cb6e342d45854b" [label="docker-image://docker.io/betashil/base:latest" shape="ellipse"];
  "sha256:4d4cfdaff5b5d9ce68c37d3335cc456930d30ef04ee797b73d2beb8a83b6e212" [label="/bin/sh -c apt-get update && apt-get install -y libzmq*-dev libgmp-dev cmake pkg-config libc6-dev m4 g++-multilib autoconf libtool ncurses-dev unzip python zlib1g-dev bsdmainutils automake libprocps-dev && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:460e12a29680f5c3cabe8a270732813730009077a039197b2487e01e89b6f488" [label="/bin/sh -c git clone https://github.com/ZencashOfficial/zen /coin/git" shape="box"];
  "sha256:f7bd1109bb11ef5c27cac22cef3faf67c3f84521c3edc8f5633f72e3f5e82f4a" [label="mkdir{path=/coin/git}" shape="note"];
  "sha256:f8ef68f8339db50e0eb26a810834a98601482a01dadeed4cfd41d8b1b644ae52" [label="/bin/sh -c git checkout v2.0.11 && ./zcutil/build.sh -j 8 && ./zcutil/fetch-params.sh && mv /coin/git/src/zen-cli /coin/git/src/zend /usr/local/bin/ && rm -rf /coin/git" shape="box"];
  "sha256:845bffca9a57cb559c76c135ae3a04e93c31c667fa9507b9fc12664e1ceb0334" [label="sha256:845bffca9a57cb559c76c135ae3a04e93c31c667fa9507b9fc12664e1ceb0334" shape="plaintext"];
  "sha256:75b4693547ff717633ccb7f4759e81d59e4ccd70d0cb6263d0cb6e342d45854b" -> "sha256:4d4cfdaff5b5d9ce68c37d3335cc456930d30ef04ee797b73d2beb8a83b6e212" [label=""];
  "sha256:4d4cfdaff5b5d9ce68c37d3335cc456930d30ef04ee797b73d2beb8a83b6e212" -> "sha256:460e12a29680f5c3cabe8a270732813730009077a039197b2487e01e89b6f488" [label=""];
  "sha256:460e12a29680f5c3cabe8a270732813730009077a039197b2487e01e89b6f488" -> "sha256:f7bd1109bb11ef5c27cac22cef3faf67c3f84521c3edc8f5633f72e3f5e82f4a" [label=""];
  "sha256:f7bd1109bb11ef5c27cac22cef3faf67c3f84521c3edc8f5633f72e3f5e82f4a" -> "sha256:f8ef68f8339db50e0eb26a810834a98601482a01dadeed4cfd41d8b1b644ae52" [label=""];
  "sha256:f8ef68f8339db50e0eb26a810834a98601482a01dadeed4cfd41d8b1b644ae52" -> "sha256:845bffca9a57cb559c76c135ae3a04e93c31c667fa9507b9fc12664e1ceb0334" [label=""];
}

