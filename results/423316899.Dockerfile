[app/sources/423316899.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:d471caa3e9676907ffa05f83e800c3c890776ee20117af5b5f40b7f44904eb54" [label="/bin/sh -c apt update -y" shape="box"];
  "sha256:1f9ed384cd937a3711db590624420aceef60ba9929da73ff3478c8c4cbe0442c" [label="/bin/sh -c apt install openjdk-8-jdk -y" shape="box"];
  "sha256:bdaec213a2ac40264d1dda5ec5b1974b5c5664ec3206896bb034232f1d16b87f" [label="sha256:bdaec213a2ac40264d1dda5ec5b1974b5c5664ec3206896bb034232f1d16b87f" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:d471caa3e9676907ffa05f83e800c3c890776ee20117af5b5f40b7f44904eb54" [label=""];
  "sha256:d471caa3e9676907ffa05f83e800c3c890776ee20117af5b5f40b7f44904eb54" -> "sha256:1f9ed384cd937a3711db590624420aceef60ba9929da73ff3478c8c4cbe0442c" [label=""];
  "sha256:1f9ed384cd937a3711db590624420aceef60ba9929da73ff3478c8c4cbe0442c" -> "sha256:bdaec213a2ac40264d1dda5ec5b1974b5c5664ec3206896bb034232f1d16b87f" [label=""];
}

