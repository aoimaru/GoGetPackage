[app/sources/193311289.Dockerfile]
digraph {
  "sha256:4ba125424aba18cd648dc747bda77a1971075b535670ebb12f01603ff80112e1" [label="https://github.com/prasmussen/glot-code-runner/releases/download/2017-04-12/runner" shape="ellipse"];
  "sha256:f62786a4160c3845547b5187844b4ef82c627d0a8a11b1fb2accacb1d729208b" [label="docker-image://docker.io/nimlang/nim:latest" shape="ellipse"];
  "sha256:e4bcdbbbf9d71e5e420e410026415ff0d0eae9185373414ae65023ce25c0afa5" [label="/bin/sh -c groupadd glot" shape="box"];
  "sha256:0026a1b274764c749da409293a34e2f2d14a0fef97838c57ba5d3411384b3729" [label="/bin/sh -c useradd -m -d /home/glot -g glot -s /bin/bash glot" shape="box"];
  "sha256:4c15c31fd290364110d7ec589008bfe67d97a899731e5bbea4ae6bd5cb3ccbf9" [label="copy{src=/runner, dest=/home/glot/runner}" shape="note"];
  "sha256:9bbda54e03ea40bb89056cdecd14febe65e126eb21e9ea91a06abcd20bcf0d90" [label="/bin/sh -c chmod +x /home/glot/runner" shape="box"];
  "sha256:4c10a838a0f38c292c8b4817815e6363f325f81b0cdc0416aeddf77d5044fa3e" [label="mkdir{path=/home/glot}" shape="note"];
  "sha256:31d108a48c9032ff18b451a65657e963f0c93ee8c44fd95b66d8bc1436498eb9" [label="sha256:31d108a48c9032ff18b451a65657e963f0c93ee8c44fd95b66d8bc1436498eb9" shape="plaintext"];
  "sha256:f62786a4160c3845547b5187844b4ef82c627d0a8a11b1fb2accacb1d729208b" -> "sha256:e4bcdbbbf9d71e5e420e410026415ff0d0eae9185373414ae65023ce25c0afa5" [label=""];
  "sha256:e4bcdbbbf9d71e5e420e410026415ff0d0eae9185373414ae65023ce25c0afa5" -> "sha256:0026a1b274764c749da409293a34e2f2d14a0fef97838c57ba5d3411384b3729" [label=""];
  "sha256:0026a1b274764c749da409293a34e2f2d14a0fef97838c57ba5d3411384b3729" -> "sha256:4c15c31fd290364110d7ec589008bfe67d97a899731e5bbea4ae6bd5cb3ccbf9" [label=""];
  "sha256:4ba125424aba18cd648dc747bda77a1971075b535670ebb12f01603ff80112e1" -> "sha256:4c15c31fd290364110d7ec589008bfe67d97a899731e5bbea4ae6bd5cb3ccbf9" [label=""];
  "sha256:4c15c31fd290364110d7ec589008bfe67d97a899731e5bbea4ae6bd5cb3ccbf9" -> "sha256:9bbda54e03ea40bb89056cdecd14febe65e126eb21e9ea91a06abcd20bcf0d90" [label=""];
  "sha256:9bbda54e03ea40bb89056cdecd14febe65e126eb21e9ea91a06abcd20bcf0d90" -> "sha256:4c10a838a0f38c292c8b4817815e6363f325f81b0cdc0416aeddf77d5044fa3e" [label=""];
  "sha256:4c10a838a0f38c292c8b4817815e6363f325f81b0cdc0416aeddf77d5044fa3e" -> "sha256:31d108a48c9032ff18b451a65657e963f0c93ee8c44fd95b66d8bc1436498eb9" [label=""];
}

