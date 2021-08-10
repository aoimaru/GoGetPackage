[app/sources/194216065.Dockerfile]
digraph {
  "sha256:3298fde45db722dec9377722e2741772633f6577498f3e83941fb02b774d18a7" [label="local://context" shape="ellipse"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:a4bfb7bdfbf2365a418970bd5394ece7839c7a35d1d40a2f749eccd4fb452717" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:948110b5f420fa4a74a3d1fee2f2aff9961d988289dadc4d5e64d2bfb27ec085" [label="copy{src=/config/gsad, dest=/etc/sysconfig/gsad}" shape="note"];
  "sha256:f0312abd5f275d103de75ca2055ce356fa73200b1ffe7229109201a9a930cbd5" [label="copy{src=/config/redis.conf, dest=/etc/redis.conf}" shape="note"];
  "sha256:12023784bc0504cd23aa6255c27a5f4cf83a27beb116798b6922b075b8326db9" [label="copy{src=/config/internal-testing.repo, dest=/etc/yum.repos.d/internal-testing.repo}" shape="note"];
  "sha256:287426ab519d47f64f81c610116c5c24f0d971aa7fde771d344d697b52ba498e" [label="/bin/sh -c yum -y install wget" shape="box"];
  "sha256:6b33b9d8dd07f2a247730f3d8f01c51b4150895a4215eb96dddaad3f1ba418bf" [label="/bin/sh -c cd /root; NON_INT=1 wget -q -O - https://updates.atomicorp.com/installers/atomic |sh" shape="box"];
  "sha256:0abb826dd56b5c8b1042465a22a7bdb2392c0bd51b1c039c830b9c513fa8eb1d" [label="/bin/sh -c yum clean all && \tyum -y update &&  \tyum -y install deltarpm  yum-plugin-fastestmirror && \tyum -y install alien bzip2 useradd net-tools openssh texlive-changepage texlive-titlesec  texlive-collection-latexextra" shape="box"];
  "sha256:37bd5c58e779546808be5316d8d2666163dd50f5181904d941adcb6bb2f76420" [label="/bin/sh -c mkdir -p /usr/share/texlive/texmf-local/tex/latex/comment" shape="box"];
  "sha256:6b6ef39e350178e7c549765d0f4cd87db09d62427a0c5210b5d6df66c0d46eff" [label="copy{src=/config/comment.sty, dest=/usr/share/texlive/texmf-local/tex/latex/comment/comment.sty}" shape="note"];
  "sha256:df5f75bea4acd1c0451e34fc0ced4e15a3b248ee4778b6548652199b7f637869" [label="/bin/sh -c texhash" shape="box"];
  "sha256:91250f73bf17640b37c853a01ac509c9a41d848c2c692d88462308e38c172de2" [label="/bin/sh -c yum -y install openvas OSPd-nmap OSPd" shape="box"];
  "sha256:f8cd0c413d912cb8bd9840177bfb3d496311500acbda07c3b13a6934906ff789" [label="/bin/sh -c rm -rf /var/cache/yum/*" shape="box"];
  "sha256:097bc82e8f03eed23bfb432f76b3bbfcd87407a33fb207cb27cc34b92808e920" [label="sha256:097bc82e8f03eed23bfb432f76b3bbfcd87407a33fb207cb27cc34b92808e920" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:a4bfb7bdfbf2365a418970bd5394ece7839c7a35d1d40a2f749eccd4fb452717" [label=""];
  "sha256:3298fde45db722dec9377722e2741772633f6577498f3e83941fb02b774d18a7" -> "sha256:a4bfb7bdfbf2365a418970bd5394ece7839c7a35d1d40a2f749eccd4fb452717" [label=""];
  "sha256:a4bfb7bdfbf2365a418970bd5394ece7839c7a35d1d40a2f749eccd4fb452717" -> "sha256:948110b5f420fa4a74a3d1fee2f2aff9961d988289dadc4d5e64d2bfb27ec085" [label=""];
  "sha256:3298fde45db722dec9377722e2741772633f6577498f3e83941fb02b774d18a7" -> "sha256:948110b5f420fa4a74a3d1fee2f2aff9961d988289dadc4d5e64d2bfb27ec085" [label=""];
  "sha256:948110b5f420fa4a74a3d1fee2f2aff9961d988289dadc4d5e64d2bfb27ec085" -> "sha256:f0312abd5f275d103de75ca2055ce356fa73200b1ffe7229109201a9a930cbd5" [label=""];
  "sha256:3298fde45db722dec9377722e2741772633f6577498f3e83941fb02b774d18a7" -> "sha256:f0312abd5f275d103de75ca2055ce356fa73200b1ffe7229109201a9a930cbd5" [label=""];
  "sha256:f0312abd5f275d103de75ca2055ce356fa73200b1ffe7229109201a9a930cbd5" -> "sha256:12023784bc0504cd23aa6255c27a5f4cf83a27beb116798b6922b075b8326db9" [label=""];
  "sha256:3298fde45db722dec9377722e2741772633f6577498f3e83941fb02b774d18a7" -> "sha256:12023784bc0504cd23aa6255c27a5f4cf83a27beb116798b6922b075b8326db9" [label=""];
  "sha256:12023784bc0504cd23aa6255c27a5f4cf83a27beb116798b6922b075b8326db9" -> "sha256:287426ab519d47f64f81c610116c5c24f0d971aa7fde771d344d697b52ba498e" [label=""];
  "sha256:287426ab519d47f64f81c610116c5c24f0d971aa7fde771d344d697b52ba498e" -> "sha256:6b33b9d8dd07f2a247730f3d8f01c51b4150895a4215eb96dddaad3f1ba418bf" [label=""];
  "sha256:6b33b9d8dd07f2a247730f3d8f01c51b4150895a4215eb96dddaad3f1ba418bf" -> "sha256:0abb826dd56b5c8b1042465a22a7bdb2392c0bd51b1c039c830b9c513fa8eb1d" [label=""];
  "sha256:0abb826dd56b5c8b1042465a22a7bdb2392c0bd51b1c039c830b9c513fa8eb1d" -> "sha256:37bd5c58e779546808be5316d8d2666163dd50f5181904d941adcb6bb2f76420" [label=""];
  "sha256:37bd5c58e779546808be5316d8d2666163dd50f5181904d941adcb6bb2f76420" -> "sha256:6b6ef39e350178e7c549765d0f4cd87db09d62427a0c5210b5d6df66c0d46eff" [label=""];
  "sha256:3298fde45db722dec9377722e2741772633f6577498f3e83941fb02b774d18a7" -> "sha256:6b6ef39e350178e7c549765d0f4cd87db09d62427a0c5210b5d6df66c0d46eff" [label=""];
  "sha256:6b6ef39e350178e7c549765d0f4cd87db09d62427a0c5210b5d6df66c0d46eff" -> "sha256:df5f75bea4acd1c0451e34fc0ced4e15a3b248ee4778b6548652199b7f637869" [label=""];
  "sha256:df5f75bea4acd1c0451e34fc0ced4e15a3b248ee4778b6548652199b7f637869" -> "sha256:91250f73bf17640b37c853a01ac509c9a41d848c2c692d88462308e38c172de2" [label=""];
  "sha256:91250f73bf17640b37c853a01ac509c9a41d848c2c692d88462308e38c172de2" -> "sha256:f8cd0c413d912cb8bd9840177bfb3d496311500acbda07c3b13a6934906ff789" [label=""];
  "sha256:f8cd0c413d912cb8bd9840177bfb3d496311500acbda07c3b13a6934906ff789" -> "sha256:097bc82e8f03eed23bfb432f76b3bbfcd87407a33fb207cb27cc34b92808e920" [label=""];
}

