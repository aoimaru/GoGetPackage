[app/sources/431992771.Dockerfile]
digraph {
  "sha256:104ead44baf63ed5dc19b5b736e1eb701a1c4156842a79a68cf592a94cc892fb" [label="docker-image://docker.io/library/fedora:29" shape="ellipse"];
  "sha256:ce3e0ff9cc1c255188236c127bc413880f768ceff779e839deebbfa1e9688285" [label="/bin/sh -c dnf -y update && \tdnf -y install \t\tmake \t\tlibtool \t\tautoconf \t\tgcc \t\tgcc-c++ \t\tgit \t\tsqlite-devel \t\tlibsndfile-devel \t\tgtk2-devel \t\tlibxml2-devel \t\tlibGLU-devel \t\tfftw-devel" shape="box"];
  "sha256:616c5dd1e16d502ce8dc384bb66fda055bbdd4350f4cf4ecacfa3916692290c8" [label="/bin/sh -c echo \"alias ll='ls -l'\" >> /root/.bashrc" shape="box"];
  "sha256:0d7e30a0e6aa715a09e180e2fe03b76fc4b23677c58b4b04da3c28252f8f2a05" [label="mkdir{path=/root}" shape="note"];
  "sha256:e606ab9f27cffca2bf9d3fa19d719ebfd8f8e91fe4fb64b3225ad95e43a487b3" [label="local://context" shape="ellipse"];
  "sha256:2e8d24b312d04efc39e9aca2a1713a44c30372d2eb91ad5c95557c8b9d0ad297" [label="copy{src=/add_samples, dest=/root/add_samples}" shape="note"];
  "sha256:fec2d86b604c8715b850d088fcea4ec2a5cc3cbed06504ff265905e8c360ace9" [label="copy{src=/compile, dest=/root/compile}" shape="note"];
  "sha256:7f52f34014cfc861be40a6d440ffe0f6d41e07bfe7613571e6f9121c4b883409" [label="sha256:7f52f34014cfc861be40a6d440ffe0f6d41e07bfe7613571e6f9121c4b883409" shape="plaintext"];
  "sha256:104ead44baf63ed5dc19b5b736e1eb701a1c4156842a79a68cf592a94cc892fb" -> "sha256:ce3e0ff9cc1c255188236c127bc413880f768ceff779e839deebbfa1e9688285" [label=""];
  "sha256:ce3e0ff9cc1c255188236c127bc413880f768ceff779e839deebbfa1e9688285" -> "sha256:616c5dd1e16d502ce8dc384bb66fda055bbdd4350f4cf4ecacfa3916692290c8" [label=""];
  "sha256:616c5dd1e16d502ce8dc384bb66fda055bbdd4350f4cf4ecacfa3916692290c8" -> "sha256:0d7e30a0e6aa715a09e180e2fe03b76fc4b23677c58b4b04da3c28252f8f2a05" [label=""];
  "sha256:0d7e30a0e6aa715a09e180e2fe03b76fc4b23677c58b4b04da3c28252f8f2a05" -> "sha256:2e8d24b312d04efc39e9aca2a1713a44c30372d2eb91ad5c95557c8b9d0ad297" [label=""];
  "sha256:e606ab9f27cffca2bf9d3fa19d719ebfd8f8e91fe4fb64b3225ad95e43a487b3" -> "sha256:2e8d24b312d04efc39e9aca2a1713a44c30372d2eb91ad5c95557c8b9d0ad297" [label=""];
  "sha256:2e8d24b312d04efc39e9aca2a1713a44c30372d2eb91ad5c95557c8b9d0ad297" -> "sha256:fec2d86b604c8715b850d088fcea4ec2a5cc3cbed06504ff265905e8c360ace9" [label=""];
  "sha256:e606ab9f27cffca2bf9d3fa19d719ebfd8f8e91fe4fb64b3225ad95e43a487b3" -> "sha256:fec2d86b604c8715b850d088fcea4ec2a5cc3cbed06504ff265905e8c360ace9" [label=""];
  "sha256:fec2d86b604c8715b850d088fcea4ec2a5cc3cbed06504ff265905e8c360ace9" -> "sha256:7f52f34014cfc861be40a6d440ffe0f6d41e07bfe7613571e6f9121c4b883409" [label=""];
}

