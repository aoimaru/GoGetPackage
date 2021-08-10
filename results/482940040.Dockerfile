[app/sources/482940040.Dockerfile]
digraph {
  "sha256:a562e453211949709a332180213c23aea5a015c410f038bc19b922d49102170e" [label="docker-image://docker.io/lipcomputing/ansible-ubuntu16.04:latest" shape="ellipse"];
  "sha256:efe62c21788dca227af65aa8a4b4a1bdce608f2fce5dd8895648247231b5345e" [label="/bin/sh -c ansible-galaxy install LIP-Computing.ansible-role-nvidia &&     ansible-playbook --extra-vars \"nv=375.39\" /etc/ansible/roles/LIP-Computing.ansible-role-nvidia/tests/install-docker.yml" shape="box"];
  "sha256:269e971d499e5370b590058c2d4bea68582d8085e216d7d7bb0845ee68cc2e30" [label="sha256:269e971d499e5370b590058c2d4bea68582d8085e216d7d7bb0845ee68cc2e30" shape="plaintext"];
  "sha256:a562e453211949709a332180213c23aea5a015c410f038bc19b922d49102170e" -> "sha256:efe62c21788dca227af65aa8a4b4a1bdce608f2fce5dd8895648247231b5345e" [label=""];
  "sha256:efe62c21788dca227af65aa8a4b4a1bdce608f2fce5dd8895648247231b5345e" -> "sha256:269e971d499e5370b590058c2d4bea68582d8085e216d7d7bb0845ee68cc2e30" [label=""];
}

