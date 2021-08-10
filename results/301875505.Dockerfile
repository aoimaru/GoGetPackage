[app/sources/301875505.Dockerfile]
digraph {
  "sha256:8d373f1b150ab8b5a1c784604eb12487c030d91830d31651f363f6a3c8c06c8f" [label="docker-image://docker.io/unikernel/mirage:latest" shape="ellipse"];
  "sha256:c7e39c39e85f8eba993fbf077c207cee2248ea3892f30800f519e431cd9b69f3" [label="/bin/sh -c opam remote add live git://github.com/ocaml/opam-repository" shape="box"];
  "sha256:df40e196bf31a9c4cfc341dba84ca70c4f5b0b31334315fca5c12f5cfbc68dce" [label="/bin/sh -c opam update -uy" shape="box"];
  "sha256:6f57f4f4207f5afe66e179d3a8a26c58c4246da1652d86bfec21538a7b9903c1" [label="local://context" shape="ellipse"];
  "sha256:0f04b230cb0517fd3a468b33dec59607898cd7929606e7f7b2095b5e4dc1426e" [label="copy{src=/vchan.opam, dest=/src/vchan.opam}" shape="note"];
  "sha256:0e087647f55c6531f1532fb5817215abbcca6ea6528a357fc59beff0026b7fed" [label="/bin/sh -c opam install depext -y" shape="box"];
  "sha256:4210a9ce76827e936779c993d4bfaba93902df070e2dbbc24eaf76dee31b4831" [label="/bin/sh -c opam pin add vchan /src -n" shape="box"];
  "sha256:f0016be1ed940c4d09a07a829db6c5c153ffa602310a2d97bd5e83d098b0210b" [label="/bin/sh -c opam depext vchan xen-gnt-unix xen-evtchn-unix mirage-xen -y" shape="box"];
  "sha256:70869adfee6dfb0e2b74a568fe4cdd64a88c18798eb94f0c62ed542b026799c5" [label="/bin/sh -c opam install xen-gnt-unix xen-evtchn-unix mirage-xen -y" shape="box"];
  "sha256:3020e705ba1da5c84a1ce81354fe471d0408df26487f7ca240cfea6cdbc9da80" [label="/bin/sh -c opam install vchan --deps-only" shape="box"];
  "sha256:7a894742289fff525b7dd869de8b751b4152a3602a9bbd274228c5b2be1e788f" [label="mkdir{path=/src}" shape="note"];
  "sha256:2b80d820123a87ef32bf68481145aaa5e972bd9dd1bab5b3b706194e69eb7fcd" [label="sha256:2b80d820123a87ef32bf68481145aaa5e972bd9dd1bab5b3b706194e69eb7fcd" shape="plaintext"];
  "sha256:8d373f1b150ab8b5a1c784604eb12487c030d91830d31651f363f6a3c8c06c8f" -> "sha256:c7e39c39e85f8eba993fbf077c207cee2248ea3892f30800f519e431cd9b69f3" [label=""];
  "sha256:c7e39c39e85f8eba993fbf077c207cee2248ea3892f30800f519e431cd9b69f3" -> "sha256:df40e196bf31a9c4cfc341dba84ca70c4f5b0b31334315fca5c12f5cfbc68dce" [label=""];
  "sha256:df40e196bf31a9c4cfc341dba84ca70c4f5b0b31334315fca5c12f5cfbc68dce" -> "sha256:0f04b230cb0517fd3a468b33dec59607898cd7929606e7f7b2095b5e4dc1426e" [label=""];
  "sha256:6f57f4f4207f5afe66e179d3a8a26c58c4246da1652d86bfec21538a7b9903c1" -> "sha256:0f04b230cb0517fd3a468b33dec59607898cd7929606e7f7b2095b5e4dc1426e" [label=""];
  "sha256:0f04b230cb0517fd3a468b33dec59607898cd7929606e7f7b2095b5e4dc1426e" -> "sha256:0e087647f55c6531f1532fb5817215abbcca6ea6528a357fc59beff0026b7fed" [label=""];
  "sha256:0e087647f55c6531f1532fb5817215abbcca6ea6528a357fc59beff0026b7fed" -> "sha256:4210a9ce76827e936779c993d4bfaba93902df070e2dbbc24eaf76dee31b4831" [label=""];
  "sha256:4210a9ce76827e936779c993d4bfaba93902df070e2dbbc24eaf76dee31b4831" -> "sha256:f0016be1ed940c4d09a07a829db6c5c153ffa602310a2d97bd5e83d098b0210b" [label=""];
  "sha256:f0016be1ed940c4d09a07a829db6c5c153ffa602310a2d97bd5e83d098b0210b" -> "sha256:70869adfee6dfb0e2b74a568fe4cdd64a88c18798eb94f0c62ed542b026799c5" [label=""];
  "sha256:70869adfee6dfb0e2b74a568fe4cdd64a88c18798eb94f0c62ed542b026799c5" -> "sha256:3020e705ba1da5c84a1ce81354fe471d0408df26487f7ca240cfea6cdbc9da80" [label=""];
  "sha256:3020e705ba1da5c84a1ce81354fe471d0408df26487f7ca240cfea6cdbc9da80" -> "sha256:7a894742289fff525b7dd869de8b751b4152a3602a9bbd274228c5b2be1e788f" [label=""];
  "sha256:7a894742289fff525b7dd869de8b751b4152a3602a9bbd274228c5b2be1e788f" -> "sha256:2b80d820123a87ef32bf68481145aaa5e972bd9dd1bab5b3b706194e69eb7fcd" [label=""];
}

