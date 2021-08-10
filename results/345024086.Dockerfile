[app/sources/345024086.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:a6510730ad85167341b5b58e75a83807b71be6f07fa5ed503f39ff21a75b4eb4" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   curl   ca-certificates   unzip   openjdk-8-jre   python   gcc   libc6-dev" shape="box"];
  "sha256:095eb234c08a2ec652ee1195a1c2a0a3249dbdbed537cd63ba937d2468754196" [label="local://context" shape="ellipse"];
  "sha256:8c562d4b92b11209da5d2d00bc78b82067c61035544db735bbfbb38644795e4f" [label="copy{src=/android-ndk.sh, dest=/}" shape="note"];
  "sha256:7ec8de6232b31cb630771ba113277a6aeadd10d1928c2c11177f89f498a59d97" [label="/bin/sh -c /android-ndk.sh x86_64" shape="box"];
  "sha256:8e9efec5577815a6186c1488e6bd0426d5e30b44570694fb688e14c24a11d794" [label="sha256:8e9efec5577815a6186c1488e6bd0426d5e30b44570694fb688e14c24a11d794" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:a6510730ad85167341b5b58e75a83807b71be6f07fa5ed503f39ff21a75b4eb4" [label=""];
  "sha256:a6510730ad85167341b5b58e75a83807b71be6f07fa5ed503f39ff21a75b4eb4" -> "sha256:8c562d4b92b11209da5d2d00bc78b82067c61035544db735bbfbb38644795e4f" [label=""];
  "sha256:095eb234c08a2ec652ee1195a1c2a0a3249dbdbed537cd63ba937d2468754196" -> "sha256:8c562d4b92b11209da5d2d00bc78b82067c61035544db735bbfbb38644795e4f" [label=""];
  "sha256:8c562d4b92b11209da5d2d00bc78b82067c61035544db735bbfbb38644795e4f" -> "sha256:7ec8de6232b31cb630771ba113277a6aeadd10d1928c2c11177f89f498a59d97" [label=""];
  "sha256:7ec8de6232b31cb630771ba113277a6aeadd10d1928c2c11177f89f498a59d97" -> "sha256:8e9efec5577815a6186c1488e6bd0426d5e30b44570694fb688e14c24a11d794" [label=""];
}

